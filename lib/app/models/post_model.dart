class PostModel{
  int id;
  String date;
  String title;
  String modified;
  String content;
  String shortLink;
  String canonicalUrl;
  String jetpackFeaturedMediaUrl;


  PostModel({
    this.id = 0,
    this.date = '',
    this.title = '',
    this.modified = '',
    this.content = '',
    this.shortLink = '',
    this.canonicalUrl = '',
    this.jetpackFeaturedMediaUrl = '',
  });

  factory PostModel.fromJson(Map<String, dynamic> data){
    return PostModel(
      id: data['id'],
      date: data['date'],
      canonicalUrl: data['canonical_url'],
      content: data['content']['rendered'],
      jetpackFeaturedMediaUrl: data['jetpack_featured_media_url'],
      modified: data['modified'],
      shortLink: data['shortlink'],
      title: data['title']['rendered']
    );
  }

  Map<String,dynamic> toJson(){
    return {
      'id': id,
      'date': date,
      'canonical_url': canonicalUrl,
      'content': content,
      'jetpack_featured_media_url': jetpackFeaturedMediaUrl,
      'modified': modified,
      'shortlink': shortLink,
      'title': title,
    };
  }

}