class sym {
  final String id;
  final String name;

  const sym({
    required this.id,
    required this.name,

  });

  factory sym.fromJson(Map<String, dynamic> json) => sym(
    id: json['id'],
    name: json['name'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
  };
}