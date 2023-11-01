import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'ManagementDistributor.dart';
import 'stat/StatPage1.dart';
import 'shops.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> distributorOptions = ['Distributor', 'Statistics', 'Shop'];
    String selectedOption = 'Distributor';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20),
              for (String option in distributorOptions)
                ElevatedButton(
                  onPressed: () {
                    if (option == 'Distributor') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ManagementDistributor(),
                        ),
                      );
                    } else if (option == 'Shop') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => shops(),
                        ),
                      );
                    } else if (option == 'Statistics') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StatPage1(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedOption == option ? Colors.orange : null,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (option == 'Distributor')
                        FractionallySizedBox(
                          child: SvgPicture.asset(
                            'assets/homepage/beer.svg',
                          ),
                        ),
                      if (option == 'Statistics')
                        FractionallySizedBox(
                          child: SvgPicture.asset(
                            'assets/homepage/statistics.svg',
                          ),
                        ),
                      if (option == 'Shop')
                        FractionallySizedBox(
                          child: SvgPicture.asset(
                            'assets/homepage/shop.svg',
                          ),
                        ),
                      const SizedBox(height: 80),
                      Text(
                        option,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right_outlined,
                        size: 50,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
