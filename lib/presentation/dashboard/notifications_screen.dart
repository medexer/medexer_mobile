import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medexer/components/cards/notification_card.dart';
import 'package:medexer/components/skeletons/empty_results_content.dart';
import 'package:medexer/core/constants/sizes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/components/text/title_text.dart';
import 'package:medexer/components/navigation/custom_side_drawer.dart';
import 'package:medexer/components/navigation/custom_bottom_navigation_bar.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> initializeNotifications() async {
    ServiceRegistry.accountService.fetchNotificationsService();
  }

  @override
  void initState() {
    initializeNotifications();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(scaffoldKey: scaffoldKey),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: SafeArea(
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
                      title: 'Notifications',
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
        onRefresh: initializeNotifications,
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
                        ServiceRegistry.userRepository.notifications.isEmpty
                            ? const EmptyResultsContent(
                                displayType: 'NOTIFICATIONS',
                              )
                            : ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: ServiceRegistry
                                    .userRepository.notifications.length,
                                itemBuilder: (context, index) {
                                  return NotificationCard(
                                    notification: ServiceRegistry
                                        .userRepository.notifications[index],
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
