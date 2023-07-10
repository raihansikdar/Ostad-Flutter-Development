import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:live_test_9/model.dart';

class HomePage extends StatelessWidget {
   const HomePage({super.key});

  final String recipeData = '''
    {
      "recipes": [
        {
          "title": "Pasta Carbonara",
          "description": "Creamy pasta dish with bacon and cheese.",
          "ingredients": ["spaghetti", "bacon", "egg", "cheese"]
        },
        {
          "title": "Caprese Salad",
          "description": "Simple and refreshing salad with tomatoes, mozzarella, and basil.",
          "ingredients": ["tomatoes", "mozzarella", "basil"]
        },
        {
          "title": "Banana Smoothie",
          "description": "Healthy and creamy smoothie with bananas and milk.",
          "ingredients": ["bananas", "milk"]
        },
        {
          "title": "Chicken Stir-Fry",
          "description": "Quick and flavorful stir-fried chicken with vegetables.",
          "ingredients": ["chicken breast", "broccoli", "carrot", "soy sauce"]
        },
        {
          "title": "Grilled Salmon",
          "description": "Delicious grilled salmon with lemon and herbs.",
          "ingredients": ["salmon fillet", "lemon", "olive oil", "dill"]
        },
        {
          "title": "Vegetable Curry",
          "description": "Spicy and aromatic vegetable curry.",
          "ingredients": ["mixed vegetables", "coconut milk", "curry powder"]
        },
        {
          "title": "Berry Parfait",
          "description": "Layered dessert with fresh berries and yogurt.",
          "ingredients": ["berries", "yogurt", "granola"]
        }
      ]
    }
  ''';


  List<Recipe> parseRecipes(String jsonString) {
    final parsed = json.decode(jsonString);
    final recipes = parsed['recipes'].cast<Map<String, dynamic>>();
    return recipes.map<Recipe>((json) => Recipe.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Recipe> recipes = parseRecipes(recipeData);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.network("https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D&w=1000&q=80"),
            title: Text(recipes[index].title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            subtitle: Text(recipes[index].description),
          );
        },
      ),
    );
  }
}
