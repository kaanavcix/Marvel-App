class SeriesModel {
  
  Data? data;

  SeriesModel(
      {
      this.data});

  SeriesModel.fromJson(Map<String, dynamic> json) {
  
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }
}

class Data {
 
  List<Resultss>? resultss;

  Data({ this.resultss});

  Data.fromJson(Map<String, dynamic> json) {
  
    if (json['results'] != null) {
      resultss = <Resultss>[];
      json['results'].forEach((v) {
        resultss!.add( Resultss.fromJson(v));
      });
    }
  }

  
}

class Resultss {
  int? id;
  String? title;
  String? description;
  String? resourceURI;
  List<Urls>? urls;
  int? startYear;
  int? endYear;
  String? rating;
  String? type;
  String? modified;
  Thumbnail? thumbnail;
  Creators? creators;
  Creators? characters;
  Creators? stories;
  Creators? comics;
  Events? events;
  Items? next;
  

  Resultss(
      {this.id,
      this.title,
      this.description,
      this.resourceURI,
      this.urls,
      this.startYear,
      this.endYear,
      this.rating,
      this.type,
      this.modified,
      this.thumbnail,
      this.creators,
      this.characters,
      this.stories,
      this.comics,
      this.events,
      this.next,
 });

  Resultss.fromJson(Map<String, dynamic> json) {
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
    startYear = json['startYear'];
    endYear = json['endYear'];
    rating = json['rating'];
    type = json['type'];
    modified = json['modified'];
    thumbnail = json['thumbnail'] != null
        ?  Thumbnail.fromJson(json['thumbnail'])
        : null;
    creators = json['creators'] != null
        ?  Creators.fromJson(json['creators'])
        : null;
    characters = json['characters'] != null
        ?  Creators.fromJson(json['characters'])
        : null;
    stories =
        json['stories'] != null ?  Creators.fromJson(json['stories']) : null;
    comics =
        json['comics'] != null ?  Creators.fromJson(json['comics']) : null;
    events =
        json['events'] != null ?  Events.fromJson(json['events']) : null;
    next = json['next'] != null ?  Items.fromJson(json['next']) : null;
   
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
        items!.add( Items.fromJson(v));
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


class Events {
  int? available;
  String? collectionURI;
  int? returned;

  Events({this.available, this.collectionURI, this.returned});

  Events.fromJson(Map<String, dynamic> json) {
    available = json['available'];
    collectionURI = json['collectionURI'];
    
    returned = json['returned'];
  }

  
}
