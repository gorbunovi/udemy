import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';


part 'offices.g.dart';
@JsonSerializable()
class OfficesList{
  List<Office> offices;

  OfficesList({this.offices});

  factory OfficesList.fromJson(Map<String, dynamic> json) => _$OfficesListFromJson(json);

  Map<String,dynamic> toJson() => _$OfficesListToJson(this);
}

@JsonSerializable()
class Office{
  // @JsonKey()
  final String name;
  final String address;
  final String image;

  Office({this.name, this.address, this.image});

  factory Office.fromJson(Map<String, dynamic> json) => _$OfficeFromJson(json);

  Map<String, dynamic> toJson() => _$OfficeToJson(this);
}

Future<OfficesList> getOfficesList() async{
  const url ='https://about.google/static/data/locations.json';
  final respons = await http.get(url);
  if(respons.statusCode == 200){
    return OfficesList.fromJson(json.decode(respons.body));
  }else {
    throw Exception('Error ${respons.reasonPhrase}');
  }
}