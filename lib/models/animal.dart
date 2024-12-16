class Animal {
  final String name;
  final String breed;
  final String type;
  final String gender;
  final String character;
  final String size;
  final int age;
  final String fur;
  final List<String> color;
  final List<String> additionalInfo;
  final Shelter shelter;
  final String description;
  final List<String> photos;

  Animal({
    required this.name,
    required this.breed,
    required this.type,
    required this.gender,
    required this.character,
    required this.size,
    required this.age,
    required this.fur,
    required this.color,
    required this.additionalInfo,
    required this.shelter,
    required this.description,
    required this.photos,
  });

  factory Animal.fromJson(Map<String, dynamic> json) {
    return Animal(
      name: json['name'] ?? '',
      breed: json['breed'] ?? '',
      type: json['type'] ?? '',
      gender: json['gender'] ?? '',
      character: json['character'] ?? '',
      size: json['size'] ?? '',
      age: json['age'] ?? 0,
      fur: json['fur'] ?? '',
      color: List<String>.from(json['color'] ?? []),
      additionalInfo: List<String>.from(json['additionalInfo'] ?? []),
      shelter: Shelter.fromJson(json['shelter'] ?? {}),
      description: json['description'] ?? '',
      photos: List<String>.from(json['photos'] ?? []),
    );
  }
}

class Shelter {
  final String name;
  final String phone;
  final String email;
  final String mapLink;

  Shelter({
    required this.name,
    required this.phone,
    required this.email,
    required this.mapLink,
  });

  factory Shelter.fromJson(Map<String, dynamic> json) {
    return Shelter(
      name: json['name'] ?? '',
      phone: json['phone'] ?? '',
      email: json['email'] ?? '',
      mapLink: json['mapLink'] ?? '',
    );
  }
}
