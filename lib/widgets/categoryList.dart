import 'package:flutter/material.dart';
import 'package:fooddeliverapp/model/FoodMenu.dart';
import 'package:fooddeliverapp/pages/listingPage.dart';



class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: menuList.length,
              itemBuilder: (context, index) {
                return InkWell(

                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ListingPage()));
                  },

                  splashColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.amber[300],
                      child: Row(
                        children: [
                          Image.network(menuList[index].itemImage,
                              height: 100, width: 100, fit: BoxFit.cover),
                          Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 8.0, bottom: 8.0),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:

                                    CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        menuList[index].itemName,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        menuList[index].itemVariety,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ]),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                    onPressed: null)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
