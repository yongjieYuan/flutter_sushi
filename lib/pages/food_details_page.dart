import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suhi/models/food.dart';
import 'package:suhi/sushi_library/sushi_library.dart';
import 'package:suhi/theme/colors.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage(this.food, {Key? key}) : super(key: key);

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  int _quantity = 1;

  void increase() {
    setState(() {
      _quantity++;
    });
  }

  void decrease() {
    if(_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          // listview of food details
          Expanded(
              child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              Hero(
                tag: widget.food.name,
                child: Image.asset(
                  widget.food.imagePath.png,
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[800],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.food.rating,
                    style: TextStyle(
                        color: Colors.grey[600], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.food.name,
                style: GoogleFonts.dmSerifDisplay(fontSize: 28),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Description",
                style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Something description...",
                style:
                    TextStyle(color: Colors.grey[600], fontSize: 14, height: 2),
              )
            ],
          )),
          // price + quantity + add to cart button
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$" + widget.food.price,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: secondaryColor, shape: BoxShape.circle),
                          child: IconButton(
                            icon: const Icon(Icons.remove),
                            color: Colors.white,
                            onPressed: decrease,
                          ),
                        ),
                        SizedBox(
                          width: 40,
                          child: Text(
                            "$_quantity",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: secondaryColor, shape: BoxShape.circle),
                          child: IconButton(
                            icon: const Icon(Icons.add),
                            color: Colors.white,
                            onPressed: increase,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
