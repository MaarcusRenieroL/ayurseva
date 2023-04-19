import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<String> blogCategories = [
    "Ayurveda",
    "Yoga",
    "Meditation",
    "Health",
    "Fitness",
    "Nutrition",
    "Wellness",
    "Siddha",
    "Homeopathy",
    "Unani",
  ];

  List categoriesList = [
    {
      "image": "assets/images/1.png",
      "title": "Ayurveda",
      "articles": "140",
    },
    {
      "image": "assets/images/2.png",
      "title": "Yoga",
      "articles": "140",
    },
    {
      "image": "assets/images/3.png",
      "title": "Meditation",
      "articles": "140",
    },
    {
      "image": "assets/images/4.png",
      "title": "Health",
      "articles": "140",
    },
    {
      "image": "assets/images/5.png",
      "title": "Fitness",
      "articles": "140",
    },
    {
      "image": "assets/images/6.png",
      "title": "Nutrition",
      "articles": "140",
    },
    {
      "image": "assets/images/7.png",
      "title": "Wellness",
      "articles": "140",
    },
    {
      "image": "assets/images/8.png",
      "title": "Siddha",
      "articles": "140",
    },
    {
      "image": "assets/images/9.png",
      "title": "Homeopathy",
      "articles": "140",
    },
    {
      "image": "assets/images/10.png",
      "title": "Unani",
      "articles": "140",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 214, 228, 222),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.only(
                top: 64,
                left: 24,
                right: 24,
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Text(
                        'Hello, User',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.notifications,
                      color: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                const Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: "Trending",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextSpan(text: " "),
                    TextSpan(
                      text: "Blog",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ]),
                ),
                const SizedBox(
                  height: 22,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        blogCategories.length,
                        (index) => GestureDetector(
                              onTap: () =>
                                  setState(() => _selectedIndex = index),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 24.0),
                                child: Column(
                                  children: [
                                    Text(
                                      blogCategories[index],
                                      style: TextStyle(
                                        color: _selectedIndex == index
                                            ? Colors.black
                                            : Colors.black54,
                                        fontSize: 15,
                                        fontWeight: _selectedIndex == index
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                      ),
                                    ),
                                    Container(
                                      height: 4,
                                      width: 4,
                                      margin: const EdgeInsets.only(top: 8),
                                      decoration: BoxDecoration(
                                        color: _selectedIndex == index
                                            ? Colors.black
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Stack(
                    children: [
                      Container(
                        height: 252,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(24),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/01.png'),
                              opacity: 60,
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        top: 24,
                        right: 24,
                        child: Container(
                          height: 34,
                          width: 68,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 20,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '500',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 200,
                              ),
                              const Text(
                                'Yoga for Beginners',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'By: User',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '10 June, 2020',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                const Text(
                  "Categories",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 162,
                  child: ListView.builder(
                    itemCount: categoriesList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 160,
                        width: 120,
                        margin: const EdgeInsets.only(right: 24),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                categoriesList[index]["image"],
                                width: 32,
                                height: 32,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                categoriesList[index]["title"],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${categoriesList[index]['articles']} Articles",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ])),
        ));
  }
}
