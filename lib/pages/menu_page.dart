import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suhi/commponents/FoodTile.dart';
import 'package:suhi/commponents/my_button.dart';
import 'package:suhi/models/food.dart';
import 'package:suhi/pages/food_details_page.dart';
import 'package:suhi/sushi_library/sushi_library.dart';
import 'package:suhi/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final List<Food> foodMenu = [
    Food(
        name: "Salmon Sushi",
        price: "21.00",
        imagePath: "003-sushi-2",
        rating: "4.9"),
    Food(name: "Tuna", price: "21.00", imagePath: "004-sushi-3", rating: "4.3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          "Tokyo",
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promp banner
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Get 32% Promo",
                      style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton(
                      text: "Redeem",
                      onTap: () {},
                    )
                    // redeem button
                    // image
                  ],
                ),
                // promo message
                Image.asset("001-sushi".png)
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          // search bar
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.white),
                    //   borderRadius: BorderRadius.circular(20)
                    // ),
                    hintText: "Search here...",
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20))),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
              child: Text(
                "Food Menu",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    fontSize: 18),
              )),
          const SizedBox(
            height: 10,
          ),
          // popular food
          Expanded(
              child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            scrollDirection: Axis.horizontal,
            itemCount: foodMenu.length,
            itemBuilder: (context, index) => FoodTile(foodMenu[index],onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => FoodDetailsPage(foodMenu[index])));
              // Nav.push(FoodDetailsPage());
            },),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              width: 20,
            ),
          )),
          // Popular food
          Container(
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "002-sushi-1".png,
                      height: 60,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Salmon Eggs",
                          style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("\$" + "21.00")
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    // setState(() {
                    //
                    // });
                  },
                  icon: Icon(Icons.favorite_border),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
