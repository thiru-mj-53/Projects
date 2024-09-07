// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'users.dart';
//
// // **************************************************************************
// // JsonSerializableGenerator
// // **************************************************************************
//
// User _$UserFromJson(Map<String, dynamic> json) => User(
//       email: json['email'] as String?,
//       phone: json['phone'] as String?,
//       gender: json['gender'] as String?,
//       location: json['location'] == null
//           ? null
//           : UserLocation.fromJson(json['location'] as Map<String, dynamic>),
//       dob: json['dob'] == null
//           ? null
//           : UserDob.fromJson(json['dob'] as Map<String, dynamic>),
//       picture: json['picture'] == null
//           ? null
//           : UserPicture.fromJson(json['picture'] as Map<String, dynamic>),
//       name: json['name'] == null
//           ? null
//           : UserName.fromJson(json['name'] as Map<String, dynamic>),
//     );
//
// Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
//       'email': instance.email,
//       'phone': instance.phone,
//       'gender': instance.gender,
//       'name': instance.name?.toJson(),
//       'location': instance.location?.toJson(),
//       'picture': instance.picture?.toJson(),
//       'dob': instance.dob?.toJson(),
//     };
//
// UserName _$UserNameFromJson(Map<String, dynamic> json) => UserName(
//       tittle: json['tittle'] as String,
//       first: json['first'] as String,
//       last: json['last'] as String,
//     );
//
// Map<String, dynamic> _$UserNameToJson(UserName instance) => <String, dynamic>{
//       'tittle': instance.tittle,
//       'first': instance.first,
//       'last': instance.last,
//     };
//
// UserPicture _$UserPictureFromJson(Map<String, dynamic> json) => UserPicture(
//       large: json['large'] as String?,
//       thumbNail: json['thumbNail'] as String?,
//     );
//
// Map<String, dynamic> _$UserPictureToJson(UserPicture instance) =>
//     <String, dynamic>{
//       'thumbNail': instance.thumbNail,
//       'large': instance.large,
//     };
//
// UserDob _$UserDobFromJson(Map<String, dynamic> json) => UserDob(
//       date: json['date'] as String?,
//       age: json['age'] as int?,
//     );
//
// Map<String, dynamic> _$UserDobToJson(UserDob instance) => <String, dynamic>{
//       'date': instance.date,
//       'age': instance.age,
//     };
//
// UserLocation _$UserLocationFromJson(Map<String, dynamic> json) => UserLocation(
//       city: json['city'] as String?,
//       state: json['state'] as String?,
//       country: json['country'] as String?,
//       postcode: json['postcode'] !=null ?json['postcode'].toString() : "",
//       street: json['street'] == null
//           ? null
//           : Street.fromJson(json['street'] as Map<String, dynamic>),
//       coordinates: json['coordinates'] == null
//           ? null
//           : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
//       timezone: json['timezone'] == null
//           ? null
//           : TimeZone.fromJson(json['timezone'] as Map<String, dynamic>),
//     );
//
// Map<String, dynamic> _$UserLocationToJson(UserLocation instance) =>
//     <String, dynamic>{
//       'city': instance.city,
//       'state': instance.state,
//       'country': instance.country,
//       'postcode': instance.postcode,
//       'street': instance.street?.toJson(),
//       'coordinates': instance.coordinates?.toJson(),
//       'timezone': instance.timezone?.toJson(),
//     };
//
// Street _$StreetFromJson(Map<String, dynamic> json) => Street(
//       number: json['number'] as int?,
//       name: json['name'] as String?,
//     );
//
// Map<String, dynamic> _$StreetToJson(Street instance) => <String, dynamic>{
//       'number': instance.number,
//       'name': instance.name,
//     };
//
// Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) => Coordinates(
//       latitude: json['latitude'] as String?,
//       longitude: json['longitude'] as String?,
//     );
//
// Map<String, dynamic> _$CoordinatesToJson(Coordinates instance) =>
//     <String, dynamic>{
//       'latitude': instance.latitude,
//       'longitude': instance.longitude,
//     };
//
// TimeZone _$TimeZoneFromJson(Map<String, dynamic> json) => TimeZone(
//       offset: json['offset'] as String?,
//       description: json['description'] as String?,
//     );
//
// Map<String, dynamic> _$TimeZoneToJson(TimeZone instance) => <String, dynamic>{
//       'offset': instance.offset,
//       'description': instance.description,
//     };
