import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_ui/theme/colors.dart' as Style;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CollectionSection extends StatelessWidget {
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
            "Collections",
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
          height: 161,
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
                    height: 161,
                    width: 319,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/collections_img.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 30,
                        top: 20,
                      ),
                      width: 319,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Electronica Next Month",
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
                                    "Electronica",
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
                  Positioned(
                    bottom: 30,
                    left: 30,
                    child: Row(
                      children: [
                        Text(
                          "Learn More",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          EvaIcons.arrowheadRightOutline,
                          color: Colors.white,
                          size: 15,
                        ),
                      ],
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
