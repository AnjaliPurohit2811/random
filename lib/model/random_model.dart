class UserModel {
  List<Result>? results;

  UserModel._init({required this.results});

  factory UserModel(Map<String, dynamic> m1) {
    var resultsList = (m1['results'] as List).map((e) => Result.fromMap(e)).toList();
    return UserModel._init(results: resultsList);
  }
}

class Result {
  String? gender, email, phone, cell, nat;
  Name? name;
  Location? location;
  Login? login;
  Dob? dob;
  Registered? registered;
  Id? id;
  Picture? picture;

  Result._init(
      {required this.picture,
        required this.name,
        required this.registered,
        required this.dob,
        required this.login,
        required this.location,
        required this.phone,
        required this.nat,
        required this.gender,
        required this.email,
        required this.cell,
        required this.id});

  factory Result.fromMap(Map<String, dynamic> m1) {
    return Result._init(
        picture: Picture.fromMap(m1['picture']),
        name: Name.fromMap(m1['name']),
        registered: Registered.fromMap(m1['registered']),
        dob: Dob.fromMap(m1['dob']),
        login: Login.fromMap(m1['login']),
        location: Location.fromMap(m1['location']),
        phone: m1['phone'],
        nat: m1['nat'],
        gender: m1['gender'],
        email: m1['email'],
        cell: m1['cell'],
        id: Id.fromMap(m1['id']));
  }
}

class Name {
  String? title, first, last;

  Name._init({required this.title, required this.first, required this.last});

  factory Name.fromMap(Map<String, dynamic> m1) {
    return Name._init(title: m1['title'], first: m1['first'], last: m1['last']);
  }
}

class Location {
  String? city, state, country, postcode;
  Street? street;
  Coordinates? coordinates;
  Timezone? timezone;

  Location._init(
      {required this.city,
        required this.state,
        required this.country,
        required this.postcode,
        required this.street,
        required this.coordinates,
        required this.timezone});

  factory Location.fromMap(Map<String, dynamic> m1) {
    return Location._init(
        city: m1['city'],
        state: m1['state'],
        country: m1['country'],
        postcode: m1['postcode'],
        street: Street.fromMap(m1['street']),
        coordinates: Coordinates.fromMap(m1['coordinates']),
        timezone: Timezone.fromMap(m1['timezone']));
  }
}

class Street {
  int? number;
  String? name;

  Street._init({required this.number, required this.name});

  factory Street.fromMap(Map<String, dynamic> m1) {
    return Street._init(number: m1['number'], name: m1['name']);
  }
}

class Coordinates {
  String? latitude, longitude;

  Coordinates._init({required this.latitude, required this.longitude});

  factory Coordinates.fromMap(Map<String, dynamic> m1) {
    return Coordinates._init(
        latitude: m1['latitude'], longitude: m1['longitude']);
  }
}

class Timezone {
  String? offset, description;

  Timezone._init({required this.offset, required this.description});

  factory Timezone.fromMap(Map<String, dynamic> m1) {
    return Timezone._init(offset: m1['offset'], description: m1['description']);
  }
}

class Login {
  String? uuid, username, password, salt, md5, sha1, sha256;

  Login._init(
      {required this.md5,
        required this.password,
        required this.salt,
        required this.sha1,
        required this.sha256,
        required this.username,
        required this.uuid});

  factory Login.fromMap(Map<String, dynamic> m1) {
    return Login._init(
        md5: m1['md5'],
        password: m1['password'],
        salt: m1['salt'],
        sha1: m1['sha1'],
        sha256: m1['sha256'],
        username: m1['username'],
        uuid: m1['uuid']);
  }
}

class Dob {
  int? age;
  String? date;

  Dob._init({required this.date, required this.age});

  factory Dob.fromMap(Map<String, dynamic> m1) {
    return Dob._init(date: m1['date'], age: m1['age']);
  }
}

class Registered {
  int? age;
  String? date;

  Registered._init({required this.date, required this.age});

  factory Registered.fromMap(Map<String, dynamic> m1) {
    return Registered._init(date: m1['date'], age: m1['age']);
  }
}

class Id {
  String? name, value;

  Id._init({required this.name, required this.value});

  factory Id.fromMap(Map<String, dynamic> m1) {
    return Id._init(name: m1['name'], value: m1['value']);
  }
}

class Picture {
  String? large, medium, thumbnail;

  Picture._init(
      {required this.large, required this.medium, required this.thumbnail});

  factory Picture.fromMap(Map<String, dynamic> m1) {
    return Picture._init(
        large: m1['large'], medium: m1['medium'], thumbnail: m1['thumbnail']);
  }
}

class Info {
  String? seed, version;
  int? results, page;

  Info._init(
      {required this.seed,
        required this.results,
        required this.page,
        required this.version});

  factory Info.fromMap(Map<String, dynamic> m1) {
    return Info._init(
        seed: m1['seed'],
        results: m1['results'],
        page: m1['page'],
        version: m1['version']);
  }
}
