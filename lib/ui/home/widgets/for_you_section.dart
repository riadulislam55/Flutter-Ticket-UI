import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_ui/theme/colors.dart' as Style;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForYouSection extends StatefulWidget {
  @override
  _ForYouSectionState createState() => _ForYouSectionState();
}

class _ForYouSectionState extends State<ForYouSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 20,
          ),
          child: Text(
            "For You",
            style: TextStyle(
              color: Style.Colors.primaryTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          height: 256,
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: 256,
                    width: 327,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/for_you_img.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 24,
                    child: Icon(
                      EvaIcons.closeCircle,
                      color: Colors.blueGrey[900],
                      size: 40,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: Container(
                      padding: EdgeInsets.all(30),
                      width: 327,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "FRIDAY AUG 24, 9PM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Brightlight Music Festival",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    EvaIcons.musicOutline,
                                    color: Style.Colors.secondTextColor,
                                    size: 12,
                                  ),
                                  Text(
                                    "Indian Rock",
                                    style: TextStyle(
                                      color: Style.Colors.secondTextColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.ticketAlt,
                                    color: Style.Colors.secondTextColor,
                                    size: 12,
                                  ),
                                  Text(
                                    " \$40 - \$90",
                                    style: TextStyle(
                                      color: Style.Colors.secondTextColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
