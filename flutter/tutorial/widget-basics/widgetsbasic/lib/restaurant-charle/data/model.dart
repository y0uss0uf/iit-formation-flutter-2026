class Menu {
  final String name;
  final String image;
  final List<Food> foods;

  Menu({required this.name, required this.foods, required this.image});
}

class Food {
  final int id;
  final String title;
  final String description;
  final double price;
  final int preparationTime;
  final String image;
  final double rating;
  final int reviewCount;

  final bool available;
  final List<String> tags;

  final List<SideOption> sideOption;

  Food({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.preparationTime,
    required this.image,
    required this.rating,
    required this.reviewCount,
    required this.available,
    required this.tags,
    required this.sideOption,
  });
}

class SideOption {
  final String name;
  final double price;

  SideOption({required this.name, required this.price});
}
