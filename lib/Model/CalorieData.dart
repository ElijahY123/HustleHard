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
  'Green Beans': 31,

  // Proteins
  'Chicken Breast': 165,
  'Salmon': 206,
  'Tuna': 99,
  'Beef Steak': 679,
  'Pork Chop': 231,
  'Tofu': 144,
  'Chicken Nuggets': 285,
  'Bacon (per slice)': 43,
  'Fried Egg': 90,
  'Bacon': 50,
  'Turkey': 200,
  'Baked Beans': 140,


  // Dairy
  'Milk': 103,
  'Yogurt': 59,
  'Cheese': 113,
  'Butter': 102,

  // Grains
  'Brown Rice': 216,
  'White Rice': 205,
  'Pasta': 75,
  'Bread': 79,
  'Oatmeal': 158,

  // Nuts & Seeds
  'Almonds': 164,
  'Walnuts': 185,
  'Peanuts': 161,
  'Pistachios': 159,

  // Snacks & Sweets
  'Chocolate': 235,
  'Chips': 152,
  'Ice Cream': 137,
  'Fruit Bar/Rollup': 50,
  'Cookie': 78,
  'Brownie': 132,
  'Cake': 140,
  'Donut': 290,
  'Danish': 106,

  // Beverages
  'Orange Juice': 117,
  'Apple Juice': 113,
  'Cranberry Juice': 117,
  'Beer': 154,
  'Soda/Pop': 160,
  'Chocolate Milk': 209,

  // Meal items
  'Pizza Slice': 285,
  'Hamburger': 354,
  'French Fries': 365,
  'Spaghetti': 221,
  'Hot Dog': 220,
  'Chicken Noodle Soup (can)': 246,
  'Sandwich': 350,
  'Submarine Sandwich (6")': 425,
  'Submarine Sandwich (12")': 850,
  'Breakfast Biscuit/Croissant': 450,
  'Waffle': 310,
  'Breakfast Muffin': 400,
  'Pancake': 160,
  'French Toast': 150,
  'Bagel': 250,
  'Hashbrown': 120,
  'Cereal': 200,
  'Stuffing': 380,
  'Mashed Potatoes': 214,
  'Baked Potato': 161,
  'Cob of Corn': 155,
  'Sweet Corn': 177,
  'Taco': 156,
  'Macaroni and Cheese': 310,
  'Box of Macaroni and Cheese': 950,




  // Exercises/Sports
  'Golf': -350,
  'Basketball': -450,
  'Aerobics': -530,
  'Light Lifting (light workout)': -245,
  'Heavy Lifting (heavy workout)': -490,
  'Badminton': -348,
  'Tennis': -500,
  'Ping Pong': -327,
  'Running': -330,
  'Walking': -270,
  'Stair Machine': -735,
  'Cycling/Biking': -654,
  'Cross Country Skiing': -654,
  'Rock Climbing': -654,
  'Playing an instrument': -250,
  'Dancing': -350,
  'Archery': -286,
  'Bowling': -245,
  'Carrying Heavy Loads': -600,
  'Playing Catch': -200,
  'Jumping Rope': -800,
  'Kayaking': -400,
  'Lacrosse': -654,
  'Stretching': -200,
  'Yoga': -327,

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
