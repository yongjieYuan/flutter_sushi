import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suhi/models/food.dart';
import 'package:suhi/sushi_library/sushi_library.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final VoidCallback? onTap;
  const FoodTile(this.food, {this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Hero(
              tag: food.name,
              child: Image.asset(
                food.imagePath.png,
                height: 140,
              ),
            ),
            Text(
              food.name,
              style: GoogleFonts.dmSerifDisplay(fontSize: 20),
            ),
            SizedBox(
              width: 160,
              child: Row(
                children: [
                  Text("\$" + food.price),
                  Icon(Icons.stars,color: Colors.yellow[800],),
                  Text(food.rating,style: TextStyle(color: Colors.grey),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
