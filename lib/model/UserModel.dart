
class UserStatus{
  List<User>? userList;

  UserStatus({this.userList});

  factory UserStatus.fromJson(Map<String,dynamic> json){
    var requestItems = json["results"] as List;
    var requestList = requestItems.map((i) => User.fromMap(i)).toList();
    return UserStatus(
        userList:  requestList
    );
  }
}

class User{
  String? email;
  String? phone;
  String? gender;
  UserName? userName;
  UserLocation? location;
  UserPicture? picture;
  UserDob? dob;

  User({this.email,this.phone,this.gender,this.location,this.dob,this.picture,this.userName});

  factory User.fromMap(Map<String,dynamic> json){
    var Name = UserName.fromMap(json['name']);
    var userLocation = UserLocation.fromMap(json['location']);
    var userPicture = UserPicture.fromMap(json['picture']);
    var userDob = UserDob.fromMap(json['dob']);

  return User(
    email: json['email'] ?? "",
    phone: json['phone'] ?? "",
    gender:  json['gender'] ?? "",
    userName: Name,
    location: userLocation,
    picture: userPicture,
    dob: userDob,
  );
  }
}

/// User Name

class UserName{
  String tittle;
  String first;
  String last;

  UserName({required this.tittle,required this.first,required this.last});

  factory UserName.fromMap(Map<String,dynamic> json){

    return UserName(
      tittle: json['tittle'] ?? "",
      first: json['first'] ?? "",
      last: json['last'] ?? ""
    );
  }
}

/// User Picture
class UserPicture{
String? thumbNail;
String? large;
 UserPicture({this.large,this.thumbNail});

 factory UserPicture.fromMap(Map<String,dynamic> json){
   return UserPicture(
     large: json['large'] ?? "",
     thumbNail: json['thumbnail'] ?? ""
   );
 }


}

/// User Date of birth
class UserDob{
String? date;
int? age;
 UserDob({this.date,this.age});

 factory UserDob.fromMap(Map<String,dynamic> json){
   return UserDob(
   date : json['date'] ??"",
   age : json['age']??0,
   );
 }
}

/// User Location
class UserLocation{
  String? city;
  String? state;
  String? country;
  String? postcode;
  Street? street;
  Coordinates? coordinates;
  TimeZone? timeZone;

  UserLocation({this.city,this.state,this.country,this.postcode,
    this.street,this.coordinates,this.timeZone});

  factory UserLocation.fromMap(Map<String,dynamic> json){
    var streetLocation = Street.fromMap(json['street']);
    var locCordi = Coordinates.fromMap(json['coordinates']);
    var userTime = TimeZone.fromMap(json['timezone']);

    return UserLocation(
      city: json['city'] ??"",
      state: json['state'] ?? "",
      country: json['country'] ?? "",
      postcode: json['postcode'] !=null ? json['postcode'].toString() : "",
      street:  streetLocation,
      coordinates: locCordi,
      timeZone: userTime,
    );
  }
}

/// User Street
class Street{
 int? number;
 String? name;

 Street({this.number,this.name});

 factory Street.fromMap(Map<String,dynamic> json){
   return Street(
     number: json['number'] ??0,
     name: json['name'] ??""
   );
 }
}

/// Coordinates
class Coordinates{
 String? lat;
 String? long;

 Coordinates({this.lat,this.long});
 factory Coordinates.fromMap(Map<String,dynamic> json){
   return Coordinates(
     lat: json['latitude'] ?? "",
     long: json['longitude'] ?? ""
   );
 }
}

/// Timezone
class TimeZone{

  String? offset;
  String? description;

  TimeZone({this.offset,this.description});

  factory TimeZone.fromMap(Map<String,dynamic>json){
    return TimeZone(
      offset: json['offset'] ?? "",
      description: json['description'] ?? ""
    );
  }
}

