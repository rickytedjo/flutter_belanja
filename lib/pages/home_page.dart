import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        stock: 20,
        rating: 10.00,
        image_dir: 'sugar.jpg'),
    Item(
        name: 'Salt',
        price: 2000,
        stock: 15,
        rating: 8.25,
        image_dir: 'salt.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            childAspectRatio: 2, // Adjusts the aspect ratio of the grid items
            crossAxisSpacing: 8, // Space between columns
            mainAxisSpacing: 8, // Space between rows
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () => context.go('/item', extra: item),
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Hero(
                        tag: item
                            .name, // Use a unique identifier, such as the item's id
                        child: Image.asset(
                          item.image_dir,
                          width: 200,
                          height: 120,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          item.name + " - " + item.price.toString(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: (Text(
        '2241720204 - Ricky Putra Pratama Tedjo',
        textAlign: TextAlign.center,
      )),
    );
  }
}
