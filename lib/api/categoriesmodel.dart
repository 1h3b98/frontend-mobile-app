class CategoriesModel {
  final String id;
  final String nom;
  final String slug;

  CategoriesModel({ this.id,
    this.nom,
    this.slug,

  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json){
    return CategoriesModel(
      id: json["id"],
      nom: json["nom"],
      slug: json["slug"],
    );
  }
}
