class Items {
  final String name;
  final String description;
  final String imageUrl;
  final List<String> ingredients;
  final double price;
  bool isFavorite;

  Items({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.ingredients,
    required this.price,
    this.isFavorite =false,
  });
}