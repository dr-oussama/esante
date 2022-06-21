class Toxicite {
  final String id;
  final String name;

  const Toxicite({
    required this.id,
    required this.name,

  });

  factory Toxicite.fromJson(Map<String, dynamic> json) => Toxicite(
    id: json['id'],
    name: json['name'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
  };
}