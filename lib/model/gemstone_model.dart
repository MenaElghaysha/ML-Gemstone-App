class GemstoneAttributes {
  final double carat;
  final String cut;
  final String color;
  final String clarity;
  final double depth;
  final double table;
  final double x;
  final double y;
  final double z;

  GemstoneAttributes({
    required this.carat,
    required this.cut,
    required this.color,
    required this.clarity,
    required this.depth,
    required this.table,
    required this.x,
    required this.y,
    required this.z,
  });

  // GET
  factory GemstoneAttributes.fromJson(Map<String, dynamic> json) {
    return GemstoneAttributes(
      carat: json['carat'],
      cut: json['cut'],
      color: json['color'],
      clarity: json['clarity'],
      depth: json['depth'],
      table: json['table'],
      x: json['x'],
      y: json['y'],
      z: json['z'],
    );
  }

  // Convert GemstoneAttributes object to JSON
  Map<String, dynamic> toJson() {
    return {
      'carat': carat,
      'cut': cut,
      'color': color,
      'clarity': clarity,
      'depth': depth,
      'table': table,
      'x': x,
      'y': y,
      'z': z,
    };}
}