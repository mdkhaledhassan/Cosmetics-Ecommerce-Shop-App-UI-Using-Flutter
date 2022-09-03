class Model {
  String? imgurl;
  String? catName;

  Model({this.imgurl, this.catName});
  static List<Model> getImg() {
    return [
      Model(
        imgurl: "images/1.jpg",
      ),
      Model(imgurl: "images/2.jpg"),
      Model(imgurl: "images/3.jpg"),
      Model(imgurl: "images/4.jpg"),
      Model(imgurl: "images/5.jpg"),
      Model(imgurl: "images/6.jpg"),
    ];
  }

  static List<Model> getCatagorie() {
    return [
      Model(imgurl: "images/c1.jpg", catName: "Foundation"),
      Model(imgurl: "images/c2.jpg", catName: "Lipstick"),
      Model(imgurl: "images/c3.jpg", catName: "EyeShadow"),
      Model(imgurl: "images/c4.jpg", catName: "Mascara"),
    ];
  }
}
