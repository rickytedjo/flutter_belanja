import 'package:belanja/main.dart';
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = GoRouterState.of(context).extra as Item;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => context.go('/'),
              child: Hero(
                tag: itemArgs
                    .name, // Ensure the tag matches the one from the previous screen
                child: Image.asset(
                  itemArgs.image_dir,
                  height: 120,
                  width: 200,
                ),
              ),
            ),
            SizedBox(height: 16), // Optional spacing between the image and text
            Text(
              itemArgs.name + " - " + itemArgs.price.toString(),
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Rating: ' + itemArgs.rating.toString(),
              style: TextStyle(fontSize: 16),
            ),
            Text(
              itemArgs.stock.toString() + ' remaining',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
