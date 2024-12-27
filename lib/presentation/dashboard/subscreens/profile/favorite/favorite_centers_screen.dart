import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medexer/components/buttons/custom_back_button.dart';
import 'package:medexer/components/cards/donation_center_card.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/utilities/index.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/navigation/custom_side_drawer.dart';
import 'package:medexer/components/buttons/grouped_header_buttons.dart';
import 'package:medexer/components/cards/ongoing_appointment_card.dart';
import 'package:medexer/components/cards/completed_appointment_card.dart';
import 'package:medexer/components/skeletons/empty_results_content.dart';
import 'package:medexer/components/navigation/custom_bottom_navigation_bar.dart';

class FavoriteCentersScreen extends StatefulWidget {
  const FavoriteCentersScreen({super.key});

  @override
  State<FavoriteCentersScreen> createState() => _FavoriteCentersScreenState();
}

class _FavoriteCentersScreenState extends State<FavoriteCentersScreen> {
  String appointmentType = 'Ongoing';

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> initializeFavoriteCenters() async {
    ServiceRegistry.donorService.fetchFavoriteCentersService();
  }

  @override
  void initState() {
    super.initState();

    initializeFavoriteCenters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(scaffoldKey: scaffoldKey),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: SafeArea(
          // padding: MediaQuery.of(context).padding,
          child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            padding: const EdgeInsets.only(
              top: AppSizes.vertical_5,
              left: AppSizes.horizontal_15,
              right: AppSizes.horizontal_15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBackButton(),
                    TitleText(
                      size: 16,
                      title: 'Favorite Centers',
                    ),
                    const SizedBox(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: initializeFavoriteCenters,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Obx(
                  () => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.horizontal_15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ServiceRegistry
                                .userRepository.favoriteDonationCenters.isEmpty
                            ? const EmptyResultsContent(
                                displayType: 'FAVORITE_CENTERS',
                              )
                            : ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: ServiceRegistry.userRepository
                                    .favoriteDonationCenters.length,
                                itemBuilder: (context, index) {
                                  return DonationCenterCard(
                                    donationCenter: ServiceRegistry
                                        .userRepository
                                        .favoriteDonationCenters[index],
                                  );
                                }),
                        const SizedBox(height: AppSizes.vertical_40),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
