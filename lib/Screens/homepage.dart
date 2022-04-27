import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_shadow/simple_shadow.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Color> selectedColor = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // LinearGradient(colors: GradientColors.purple),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Flexible(
                child: Container(
                  // height: double.infinity,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: GradientColors.black,
                      // begin: Alignment.topLeft,
                      // end: Alignment.bottomRight
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 75,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Paris',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    (Icons.keyboard_arrow_down_rounded),
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 20,
                                    minRadius: 20,
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),

                                  SizedBox(
                                    width: 10,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 20,
                                    minRadius: 20,
                                    child: Icon(
                                      FontAwesomeIcons.sliders,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),

                                  // Icons(Icons.filter_list),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: DefaultTabController(
                          length: 7,
                          child: Column(
                            children: <Widget>[
                              Container(
                                // color: Colors.blue,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 20),
                                height: 140,
                                width: MediaQuery.of(context).size.width,
                                child: TabBar(
                                    physics: BouncingScrollPhysics(),
                                    // padding: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                                    // labelPadding:
                                    // EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                    isScrollable: true,
                                    unselectedLabelColor: Colors.white,
                                    automaticIndicatorColorAdjustment: true,
                                    indicatorSize: TabBarIndicatorSize.label,
                                    indicator: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      gradient: LinearGradient(
                                          colors: GradientColors.purple),
                                    ),
                                    tabs: [
                                      Container(
                                        height: 100,
                                        width: 50,
                                        // color: Colors.black,
                                        child: Tab(
                                          child: Container(
                                            height: 100,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),

                                              // color: Colors.blue,
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              // mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.black54,
                                                  maxRadius: 20,
                                                  minRadius: 20,
                                                  child: Icon(
                                                    Icons.sunny,
                                                    color: Colors.yellow,
                                                    size: 20,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 5),
                                                  child: AutoSizeText(
                                                    'Aayushshah',
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 50,
                                        child: Tab(
                                          child: Container(
                                            height: 100,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),

                                              // color: Colors.blue,
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              // mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.black54,
                                                  maxRadius: 20,
                                                  minRadius: 20,
                                                  child: Icon(
                                                    Icons.sunny,
                                                    color: Colors.yellow,
                                                    size: 20,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 5),
                                                  child: AutoSizeText(
                                                    'Aayushshah',
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 50,
                                        child: Tab(
                                          child: Container(
                                            height: 100,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),

                                              // color: Colors.blue,
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              // mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.black54,
                                                  maxRadius: 20,
                                                  minRadius: 20,
                                                  child: Icon(
                                                    Icons.sunny,
                                                    color: Colors.yellow,
                                                    size: 20,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 5),
                                                  child: AutoSizeText(
                                                    'Aayushshah',
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 50,
                                        child: Tab(
                                          child: Container(
                                            height: 100,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),

                                              // color: Colors.blue,
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              // mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.black54,
                                                  maxRadius: 20,
                                                  minRadius: 20,
                                                  child: Icon(
                                                    Icons.sunny,
                                                    color: Colors.yellow,
                                                    size: 20,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 5),
                                                  child: AutoSizeText(
                                                    'Aayushshah',
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 50,
                                        child: Tab(
                                          child: Container(
                                            height: 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),

                                              // color: Colors.blue,
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              // mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.black54,
                                                  maxRadius: 20,
                                                  minRadius: 20,
                                                  child: Icon(
                                                    Icons.sunny,
                                                    color: Colors.yellow,
                                                    size: 20,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 5),
                                                  child: AutoSizeText(
                                                    'Aayushshah',
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 50,
                                        child: Tab(
                                          child: Container(
                                            height: 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),

                                              // color: Colors.blue,
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              // mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.black54,
                                                  maxRadius: 20,
                                                  minRadius: 20,
                                                  child: Icon(
                                                    Icons.sunny,
                                                    color: Colors.yellow,
                                                    size: 20,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 5),
                                                  child: AutoSizeText(
                                                    'Aayushshah',
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 50,
                                        child: Tab(
                                          child: Container(
                                            height: 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),

                                              // color: Colors.blue,
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              // mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.black54,
                                                  maxRadius: 20,
                                                  minRadius: 20,
                                                  child: Icon(
                                                    Icons.sunny,
                                                    color: Colors.yellow,
                                                    size: 20,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 5),
                                                  child: AutoSizeText(
                                                    'Aayushshah',
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                              ),
                              Expanded(
                                child: TabBarView(
                                  children: <Widget>[
                                    appBody(),
                                    Center(
                                      child: Icon(Icons.directions_car),
                                    ),
                                    Center(
                                      child: Icon(Icons.directions_car),
                                    ),
                                    Center(
                                      child: Icon(Icons.directions_transit),
                                    ),
                                    Center(
                                      child: Icon(Icons.directions_bike),
                                    ),
                                    Center(
                                      child: Icon(Icons.directions_bike),
                                    ),
                                    Center(
                                      child: Icon(Icons.directions_bike),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget appBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular Events',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [
                      Column(
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Image(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max'),
                              fit: BoxFit.contain,
                            ),
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                      Positioned(
                        right: MediaQuery.of(context).size.width * 0.05,
                        // left: 335,
                        bottom: 15,
                        child: SimpleShadow(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedColor[index] == Colors.black
                                    ? Colors.red
                                    : Colors.black;
                              });
                            },
                            child: CircleAvatar(
                              // shape: RoundedRectangleBorder(
                              //     borderRadius: new BorderRadius.circular(30.0)),
                              // onPressed: () {
                              //   print('Print');
                              //   setState(() {
                              //     selectedColor = Colors.red;
                              //   });
                              // },
                              child: Icon(
                                FontAwesomeIcons.heart,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
