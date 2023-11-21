class CalorieData {
static Map<String, int> _data = {
  // Fruits
  'Apple': 95,
  'Banana': 105,
  'Orange': 62,
  'Strawberries': 53,
  'Lemon': 17,
  'Mango': 201,
  'Peach': 59,
  'Pineapple': 82,
  'Grapes': 62,

  // Vegetables
  'Broccoli': 31,
  'Carrot': 25,
  'Cucumber': 8,
  'Lettuce': 5,
  'Tomato': 22,
  'Spinach': 7,
  'Onion': 44,
  'Bell Pepper': 24,
  'Cauliflower': 25,

  // Proteins
  'Chicken Breast': 165,
  'Salmon': 206,
  'Tuna': 99,
  'Egg': 78,
  'Beef Steak': 679,
  'Pork Chop': 231,
  'Tofu': 144,

  // Dairy
  'Milk': 122,
  'Yogurt': 59,
  'Cheese': 113,
  'Butter': 102,

  // Grains
  'Brown Rice': 216,
  'White Rice': 205,
  'Pasta': 131,
  'Bread': 79,
  'Oats': 389,

  // Nuts & Seeds
  'Almonds': 164,
  'Walnuts': 185,
  'Chia Seeds': 486,

  // Snacks & Sweets
  'Chocolate': 535,
  'Chips': 536,
  'Ice Cream': 137,

  // Beverages
  'Orange Juice': 117,
  'Apple Juice': 113,
  'Cranberry Juice': 117,
  'Beer': 154,
  'Soda': 150,
  'Milk': 103,
  'Chocolate Milk': 209,

  // Fast Food Items
  'Pizza Slice': 285,
  'Hamburger': 400,
  'French Fries': 365,

};

static int getCalories(String identifier) {
return _data[identifier] ?? 0;
}

static List<String> searchItems(String query) {
return _data.keys
    .where((item) => item.toLowerCase().contains(query.toLowerCase()))
    .toList();
}
}
