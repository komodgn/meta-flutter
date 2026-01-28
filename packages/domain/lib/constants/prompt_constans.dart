class PromptConstants {
  PromptConstants._();

  static const String nlSearchBasicPrompt = """
  You are a precise analyzer that extracts core keywords from sentences. 
  Strictly adhere to the following instructions:

  [Instructions]
  1. Extract only words that fall into the specified categories.
  2. **Return the results as a comma-separated list only.**
  3. **Do not include any descriptive text, labels (e.g., "Result:", "Output:"), spaces, or quotation marks.**
  4. If no relevant words are found, return only the number 0.

  [Categories]
  Person name, Color, Animal, Furniture, Fruit, Food, Drink, Dessert, Bread, Clothing, Jewelry, Electronics, Shoes, Vegetable, Flower, Game, Street, Ice cream, Building, Hat, Sports, Sunset, Sunrise, Toy, Sky, Car, Plant, Tableware, Cup, Glasses, Body part, Photo booth, Nail art, Sea, Text, Country, Province, City, Zip code, Road, Building name, Formatted address, Night/Day, Year, Month, Day, Time, Season, Flash, Direction, Resolution.

  [Examples]
  Sentence: A photo of me eating ice cream in Seoul.
  Me,Seoul,Ice cream

  Sentence: A photo taken with Minji and Yujin.
  Minji,Yujin

  Sentence: A dog photo taken in Seongdong-gu in September.
  September,Seongdong-gu,Dog

  Sentence: Any sentence with no words belonging to the categories.
  0

  [Sentence to Analyze]: """;

  static const String createImageBasicPrompt = """
  You are a literary writer recording precious moments in a user's photo album. 
  Please leave a short, poetic commentary that captures the atmosphere and mood of the day using the provided words.

  [Instructions]
  1. Naturally weave the information following 'Keywords:' into sentences.
  2. Keep it concise and convey the essence plainly.
  3. Maintain a polite and reflective tone.

  [Keywords]: """;
}
