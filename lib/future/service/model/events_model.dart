class EventsModel {
 
  Data? data;

  EventsModel(
      {
      this.data});

  EventsModel.fromJson(Map<String, dynamic> json) {
 
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

 
}

class Data {
 
  List<Results>? results;

  Data({ this.results});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add( Results.fromJson(v));
      });
    }
  }

  
}

class Results {
  int? id;
  String? title;
  String? description;
  String? resourceURI;
  List<Urls>? urls;
  String? modified;
  String? start;
  String? end;
  Thumbnail? thumbnail;
  Creators? creators;
  Creators? characters;
  Creators? stories;
  Creators? comics;
  Creators? series;
  Items? next;
  Items? previous;

  Results(
      {this.id,
      this.title,
      this.description,
      this.resourceURI,
      this.urls,
      this.modified,
      this.start,
      this.end,
      this.thumbnail,
      this.creators,
      this.characters,
      this.stories,
      this.comics,
      this.series,
      this.next,
      this.previous});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    resourceURI = json['resourceURI'];
    if (json['urls'] != null) {
      urls = <Urls>[];
      json['urls'].forEach((v) {
        urls!.add(new Urls.fromJson(v));
      });
    }
    modified = json['modified'];
    start = json['start'];
    end = json['end'];
    thumbnail = json['thumbnail'] != null
        ? new Thumbnail.fromJson(json['thumbnail'])
        : null;
    creators = json['creators'] != null
        ? new Creators.fromJson(json['creators'])
        : null;
    characters = json['characters'] != null
        ? new Creators.fromJson(json['characters'])
        : null;
    stories =
        json['stories'] != null ? new Creators.fromJson(json['stories']) : null;
    comics =
        json['comics'] != null ? new Creators.fromJson(json['comics']) : null;
    series =
        json['series'] != null ? new Creators.fromJson(json['series']) : null;
    next = json['next'] != null ? new Items.fromJson(json['next']) : null;
    previous =
        json['previous'] != null ? new Items.fromJson(json['previous']) : null;
  }

  
}

class Urls {
  String? type;
  String? url;

  Urls({this.type, this.url});

  Urls.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    url = json['url'];
  }


}

class Thumbnail {
  String? path;
  String? extension;

  Thumbnail({this.path, this.extension});

  Thumbnail.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    extension = json['extension'];
  }

 
}

class Creators {
  int? available;
  String? collectionURI;
  List<Items>? items;
  int? returned;

  Creators({this.available, this.collectionURI, this.items, this.returned});

  Creators.fromJson(Map<String, dynamic> json) {
    available = json['available'];
    collectionURI = json['collectionURI'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    returned = json['returned'];
  }

 
}

class Items {
  String? resourceURI;
  String? name;
  String? role;

  Items({this.resourceURI, this.name, this.role});

  Items.fromJson(Map<String, dynamic> json) {
    resourceURI = json['resourceURI'];
    name = json['name'];
    role = json['role'];
  }

 
}


