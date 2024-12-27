import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/buttons/custom_back_button.dart';
import 'package:medexer/components/cards/donation_center_card.dart';
import 'package:medexer/components/skeletons/empty_results_content.dart';

class DonationCentersScreen extends StatefulWidget {
  const DonationCentersScreen({super.key});

  @override
  State<DonationCentersScreen> createState() => _DonationCentersScreenState();
}

class _DonationCentersScreenState extends State<DonationCentersScreen> {
  Future<void> initializeDonationCenters() async {
    ServiceRegistry.donorService.fetchDonationCentersService();
  }

  @override
  initState() {
    initializeDonationCenters();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: SafeArea(
          child: Container(
            // color: Colors.amber,
            height: double.maxFinite,
            padding: EdgeInsets.symmetric(
              // top: AppSizes.vertical_5,
              horizontal: AppSizes.horizontal_15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackButton(
                    // callBackFunction: () {
                    //   ServiceRegistry
                    //       .userRepository.donationCenterInfoAppointmentAvailability
                    //       .clear();

                    //   Get.back();
                    // },
                    ),
                TitleText(
                  size: 16,
                  title: 'Donation Centers',
                ),
                const SizedBox(),
              ],
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: initializeDonationCenters,
        child: LayoutBuilder(builder: (context, constraints) {
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
                      const SizedBox(height: AppSizes.vertical_5),
                      ServiceRegistry.userRepository.donationCenters.isEmpty
                          ? const EmptyResultsContent(
                              displayType: 'DONATION_CENTERS',
                            )
                          : ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: ServiceRegistry
                                  .userRepository.donationCenters.length,
                              itemBuilder: (context, index) {
                                return DonationCenterCard(
                                  donationCenter: ServiceRegistry.userRepository
                                      .donationCenters[index],
                                );
                              },
                            ),
                      const SizedBox(height: AppSizes.vertical_40),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
