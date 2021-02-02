import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ticket_ui/ui/container/bloc/container_bloc.dart';
import 'package:flutter_ticket_ui/ui/container/widgets/home_app_bar.dart';
import 'package:flutter_ticket_ui/ui/container/widgets/search_app_bar.dart';
import 'package:flutter_ticket_ui/ui/home/home_page.dart';
import 'package:flutter_ticket_ui/ui/profile/profile_page.dart';
import 'package:flutter_ticket_ui/ui/search/search_page.dart';
import 'package:flutter_ticket_ui/ui/ticket/ticket_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_ticket_ui/theme/colors.dart' as Style;
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ContainerPage extends StatefulWidget {
  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  PersistentTabController _controller;

  @override
  void initState() {
    super.initState();

    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContainerBloc(),
      child: BlocBuilder<ContainerBloc, ContainerState>(
        builder: (blocContext, blocState) {
          return Scaffold(
            key: _scaffoldKey,
            appBar: appBar(blocState),
            body: PersistentTabView(
              context,
              controller: _controller,
              screens: <Widget>[
                HomePage(),
                SearchPage(),
                TicketPage(),
                ProfilePage(),
              ],
              items: <PersistentBottomNavBarItem>[
                PersistentBottomNavBarItem(
                  icon: Icon(EvaIcons.homeOutline),
                  title: "Home",
                  activeColor: Style.Colors.primaryColor,
                  inactiveColor: Style.Colors.secondTextColor,
                ),
                PersistentBottomNavBarItem(
                  icon: Icon(EvaIcons.searchOutline),
                  title: "Search",
                  activeColor: Style.Colors.primaryColor,
                  inactiveColor: Style.Colors.secondTextColor,
                ),
                PersistentBottomNavBarItem(
                  icon: Icon(FontAwesomeIcons.ticketAlt),
                  title: "Ticket",
                  activeColor: Style.Colors.primaryColor,
                  inactiveColor: Style.Colors.secondTextColor,
                ),
                PersistentBottomNavBarItem(
                  icon: Icon(EvaIcons.personOutline),
                  title: "Profile",
                  activeColor: Style.Colors.primaryColor,
                  inactiveColor: Style.Colors.secondTextColor,
                ),
              ],
              confineInSafeArea: true,
              backgroundColor: Colors.white,
              handleAndroidBackButtonPress: true,
              resizeToAvoidBottomInset: true,
              stateManagement: true,
              hideNavigationBarWhenKeyboardShows: true,
              decoration: NavBarDecoration(
                borderRadius: BorderRadius.circular(10.0),
                colorBehindNavBar: Colors.white,
              ),
              popAllScreensOnTapOfSelectedTab: true,
              popActionScreens: PopActionScreensType.all,
              itemAnimationProperties: ItemAnimationProperties(
                duration: Duration(milliseconds: 200),
                curve: Curves.ease,
              ),
              screenTransitionAnimation: ScreenTransitionAnimation(
                animateTabTransition: true,
                curve: Curves.ease,
                duration: Duration(milliseconds: 200),
              ),
              navBarStyle: NavBarStyle.neumorphic,
              onItemSelected: (index) {
                switch (index) {
                  case 0:
                    BlocProvider.of<ContainerBloc>(blocContext)
                        .add(HomeEvent());
                    break;
                  case 1:
                    BlocProvider.of<ContainerBloc>(blocContext)
                        .add(SearchEvent());
                    break;
                  case 2:
                    BlocProvider.of<ContainerBloc>(blocContext)
                        .add(TicketEvent());
                    break;
                  case 3:
                    BlocProvider.of<ContainerBloc>(blocContext)
                        .add(ProfileEvent());
                    break;
                  default:
                    break;
                }
              },
            ),
          );
        },
      ),
    );
  }

  Widget appBar(blocState) {
    if (blocState is HomeSate) {
      return HomeAppBar();
    } else if (blocState is SearchState) {
      return SearchAppBar();
    } else if (blocState is ContainerInitial) {
      return HomeAppBar();
    } else {
      return null;
    }
  }
}
