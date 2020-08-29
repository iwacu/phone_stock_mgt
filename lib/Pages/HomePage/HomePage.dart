import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:phone_stock_mgt/Pages/constant/sizeconfig.dart';
import 'package:phone_stock_mgt/Pages/store/StoreDetails.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sizing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //top app_bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        //app_bar icon menu
        leading: Icon(
          Icons.menu,
          color: Colors.grey[700],
        ),
        actions: <Widget>[
          //person_icon
          Padding(
            padding: EdgeInsets.only(
              top: 1.8 * Responsive.imageSizeMultiplier,
              right: 6 * Responsive.imageSizeMultiplier,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.indigo[100],
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
                  color: Colors.indigo,
                  size: 4.5 * Responsive.imageSizeMultiplier,
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 6 * Responsive.imageSizeMultiplier,
                left: 6 * Responsive.imageSizeMultiplier,
                right: 6 * Responsive.imageSizeMultiplier,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    "Overview",
                    style: TextStyle(
                      fontSize: 3.4 * Responsive.textMultiplier,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "(sales)",
                    style: TextStyle(
                      fontSize: 1.4 * Responsive.textMultiplier,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6 * Responsive.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 6 * Responsive.imageSizeMultiplier,
              ),
              child: Row(
                children: <Widget>[
                  //percent_indicators_circles
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      _circleChart(40, 83.33, 56.67, color: Colors.indigo[300]),
                      _circleChart(28, 83.33, 56.67, color: Colors.teal[300]),
                      _circleChart(18, 63.33, 36.67, color: Colors.amber[300]),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 42 * Responsive.widthMultiplier,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _filePercent("Gishushu", "56%", Colors.indigo),
                        _filePercent("Musanze", "32%", Colors.teal),
                        _filePercent("Muhanga", "12%", Colors.amber),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 6 * Responsive.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 2 * Responsive.imageSizeMultiplier,
                left: 6 * Responsive.imageSizeMultiplier,
                right: 6 * Responsive.imageSizeMultiplier,
              ),
              child: Text(
                "Stores",
                style: TextStyle(
                  fontSize: 3.4 * Responsive.textMultiplier,
                ),
              ),
            ),
            Container(
              height: 40 * Responsive.heightMultiplier,
              //sotres_listview
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: 6 * Responsive.imageSizeMultiplier),
                    child: _mediaStack(
                      "assets/image.png",
                      Colors.green[100],
                      "Gishushu",
                      "682 items",
                      "Private Folder",
                      Colors.indigo,
                      Icon(
                        Icons.lock_outline,
                        color: Colors.green[500],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5 * Responsive.widthMultiplier,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 6 * Responsive.imageSizeMultiplier),
                    child: _mediaStack(
                      "assets/image.png",
                      Colors.green[100],
                      "Musanze",
                      "682 items",
                      "Private Folder",
                      Colors.green[200],
                      Icon(
                        Icons.lock_outline,
                        color: Colors.green[500],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5 * Responsive.widthMultiplier,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StoreDetails()),
                      );
                    },
                    child: _mediaStack(
                        "assets/video.png",
                        Colors.amber[100],
                        "Muhanga",
                        "78 items",
                        "Public Folder",
                        Colors.amber[200],
                        Icon(
                          Icons.lock_open,
                          color: Colors.amber[500],
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4 * Responsive.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 6 * Responsive.widthMultiplier,
                left: 6 * Responsive.widthMultiplier,
                bottom: 2 * Responsive.heightMultiplier,
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 6 * Responsive.heightMultiplier,
                  ),
                  Text(
                    "Latest Sales",
                    style: TextStyle(fontSize: 3.4 * Responsive.textMultiplier),
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_horiz,
                    size: 6 * Responsive.imageSizeMultiplier,
                    color: Colors.green[500],
                  ),
                ],
              ),
            ),
            _mediaListItem("Podcast with Brenda Evans", Colors.amber[500],
                Colors.amber[100], "32Mb March 14, 2021", Icons.library_music),
            _mediaListItem(
              "Payouts for 2021",
              Colors.indigo[500],
              Colors.indigo[100],
              "98Kb March 12, 2021",
              Icons.insert_drive_file,
            ),
          ],
        ),
      ),
    );
  }

  //latest sales widget
  Widget _mediaListItem(
      String title, Color icon, Color accent, String meta, IconData mediaIcon) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 2 * Responsive.heightMultiplier,
        left: 6 * Responsive.widthMultiplier,
      ),
      child: Row(
        children: <Widget>[
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: accent,
                borderRadius: BorderRadius.circular(6.8),
              ),
              child: Padding(
                padding: EdgeInsets.all(3 * Responsive.imageSizeMultiplier),
                child: Icon(
                  mediaIcon,
                  size: 6 * Responsive.imageSizeMultiplier,
                  color: icon,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0 * Responsive.widthMultiplier),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 2.3 * Responsive.textMultiplier,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  height: 0.5 * Responsive.heightMultiplier,
                ),
                Text(
                  meta,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 1.8 * Responsive.textMultiplier,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //store_listview_widget
  Widget _mediaStack(String image, Color color, String media, String items,
      String privacy, Color shadow, Icon lock) {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.8,
          child: Container(
            height: 40 * Responsive.heightMultiplier,
            width: 55 * Responsive.widthMultiplier,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
        ),
        Positioned(
          top: 5 * Responsive.heightMultiplier,
          left: 6 * Responsive.widthMultiplier,
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              new BoxShadow(
                color: shadow,
                offset: Offset(2.0, 5.0),
                blurRadius: 10.0,
              ),
            ]),
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                image,
                height: 12 * Responsive.imageSizeMultiplier,
              ),
            ),
          ),
        ),
        Positioned(
          top: 22 * Responsive.heightMultiplier,
          left: 6 * Responsive.widthMultiplier,
          child: Column(
            children: <Widget>[
              Text(
                media,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[800],
                  fontSize: 3.4 * Responsive.textMultiplier,
                ),
              ),
              SizedBox(
                height: 1 * Responsive.heightMultiplier,
              ),
              Text(
                items,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[700],
                  fontSize: 2.2 * Responsive.textMultiplier,
                ),
              ),
              SizedBox(
                height: 2 * Responsive.heightMultiplier,
              ),
            ],
          ),
        ),
        Positioned(
          top: 32 * Responsive.heightMultiplier,
          left: 2 * Responsive.widthMultiplier,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 4 * Responsive.widthMultiplier),
                child: lock,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _filePercent(String name, String percent, Color color) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(3 * Responsive.imageSizeMultiplier),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: color,
                radius: 1 * Responsive.imageSizeMultiplier,
              ),
            ],
          ),
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.w400,
          ),
        ),
        Spacer(),
        Text(
          percent,
          style: TextStyle(
            color: Colors.grey[600],
            letterSpacing: 0.25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  //circleChart
  Widget _circleChart(double sizing, double complete, double incomplete,
      {Color color}) {
    return AnimatedCircularChart(
      size: Size(sizing * Responsive.imageSizeMultiplier, 0.0),
      initialChartData: <CircularStackEntry>[
        new CircularStackEntry(
          <CircularSegmentEntry>[
            new CircularSegmentEntry(
              complete,
              color,
              rankKey: 'completed',
            ),
            new CircularSegmentEntry(
              complete,
              Colors.grey[100],
              rankKey: 'remaining',
            ),
          ],
          rankKey: 'progress',
        ),
      ],
      chartType: CircularChartType.Radial,
      edgeStyle: SegmentEdgeStyle.round,
      percentageValues: true,
    );
  }
}
