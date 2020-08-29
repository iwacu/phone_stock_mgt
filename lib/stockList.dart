import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:phone_stock_mgt/overlay.dart';
import 'package:phone_stock_mgt/sizeconfig.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  OverlaySheet overlaySheet = new OverlaySheet();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CircleAvatar(
        radius: 7.8 * Responsive.widthMultiplier,
        backgroundColor: Color(0xFF63cb99),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
             margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                   Padding(
            padding: EdgeInsets.only(
              top: 1.8 * Responsive.imageSizeMultiplier,
              left: 6 * Responsive.imageSizeMultiplier,
            ),
            child: IconButton(
              icon:Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);
              },
              color: Colors.grey[500],
            ),
        ),
              
                    GestureDetector(
                      onTap: (){print('hello');},
                                        child: Padding(
              padding: EdgeInsets.only(
                top: 1.8 * Responsive.imageSizeMultiplier,
                right: 6 * Responsive.imageSizeMultiplier,
              ),
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.indigo[500],
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.indigo,
                        width: 0.25 * Responsive.imageSizeMultiplier,
                      ),
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(2.6 * Responsive.imageSizeMultiplier),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 4.5 * Responsive.imageSizeMultiplier,
                      ),
                  ),
                ),
              ),
            ),
                    ),
                  ],
                ),
          ),
      
     
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 20),
            height: 520,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 220,
                      height: 120,
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.yellow, offset: Offset(-7, 7))
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircularPercentIndicator(
                              radius: 75,
                              lineWidth: 3,
                              percent: 0.69,
                              progressColor: Color(0xfffdd329),
                              backgroundColor: Color(0xffe5e5e5),
                              center: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '69',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '%',
                                    textAlign: TextAlign.end,
                                  )
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Internal\nStorage',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '24.2 Gb / 28.0 Gb',
                                  style: TextStyle(fontSize: 11),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    RotatedBox(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        margin: EdgeInsets.only(left: 40),
                        alignment: Alignment.center,
                        width: 80,
                        height: 40,
                        child: Text(
                          'Analyze',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      quarterTurns: 1,
                    )
                  ],
                ),
                 Padding(
                  padding: EdgeInsets.only(
                top: 6 * Responsive.imageSizeMultiplier,
                left: 6 * Responsive.imageSizeMultiplier,
                right: 6 * Responsive.imageSizeMultiplier,
              ),
                   child: Row(
                children: <Widget>[
                    Text(
                      "Muhima ",
                      style: TextStyle(
                        fontSize: 3.4 * Responsive.textMultiplier,
                      ),
                    ),
                   
                    Text(
                      "(stock)",
                      style: TextStyle(
                        fontSize: 1.4 * Responsive.textMultiplier,
                      ),
                    ),
                ],
              ),
                 ),
                Expanded(
                    child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(9, (index) {
                    switch (index) {
                      case 0:
                        return GestureDetector(
                          onTap: (){
                            print('hellllo');
                          },
                                                  child: Container(
                            margin: EdgeInsets.only(top: 30, left: 40),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                 // width: 70,
                                  height: 70,
                                  child: Image.asset('assets/infinixnote7lite.jpg',fit: BoxFit.fill),
                                  decoration: BoxDecoration(
                                    //  image: DecorationImage(fit: BoxFit.cover,image: ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20))),
                                ),
                                Expanded(child: Text('note7lite'))
                              ],
                            ),
                          ),
                        );
                        break;
                      case 1:
                        return Container(
                          margin: EdgeInsets.only(top: 30, left: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                               // width: 70,
                                height: 70,
                                child: Image.asset('assets/infinixs5.jpg',fit: BoxFit.fill),
                                decoration: BoxDecoration(
                                    
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Text('s5')
                            ],
                          ),
                        );
                        break;
                      case 2:
                        return Container(
                          margin: EdgeInsets.only(top: 30, left: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                               // width: 70,
                                height: 70,
                                child: Image.asset('assets/infinixnote7lite.jpg',fit: BoxFit.fill),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Text('Note_7lite')
                            ],
                          ),
                        );
                        break;
                      case 3:
                            return Container(
                            margin: EdgeInsets.only(top: 30, left: 40),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                 // width: 70,
                                  height: 70,
                                  child: Image.asset('assets/infinixnote7lite.jpg',fit: BoxFit.fill),
                                  decoration: BoxDecoration(
                                    //  image: DecorationImage(fit: BoxFit.cover,image: ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20))),
                                ),
                                Expanded(child: Text('note7lite'))
                              ],
                            ),
                          );
                        break;
                      case 4:
                        return Container(
                          margin: EdgeInsets.only(top: 30, left: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                               // width: 70,
                                height: 70,
                                child: Image.asset('assets/infinixnote7lite.jpg',fit: BoxFit.fill),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Text('Note_7lite')
                            ],
                          ),
                        );
                        break;
                      case 5:
                         return Container(
                          margin: EdgeInsets.only(top: 30, left: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                               // width: 70,
                                height: 70,
                                child: Image.asset('assets/infinixnote7lite.jpg',fit: BoxFit.fill),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Text('Note_7lite')
                            ],
                          ),
                        );
                       break;
                      case 6:
                     return Container(
                            margin: EdgeInsets.only(top: 30, left: 40),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                 // width: 70,
                                  height: 70,
                                  child: Image.asset('assets/infinixnote7lite.jpg',fit: BoxFit.fill),
                                  decoration: BoxDecoration(
                                    //  image: DecorationImage(fit: BoxFit.cover,image: ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20))),
                                ),
                                Expanded(child: Text('note7lite'))
                              ],
                            ),
                          );
                               break;
                      case 7:
                       return Container(
                            margin: EdgeInsets.only(top: 30, left: 40),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                 // width: 70,
                                  height: 70,
                                  child: Image.asset('assets/infinixnote7lite.jpg',fit: BoxFit.fill),
                                  decoration: BoxDecoration(
                                    //  image: DecorationImage(fit: BoxFit.cover,image: ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20))),
                                ),
                                Expanded(child: Text('note7lite'))
                              ],
                            ),
                          );
                             break;
                      case 8:
                        return Container(
                          margin: EdgeInsets.only(top: 30, left: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                               // width: 70,
                                height: 70,
                                child: Image.asset('assets/infinixnote7lite.jpg',fit: BoxFit.fill),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                              ),
                              Text('Note_7lite')
                            ],
                          ),
                        );
                 
                         break;
                    }
                  }),
                ))
              ],
            ),
          ),
          // GestureDetector(
          //   onTap: ()=> overlaySheet.showOverlaySheet(context),
          //   child: BottomAppBar(
          //     child: Container(
          //       height: 100,
          //       padding: EdgeInsets.all(30),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: <Widget>[
          //           Expanded(
          //             flex: 0,
          //             child: RaisedButton(
          //               child: Text(
          //                 'Home',
          //                 style:
          //                     TextStyle(fontSize: 15, color: Color(0xfffcb127)),
          //               ),
          //               elevation: 0,
          //               shape: RoundedRectangleBorder(
          //                   borderRadius:
          //                       BorderRadius.all(Radius.circular(20))),
          //               onPressed: () {},
          //             ),
          //           ),
          //           IconButton(
          //             icon: Icon(Icons.timer),
          //             color: Colors.black,
          //             iconSize: 30,
          //             onPressed: () {
                       
          //             },
          //           ),
          //           IconButton(
          //             icon: Icon(Icons.folder),
          //             color: Colors.black,
          //             iconSize: 30,
          //             onPressed: () {
                       
          //             },
          //           ),
          //           IconButton(
          //             icon: Icon(Icons.short_text),
          //             color: Colors.black,
          //             iconSize: 30,
          //             onPressed: () {
                       
          //             },
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // )
   
        ],
      ),
    );
  }}

 