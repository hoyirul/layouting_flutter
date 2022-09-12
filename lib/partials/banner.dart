import 'package:flutter/material.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.amber)),
      padding: const EdgeInsets.all(0.0),
      child: Column(
        children: [
          Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(0.0),
            child: Image.asset(
              "assets/images/messi.jpeg",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: const Text(
              "Lionel Messi",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            color: Colors.amber,
            width: MediaQuery.of(context).size.width,
            child: const Text("Lorem Ipsum"),
          )
        ],
      ),
    );
  }
}
