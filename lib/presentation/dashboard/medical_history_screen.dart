import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medexer/components/buttons/custom_back_button.dart';
import 'package:medexer/components/cards/medical_history_card.dart';
import 'package:medexer/components/skeletons/empty_results_content.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/providers/index.dart';

class MedicalHistoryScreen extends StatefulWidget {
  const MedicalHistoryScreen({super.key});

  @override
  State<MedicalHistoryScreen> createState() => _MedicalHistoryScreenState();
}

class _MedicalHistoryScreenState extends State<MedicalHistoryScreen> {
  Future<void> initializeMedicalHistory() async {
    ServiceRegistry.accountService.fetchMedicalHistoryService();
  }

  @override
  void initState() {
    initializeMedicalHistory();

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
                  title: 'Medical History',
                ),
                const SizedBox(),
              ],
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: initializeMedicalHistory,
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
                      ServiceRegistry.userRepository.medicalHistory.isEmpty
                          ? const EmptyResultsContent(
                              displayType: 'MEDICAL_HISTORY',
                            )
                          : ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: ServiceRegistry
                                  .userRepository.medicalHistory.length,
                              itemBuilder: (context, index) {
                                return MedicalHistoryCard(
                                  medicalHistory: ServiceRegistry
                                      .userRepository.medicalHistory[index],
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
