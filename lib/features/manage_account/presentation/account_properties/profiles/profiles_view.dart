
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmail_ui_user/features/manage_account/presentation/account_properties/profiles/identities/identities_view.dart';
import 'package:tmail_ui_user/features/manage_account/presentation/account_properties/profiles/profiles_controller.dart';
import 'package:tmail_ui_user/main/localizations/app_localizations.dart';

class ProfilesView extends GetWidget<ProfilesController> {

  final _responsiveUtils = Get.find<ResponsiveUtils>();

  ProfilesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _responsiveUtils.isDesktop(context) ? AppColor.colorBgDesktop : Colors.white,
      body: Container(
        margin: _responsiveUtils.isDesktop(context)
          ? const EdgeInsets.only(left: 48, right: 24, top: 24, bottom: 24)
          : EdgeInsets.zero,
        decoration: BoxDecoration(
            borderRadius: _responsiveUtils.isDesktop(context) ? BorderRadius.circular(20) : null,
            border: _responsiveUtils.isDesktop(context) ? Border.all(color: AppColor.colorBorderBodyThread, width: 1) : null,
            color: Colors.white),
        padding: const EdgeInsets.all(10),
        child: DefaultTabController(
            initialIndex: 0,
            length: 1,
            child: Scaffold(
              appBar: TabBar(
                  unselectedLabelColor: AppColor.colorTextButtonHeaderThread,
                  unselectedLabelStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: AppColor.colorTextButtonHeaderThread),
                  labelStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: AppColor.primaryColor),
                  labelColor: AppColor.primaryColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicator: const CustomIndicator(
                    indicatorHeight: 4,
                    indicatorColor: AppColor.primaryColor,
                    indicatorSize: CustomIndicatorSize.full),
                  onTap: (index) {},
                  tabs: [
                    Tab(text: AppLocalizations.of(context).identities),
                  ]),
              body: TabBarView(
                children: [
                  IdentitiesView(),
                ],
              ),
            )
        ),
      ),
    );
  }
}