class Distributor {
  String name;
  String type;
  String picture;

  Distributor(this.name, this.type, this.picture);

  String getName() {
    return name;
  }

  String getType() {
    return type;
  }

  String getPicure() {
    return name;
  }

  void setName(String newName) {
    name = newName;
  }

  void setType(String newType) {
    type = newType;
  }

  void setPicture(String newPicture) {
    picture = newPicture;
  }
}
