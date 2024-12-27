import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

class AppointmentsScreen extends StatefulWidget {
  const AppointmentsScreen({super.key});

  @override
  State<AppointmentsScreen> createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  String appointmentType = 'Ongoing';

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> initializeAppointments() async {
    ServiceRegistry.donorService.fetchAppointmentsService();
  }

  @override
  void initState() {
    super.initState();
    initializeAppointments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(scaffoldKey: scaffoldKey),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(95),
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
                    InkWell(
                      onTap: () {
                        scaffoldKey.currentState?.openDrawer();
                      },
                      child: Center(
                        child: Icon(Icons.menu),
                      ),
                    ),
                    TitleText(
                      size: 16,
                      title: 'Appointments',
                    ),
                    const SizedBox(),
                  ],
                ),
                const SizedBox(height: AppSizes.vertical_5),
                GroupedHeaderButtons(
                  currentItem: appointmentType,
                  buttonTypes: appointmentTypes,
                  onChangeHandler: (String value) {
                    log('[UPDATE-VIEW-APPOINTMENTS-TYPE] -> ${value.toUpperCase()}');

                    setState(() {
                      appointmentType = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: initializeAppointments,
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
                        appointmentType == 'Ongoing'
                            ? ServiceRegistry
                                    .userRepository.ongoingAppointments.isEmpty
                                ? const EmptyResultsContent(
                                    displayType: 'ONGOING_APPOINTMENTS',
                                  )
                                : ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: ServiceRegistry.userRepository
                                        .ongoingAppointments.length,
                                    itemBuilder: (context, index) {
                                      return OngoingAppointmentCard(
                                        appointment: ServiceRegistry
                                            .userRepository
                                            .ongoingAppointments[index],
                                      );
                                    })
                            : ServiceRegistry.userRepository
                                    .completedAppointments.isEmpty
                                ? const EmptyResultsContent(
                                    displayType: 'COMPLETED_APPOINTMENTS',
                                  )
                                : ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: ServiceRegistry.userRepository
                                        .completedAppointments.length,
                                    itemBuilder: (context, index) {
                                      return CompletedAppointmentCard(
                                        appointment: ServiceRegistry
                                            .userRepository
                                            .completedAppointments[index],
                                      );
                                    })
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
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
