import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:btob/classe/Distributor.dart';
import 'package:btob/classe/DistributorList.dart';

class ManagementDistributor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Accédez à DistributorListNotifier en utilisant Provider
    final distributorNotifier = Provider.of<DistributorListNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Gestion des Distributeurs'),
      ),
      body: Consumer<DistributorListNotifier>(
        builder: (context, distributorNotifier, child) {
          if (distributorNotifier.distributorList.getDistributorCount() == 0) {
            return Center(
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
                  leading: Image.network(distributor.picture),
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
              // Ajouter un distributeur en utilisant DistributorListNotifier
              distributorNotifier.addDistributor(
                Distributor("Nouveau Distributeur", "Type", "URL de l'image"),
              );
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              // Supprimer le dernier distributeur en utilisant DistributorListNotifier
              final distributors =
                  distributorNotifier.distributorList.distributors;
              if (distributors.isNotEmpty) {
                distributorNotifier.removeDistributor(distributors.last);
              }
            },
            child: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
