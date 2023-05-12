import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/category.dart';
import '../components/drawer.dart';
import '../components/item.dart';
import '../language/language.dart';

class AllProductsPage extends StatefulWidget {
  const AllProductsPage({super.key});

  @override
  State<AllProductsPage> createState() => _AllProductsPageState();
}

class _AllProductsPageState extends State<AllProductsPage> {
  int currentIndex = 0;
  Color mainColor = const Color(0xFF1E4ABB);
  Color textColor = const Color(0xFF999999);

  @override
  Widget build(BuildContext context) {
    Size currentSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFEBEBEB),
      appBar: AppBar(
        actions: <Widget>[Container()],
        backgroundColor: mainColor,
        centerTitle: true,
        title: Text(
          Lang.autoPrice.tr(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          // Search and Bar
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: currentSize.width * 0.7,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.14),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: TextField(
                          cursorHeight: 20,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            isCollapsed: false,
                            hintText: "Search",
                            hintStyle: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Builder(builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Color(0xFF2E3A59),
                      size: 30,
                    ),
                  );
                }),
              ),
            ],
          ),
          // Search and Bar End

          Padding(
            padding: const EdgeInsets.only(left: 0, top: 18),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Category(
                    mainColor: mainColor,
                    imgUrl: "assets/images/company_img/img_1.png",
                  ),
                  Category(
                    mainColor: mainColor,
                    imgUrl: "assets/images/company_img/img_2.png",
                  ),
                  Category(
                    mainColor: mainColor,
                    imgUrl: "assets/images/company_img/img_3.png",
                  ),
                  Category(
                    mainColor: mainColor,
                    imgUrl: "assets/images/company_img/img_4.png",
                  ),
                  Category(
                    mainColor: mainColor,
                    imgUrl: "assets/images/company_img/img_5.png",
                  ),
                  Category(
                    mainColor: mainColor,
                    imgUrl: "assets/images/company_img/img_1.png",
                  ),
                  Category(
                    mainColor: mainColor,
                    imgUrl: "assets/images/company_img/img_2.png",
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 10,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.63,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Row(
                      children: const [
                        Product(),
                        Spacer(),
                        Product(),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: const [
                        Product(),
                        Spacer(),
                        Product(),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: const [
                        Product(),
                        Spacer(),
                        Product(),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: const [
                        Product(),
                        Spacer(),
                        Product(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/profile_img.png",
                    width: 84,
                    height: 84,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "dukauwa.du@gmail.com",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF1E0702),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DrawerItem(
                      mainColor: mainColor,
                      text: "Explore",
                      color: mainColor,
                      onPressed: () {},
                    ),
                    DrawerItem(
                      mainColor: mainColor,
                      text: "Vapes",
                      color: textColor,
                      onPressed: () {},
                    ),
                    DrawerItem(
                      mainColor: mainColor,
                      text: "Extracts",
                      color: textColor,
                      onPressed: () {},
                    ),
                    DrawerItem(
                      mainColor: mainColor,
                      text: "Edibles",
                      color: textColor,
                      onPressed: () {},
                    ),
                    DrawerItem(
                      mainColor: mainColor,
                      text: "Followers",
                      color: textColor,
                      onPressed: () {},
                    ),
                    DrawerItem(
                      mainColor: mainColor,
                      text: "Accessories",
                      color: textColor,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: DrawerItem(
                mainColor: mainColor,
                text: "Log Out",
                color: Colors.red,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: currentSize.width * .155,
        margin: EdgeInsets.all(currentSize.width * 0.05),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MenuItem(
              onPressed: () {},
              icon: Icons.home_outlined,
              text: "Home",
            ),
            MenuItem(
              onPressed: () {},
              icon: Icons.favorite_border,
              text: "Favorite",
            ),
            MenuItem(
              onPressed: () {},
              text: "Create",
            ),
            MenuItem(
              onPressed: () {},
              icon: Icons.search,
              text: "Search",
            ),
            MenuItem(
              onPressed: () {},
              icon: CupertinoIcons.profile_circled,
              text: "Profile",
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 50),
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          backgroundColor: mainColor,
          child: const Icon(
            Icons.add_circle_outline_outlined,
            size: 40,
          ),
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              "assets/images/cars/img_car_1.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                top: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Mercedes AMG ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3D3434),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "7 500 y.e.",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF3D3434),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Ташкент \n2020 175,000 km",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFC4C4C4),
                      fontSize: 10,
                      height: 1.5,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
