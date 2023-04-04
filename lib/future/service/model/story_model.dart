import 'package:marvelapp/future/service/model/comics_model.dart';

class StoryModel {
 
  Data? data;

  StoryModel(
      {
      this.data});

  StoryModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
  }


}

class Data {
 
  List<Results>? results;

  Data({this.results});

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
  String? type;
  String? modified;
  Thumbnail? thumbnail;
  Creators? creators;
  Characters? characters;
  Creators? series;
  Creators? comics;
  Characters? events;
  Items? originalIssue;

  Results(
      {this.id,
      this.title,
      this.description,
      this.resourceURI,
      this.type,
      this.modified,
      this.thumbnail,
      this.creators,
      this.characters,
      this.series,
      this.comics,
      this.events,
      this.originalIssue});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    resourceURI = json['resourceURI'];
    type = json['type'];
    modified = json['modified'];
    thumbnail = json['thumbnail'];
    creators = json['creators'] != null
        ?  Creators.fromJson(json['creators'])
        : null;
    characters = json['characters'] != null
        ?  Characters.fromJson(json['characters'])
        : null;
    series =
        json['series'] != null ?  Creators.fromJson(json['series']) : null;
    comics =
        json['comics'] != null ?  Creators.fromJson(json['comics']) : null;
    events =
        json['events'] != null ?  Characters.fromJson(json['events']) : null;
    originalIssue = json['originalIssue'] != null
        ?  Items.fromJson(json['originalIssue'])
        : null;
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

class Characters {
  int? available;
  String? collectionURI;
  int? returned;

  Characters({this.available, this.collectionURI,  this.returned});

  Characters.fromJson(Map<String, dynamic> json) {
    available = json['available'];
    collectionURI = json['collectionURI'];
   
    returned = json['returned'];
  }

 
}

