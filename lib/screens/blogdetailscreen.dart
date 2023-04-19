import 'package:flutter/material.dart';

class BlogDetailScreen extends StatefulWidget {
  const BlogDetailScreen({Key? key}) : super(key: key);

  @override
  _BlogDetailScreenState createState() => _BlogDetailScreenState();
}

class _BlogDetailScreenState extends State<BlogDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Column(
      children: [
        Image.asset(
          'assets/images/01.png',
          height: 400,
          width: size.width,
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            
          ],
        )
      ],
    ));
  }
}
