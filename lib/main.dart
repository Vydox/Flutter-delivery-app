import 'package:flutter/material.dart';

void main() => runApp(MealApp());

class MealApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MealScreen(),
    );
  }
}

class MealScreen extends StatelessWidget {
  final List<String> meals = List.generate(
    100,
      (i) => 'Meal $i',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals'),
      ),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                title: Row(
                  children: [
                    Expanded(
                      child: Text(meals[index]),
                    ),
                    const Expanded(
                        child: Text('Price: ')
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.add_shopping_cart),
                      label: const Text('Add'),
                      onPressed: () {
                        //Add-to-cart logic here
                      },
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 3,
              ),
            ],
          );
        },
      ),
    );
  }
}
