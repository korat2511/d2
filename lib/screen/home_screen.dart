import 'package:flutter/material.dart';

import '../const/const_string.dart';
import '../const/list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController search = TextEditingController();

  final List<bool> isTrueList = List.generate(btnList.length, (index) => false);

  @override
  void initState() {
    isTrueList[0] = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0XFF3D59EF),
        leading: Image.asset("assets/images/appBar.png"),
        title: const Text(
          "Voice to text",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: const [
          Icon(Icons.settings),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0XFFEBF8F7),
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 6,
                  ),
                  Image.asset("assets/images/search.png"),
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.black26,
                      controller: search,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.015,
                          vertical: size.height * 0.015,
                        ),
                        hintText: "Search here...",
                      ),
                      autocorrect: false,
                    ),
                  ),
                  Image.asset("assets/images/filter.png"),
                  const SizedBox(
                    width: 6,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              ConstString.upcoming,
              style: TextStyle(
                  fontSize: size.width * 0.057, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height * 0.21,
              child: ListView.builder(
                  itemCount: nameList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: size.height * 0.20,
                      width: size.width * 0.7,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      margin: const EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: colors[index],
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/user.png"),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    nameList[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: size.width * 0.055),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    titleList[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: size.width * 0.04),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            des[index],
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: size.width * 0.04),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "20 May 2023",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: size.width * 0.04),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              ConstString.contact,
              style: TextStyle(
                  fontSize: size.width * 0.057, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height * 0.04,
              child: ListView.builder(
                  itemCount: btnList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        for (int i = 0; i < isTrueList.length; i++) {
                          if (i != index) {
                            isTrueList[i] = false;
                          }
                        }
                        isTrueList[index] = !isTrueList[index];
                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: (isTrueList[index])
                                  ? btnColors[0]
                                  : btnColors[1],
                            )),
                        child: Text(
                          btnList[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w500, // 758285
                              color: (isTrueList[index]) ? Colors.white : Color(0XFF758285),
                              fontSize: size.width * 0.042),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: ListView.builder(
                    itemCount: contactNameList.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return  Column(
                        children: [
                          const SizedBox(height: 15,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(
                               children: [
                                 Image.asset("assets/images/user.png"),
                                 const SizedBox(
                                   width: 15,
                                 ),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(
                                       contactNameList[index],
                                       style: TextStyle(
                                           fontWeight: FontWeight.w700,
                                           color: const Color(0XFF1F2627),
                                           fontSize: size.width * 0.045),
                                     ),
                                     const SizedBox(
                                       height: 5,
                                     ),
                                     Text(
                                       "Carred",
                                       style: TextStyle(
                                           fontWeight: FontWeight.w400,
                                           color: const Color(0XFF758285),
                                           fontSize: size.width * 0.04),
                                     ),
                                   ],
                                 ),
                               ],
                             ),
                             Row(
                               children: [
                                 Image.asset("assets/images/option.png")
                               ],
                             ),
                           ],
                         )
                        ],
                      );
                    }),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
