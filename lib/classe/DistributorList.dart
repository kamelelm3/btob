import 'package:btob/classe/Distributor.dart';
import 'package:flutter/material.dart';

class DistributorList {
  List<Distributor> distributors = [];

  void addDistributor(Distributor newDistributor) {
    distributors.add(newDistributor);
  }

  void removeDistributor(Distributor distributor) {
    distributors.remove(distributor);
  }

  int getDistributorCount() {
    return distributors.length;
  }
}

class DistributorListNotifier extends ChangeNotifier {
  DistributorList distributorList = DistributorList();

  void addDistributor(Distributor distributor) {
    distributorList.addDistributor(distributor);
    notifyListeners();
  }

  void removeDistributor(Distributor distributor) {
    distributorList.removeDistributor(distributor);
    notifyListeners();
  }
}
