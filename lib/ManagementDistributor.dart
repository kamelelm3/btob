import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:btob/classe/Distributor.dart';
import 'package:btob/classe/DistributorList.dart';

Map<String, String> typeToSvgMap = {
  'dai': 'assets/distributor/dai.svg',
  'tai': 'assets/distributor/tai.svg',
  'wall': 'assets/distributor/wall.svg',
  'truck': 'assets/distributor/truck.svg',
  'cleaner': 'assets/distributor/cleaner.svg',
};

class ManagementDistributor extends StatelessWidget {
  const ManagementDistributor({super.key});

  @override
  Widget build(BuildContext context) {
    final distributorNotifier = Provider.of<DistributorListNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestion des Distributeurs'),
      ),
      body: Consumer<DistributorListNotifier>(
        builder: (context, distributorNotifier, child) {
          if (distributorNotifier.distributorList.getDistributorCount() == 0) {
            return const Center(
              child: Text('empty'),
            );
          } else {
            return ListView.builder(
              itemCount:
                  distributorNotifier.distributorList.getDistributorCount(),
              itemBuilder: (context, index) {
                final distributor =
                    distributorNotifier.distributorList.distributors[index];
                return ListTile(
                  title: Text(distributor.name),
                  subtitle: Text(distributor.type),
                  leading: SvgPicture.asset(
                    typeToSvgMap[distributor.type]!,
                    width: 100, // Largeur souhaitée
                    height: 100, // Hauteur souhaitée,
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              _showAddDistributorDialog(context, distributorNotifier);
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              final distributors =
                  distributorNotifier.distributorList.distributors;
              if (distributors.isNotEmpty) {
                distributorNotifier.removeDistributor(distributors.last);
              }
            },
            child: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }

  void _showAddDistributorDialog(
      BuildContext context, DistributorListNotifier distributorNotifier) {
    String newName = "";
    String newType = "dai";

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Ajouter un Distributeur'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  newName = value;
                },
                decoration:
                    const InputDecoration(labelText: 'Nom de la machine'),
              ),
              DropdownButton<String>(
                value: newType,
                onChanged: (value) {
                  newType = value!;
                },
                items: typeToSvgMap.keys
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                if (newName.isNotEmpty) {
                  distributorNotifier.addDistributor(
                    Distributor(newName, newType, "URL de l'image"),
                  );
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Invalid name.'),
                    ),
                  );
                }
              },
              child: const Text('Ajouter'),
            ),
          ],
        );
      },
    );
  }
}
