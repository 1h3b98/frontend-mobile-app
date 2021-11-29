class ProductModel {
  final String Productid;
  final String user;
  final String ProductTitle;
  final String ProductSlug;
  final String release_date;
  final String barter_with;
  final String price;
  final String image;
  final String categorie;
  ProductModel(
      { this.Productid,
        this.user,
        this.ProductTitle,
        this.ProductSlug,
        this.release_date,
        this.barter_with,
        this.price,
        this.image,
        this.categorie
      });
  factory ProductModel.fromJson(Map<String, dynamic> json){
    return ProductModel(
        Productid: json["Productid"],
        user: json["user"],
        ProductTitle: json["ProductTitle"],
        ProductSlug: json["ProductSlug"],
        release_date: json["release date"],
        barter_with: json["barter with"],
        price: json["price"],
        image: json["image"],
        categorie: json["categorie"],
    );
  }

}