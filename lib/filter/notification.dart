import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        title: Column(
          children: [
            SizedBox(height: 10),
            Text(
              'Notifications',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Row(
            children: [
              SizedBox(width: 10),
              Container(
                height: 36,
                width: 36,
                child: IconButton(
                  splashRadius: 2,
                  iconSize: 20,
                  padding: EdgeInsets.only(),
                  icon: Icon(Icons.arrow_back_ios_new),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Theme.of(context).primaryColor,
                ),
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 97,
                  margin: EdgeInsets.only(right: 16, left: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 30,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ]),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 20),
                      Container(
                        height: 57,
                        width: 57,
                        child: Stack(
                          children: [
                            Image.asset('assets/img/done_noti.png'),
                            Positioned(
                              top: 10,
                              left: 12,
                              child: Icon(
                                Icons.done_rounded,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Your order is completed!',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '20.0',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF858C94),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 97,
                  margin: EdgeInsets.only(right: 16, left: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 30,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ]),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 20),
                      Container(
                        height: 57,
                        width: 57,
                        child: Stack(
                          children: [
                            Image.asset('assets/img/done_noti.png'),
                            Positioned(
                              top: 10,
                              left: 12,
                              child: Icon(
                                Icons.done_rounded,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Your order is completed!',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '16.0',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF858C94),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 97,
                  margin: EdgeInsets.only(right: 16, left: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 30,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ]),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 20),
                      Container(
                        height: 57,
                        width: 57,
                        child: Stack(
                          children: [
                            Image.asset('assets/img/done_noti_y.png'),
                            Positioned(
                              top: 10,
                              left: 12,
                              child: Icon(
                                Icons.attach_money,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'You received 200 points',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '14.0',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF858C94),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //     color: Colors.white.withOpacity(0.5),
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.black.withOpacity(0.1),
      //         spreadRadius: 2,
      //         blurRadius: 5,
      //       ),
      //     ],
      //   ),
      //   height: 110,
      //   width: 380,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         height: 50,
      //         width: 360,
      //         child: ElevatedButton(
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //           child: Text(
      //             "<  Back",
      //             style: TextStyle(color: Theme.of(context).primaryColor),
      //           ),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(100),
      //             ),
      //             side: BorderSide(
      //                 width: 2, color: Theme.of(context).primaryColor),
      //             backgroundColor: Colors.white,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
