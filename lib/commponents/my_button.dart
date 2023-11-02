import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const MyButton({required this.text, this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(109, 140, 94, 91),
          borderRadius: BorderRadius.circular(40)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 25,),
            Text(text, style: const TextStyle(color: Colors.white),),
            const SizedBox(width: 10,),
            const Icon(Icons.arrow_forward,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
