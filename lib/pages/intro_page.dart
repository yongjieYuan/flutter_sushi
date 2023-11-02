import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suhi/commponents/my_button.dart';
import 'package:suhi/config/my_routes.dart';
import 'package:suhi/sushi_library/sushi_library.dart';

class IntroPage  extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25,),
            // shop name
            Text("SUSHI MAN",style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,color: Colors.white),),
            const SizedBox(height: 25,),
            // icon
            Center(child: Padding(padding: EdgeInsets.all(20),child: Image.asset("002-sushi-1".png,width: 220,),)),
            const SizedBox(height: 25,),
            // title
            Text("THE TASTE OF JAPANESE FOOD",style: GoogleFonts.dmSerifDisplay(fontSize: 44,color: Colors.white),),
            const SizedBox(height: 10,),
            // subtitle
            Text("Feel the taste of the most popular Japanese food from anywhere and anytime",style: TextStyle(
                color: Colors.grey[300],
                height: 2
            ),),
            // get started button
            MyButton(text: "Get Started",onTap: (){
              Navigator.of(context).pushNamed(MyRoutes.menuPage);
            },)
          ],
        ),
      ),
    );
  }
}
