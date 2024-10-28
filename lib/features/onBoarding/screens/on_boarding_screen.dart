import 'package:flutter/material.dart';
import 'package:medcare/features/onBoarding/widgets/on_board.dart';
import 'package:medcare/features/auth/screens/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<Widget> _pages = [
    const OnBoard(
      icon: Icons.dinner_dining_outlined,
      title: "Delicious Food",
      subTitle: "Enjoy finger licking taste that will leave you asking for more and more yummy",
    ),
    const OnBoard(
      icon: Icons.local_shipping_outlined,
      title: "Fast Delivery",
      subTitle: "Get to enjoy your meals at the fastest speeds",
    ),
    const OnBoard(
      icon: Icons.workspace_premium,
      title: "Verified Food Vendor",
      subTitle: "Your food is always safe",
    ),
    const OnBoard(
      icon: Icons.credit_card,
      title: "Online Payment",
      subTitle: "Pay for your food using the safest technologies at the comfort of yor home",
    ),
  ];
  int _currentPage = 0;
  void onPageChange(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.deepOrange,
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: onPageChange,
                  children: _pages,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  _pages.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        right: 6,
                        
                      ),
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: index == _currentPage
                            ? Colors.white
                            : Colors.grey.shade400,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        floatingActionButton: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Text("Skip", style: TextStyle(color: Colors.grey.shade300,fontSize: 18),)));
  }
}
