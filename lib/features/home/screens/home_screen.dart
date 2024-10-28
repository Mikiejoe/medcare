import 'package:flutter/material.dart';
import 'package:medcare/features/home/widgets/food_type_card.dart';
import 'package:medcare/features/home/widgets/near_me.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color bgColor = Colors.grey.shade300;
  int activeCard = 0;
  void onTap(int index) {
    setState(() {
      activeCard = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> foodName = ["Drinks", "Food", "Cake", "Snack"];
    final Size size = MediaQuery.of(context).size;
    final List<Map<String, String>> restaurants = [
      {
        "name": "Awesome Sushi restaurant",
        "location": "Lurambi, Kakamega",
        "time": "5min, 500m",
        "rating": "4.5",
      },
      {
        "name": "Awesome Sushi restaurant",
        "location": "Lurambi, Kakamega",
        "time": "5min, 500m",
        "rating": "4.5",
      },
      {
        "name": "Awesome Sushi restaurant",
        "location": "Lurambi, Kakamega",
        "time": "5min, 500m",
        "rating": "4.5",
      },
    ];
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search_outlined,
                      color: Colors.grey,
                    ),
                    hintStyle: const TextStyle(color: Colors.grey),
                    hintText: "Search",
                    fillColor: Colors.grey.shade300,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(right: 16),
                      scrollDirection: Axis.horizontal,
                      itemCount: foodName.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          onTap(index);
                        },
                        child: FoodTypeCard(
                          color: index == activeCard ? Colors.orange : bgColor,
                          foodName: foodName[index],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: size.width,
              height: size.height * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "${foodName[activeCard]} Menu",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(
                          right: 16, left: 16, bottom: 16),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemCount: 14,
                      itemBuilder: (context, index) => Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(18)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Near Me",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      const Text(
                        "See all",
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: List<Widget>.generate(
                      restaurants.length,
                      (index) => NearMe(
                        name: restaurants[index]["name"],
                        location: restaurants[index]["location"],
                        time: restaurants[index]["time"],
                        rating: restaurants[index]["rating"],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sale off",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    "50%",
                    style: TextStyle(
                        fontSize: 54,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Text(
                    "For Breakfast",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: size.width,
              height: size.height * 0.43,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "For Breakfast",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(
                          right: 16, left: 16, bottom: 16),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemCount: 14,
                      itemBuilder: (context, index) => Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(18)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
