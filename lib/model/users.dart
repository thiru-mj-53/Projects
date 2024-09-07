// import 'package:json_annotation/json_annotation.dart';
// part 'users.g.dart';
//
// @JsonSerializable(explicitToJson: true)
// class User{
//   String? email;
//   String? phone;
//   String? gender;
//   UserName? name;
//   UserLocation? location;
//   UserPicture? picture;
//   UserDob? dob;
//
//   User({this.email,this.phone,this.gender,this.location,this.dob,this.picture,this.name});
//
//   factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
//   Map<String,dynamic> toJson() => _$UserToJson(this);
// }
//
// /// User Name
// @JsonSerializable(explicitToJson: true)
// class UserName{
//   String tittle;
//   String first;
//   String last;
//
//   UserName({required this.tittle,required this.first,required this.last});
//
//   factory UserName.fromJson(Map<String,dynamic> json) => _$UserNameFromJson(json);
//       Map<String,dynamic> toJson() => _$UserNameToJson(this);
// }
//
// /// User Picture
// @JsonSerializable(explicitToJson: true)
// class UserPicture{
//   String? thumbNail;
//   String? large;
//   UserPicture({this.large,this.thumbNail});
//
//   factory UserPicture.fromJson(Map<String,dynamic> json) => _$UserPictureFromJson(json);
//   Map<String,dynamic> toJson() => _$UserPictureToJson(this);
//
//
// }
//
// /// User Date of birth
// @JsonSerializable(explicitToJson: true)
// class UserDob{
//   String? date;
//   int? age;
//   UserDob({this.date,this.age});
//
//   factory UserDob.fromJson(Map<String,dynamic> json) => _$UserDobFromJson(json);
//   Map<String,dynamic> toJson() => _$UserDobToJson(this);
// }
//
// /// User Location
// @JsonSerializable(explicitToJson: true)
// class UserLocation{
//   String? city;
//   String? state;
//   String? country;
//   String? postcode;
//   Street? street;
//   Coordinates? coordinates;
//   TimeZone? timezone;
//
//   UserLocation({this.city,this.state,this.country,this.postcode,
//     this.street,this.coordinates,this.timezone});
//
//
//   factory UserLocation.fromJson(Map<String,dynamic> json) => _$UserLocationFromJson(json);
//   Map<String,dynamic> toJson() => _$UserLocationToJson(this);
// }
//
// /// User Street
// @JsonSerializable(explicitToJson: true)
// class Street{
//   int? number;
//   String? name;
//
//   Street({this.number,this.name});
//
//   factory Street.fromJson(Map<String,dynamic> json) => _$StreetFromJson(json);
//   Map<String,dynamic> toJson() => _$StreetToJson(this);
// }
//
// /// Coordinates
// @JsonSerializable(explicitToJson: true)
// class Coordinates{
//   String? latitude;
//   String? longitude;
//
//   Coordinates({this.latitude,this.longitude});
//   factory Coordinates.fromJson(Map<String,dynamic> json) => _$CoordinatesFromJson(json);
//   Map<String,dynamic> toJson() => _$CoordinatesToJson(this);
//
// }
//
// /// Timezone
// @JsonSerializable(explicitToJson: true)
// class TimeZone{
//
//   String? offset;
//   String? description;
//
//   TimeZone({this.offset,this.description});
//
//   factory TimeZone.fromJson(Map<String,dynamic>json) => _$TimeZoneFromJson(json);
//   Map<String,dynamic> toJson() => _$TimeZoneToJson(this);
//
// }