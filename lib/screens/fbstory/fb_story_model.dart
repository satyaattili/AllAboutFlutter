class FBStory{
  String name;
  String feature_image;
  String background_image;

  FBStory({
    this.name,this.feature_image,this.background_image,
  });

  static FBStory fromJson(Map<String,dynamic> json){
    return FBStory(
      name: json['name'],
      feature_image: json['feature_image'],
      background_image: json['background_image'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'feature_image': feature_image,
    'background_image': background_image,
  };
}