class PosterModel{

  final String url;

  PosterModel({
    required this.url,
  });

  factory PosterModel.fromJson(Map<String, dynamic> json){
    return PosterModel(
      url: json['url'] as String,
    );
  }

  Map<String, dynamic> toJson(){
    return <String, dynamic>{
      'url': url,

    };
  }
}