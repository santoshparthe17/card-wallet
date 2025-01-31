class CategoryModel {
  final String name;
  final String imagePath;

  CategoryModel({required this.name, required this.imagePath});
}

class FilterModel {
  final String name;

  FilterModel({required this.name});
}

class ProductModel {
  final String image;
  final String name;
  final String weight;
  final String price;
  final int categoryId;
  final int filterId;
  final String originalPrice;
  final String cashback;

  ProductModel({
    required this.image,
    required this.name,
    required this.weight,
    required this.price,
    required this.categoryId,
    required this.filterId,
    required this.originalPrice,
    required this.cashback,
  });
}
