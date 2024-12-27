import 'package:flutter/material.dart';
import 'package:medexer/components/navigation/custom_bottom_navigation_bar.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/components/badges/dexer_icon_badge.dart';
import 'package:medexer/components/navigation/custom_side_drawer.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/presentation/dashboard/subscreens/home/default_map_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(scaffoldKey: scaffoldKey),
      body: SafeArea(
        child: SizedBox(
          height: AppSizes.screenHeight(context),
          child: Stack(
            children: [
              DefaultMapView(),
              Positioned(
                top: 0,
                width: AppSizes.screenWidth(context),
                child: SafeArea(
                  child: Container(
                    padding: EdgeInsets.only(
                      top: AppSizes.vertical_10,
                      left: AppSizes.horizontal_15,
                      right: AppSizes.horizontal_15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            scaffoldKey.currentState?.openDrawer();
                          },
                          child: Container(
                            padding: EdgeInsets.all(AppSizes.horizontal_10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: AppColors.grayLightColor,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: Icon(Icons.menu),
                            ),
                          ),
                        ),
                        DexerIconBadge(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: (int value) {
          ServiceRegistry.commonRepository.currentScreenIndex.value = value;
        },
        currentPage: ServiceRegistry.commonRepository.currentScreenIndex.value,
      ),
    );
  }
}
