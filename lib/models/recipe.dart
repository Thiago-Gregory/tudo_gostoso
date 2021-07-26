class Recipe {
  final String photo;
  final String name;
  final int preparationTime;
  final int yield;
  final int numberOfFavorites;
  final int numberOfComments;
  final List<String> ingredientsPasta;
  final List<String> ingredientsTopping;
  final List<String> preparationModePasta;
  final List<String> preparationModeTopping;
  
  Recipe({
    required this.photo,
    required this.name,
    required this.preparationTime,
    required this.yield,
    required this.numberOfFavorites,
    required this.numberOfComments,
    required this.ingredientsPasta,
    required this.ingredientsTopping,
    required this.preparationModePasta,
    required this.preparationModeTopping,
  });
}
