import 'dart:convert';
import 'package:flutter/material.dart';

typedef BimStringsData = ({
  String appBarTitle,
  String profileTitle,
  String profileName,
  String locationTitle,
  String locationName,
  String aboutLeading,
  String aboutTrailing,
  String aboutContents,
  String heroContent,
  String heroButton,
  String experienceTitle,
  String experienceSubtitle,
  String projectTitle,
  String projectSubtitle,
  String clientTitle,
  String clientSubtitle,
  String uiTitleLeading,
  String uiTitleTrailing,
  String actionCard
});

class BimStrings {
  BimStrings._();
  static BimStrings instance = BimStrings._();
  late BimStringsData strings;
  Future<void> loadStrings(BuildContext context) async {
    final jsonString = await DefaultAssetBundle.of(context)
        .loadString('assets/json/portfolio_details.json');
    final Map decodedJsonString = jsonDecode(jsonString);

    if (decodedJsonString
        case {
          'app_bar_title': String appBarTitle,
          'profile': {
            'name': {
              'title': String profileTitle,
              'content': String profileName,
            },
            'location': {
              'title': String locationTitle,
              'content': String locationName,
            }
          },
          'about': {
            'title_leading': String aboutLeading,
            'title_trailing': String aboutTrailing,
            'content': String aboutContents
          },
          'hero': {
            'main_content': String heroContent,
            'action_button': String heroButton
          },
          'stats': {
            'experience': {
              'title': String experienceTitle,
              'subtitle': String experienceSubtitle
            },
            'projects': {
              'title': String projectTitle,
              'subtitle': String projectSubtitle
            },
            'clients': {
              'title': String clientTitle,
              'subtitle': String clientSubtitle
            },
          },
          'ui_portfolio': {
            'title_leading': String uiTitleLeading,
            'title_trailing': String uiTitleTrailing,
            'action_card': String actionCard
          }
        }) {
      strings = (
        appBarTitle: appBarTitle,
        profileTitle: profileTitle,
        profileName: profileName,
        locationTitle: locationTitle,
        locationName: locationName,
        aboutLeading: aboutLeading,
        aboutTrailing: aboutTrailing,
        aboutContents: aboutContents,
        heroContent: heroContent,
        heroButton: heroButton,
        experienceTitle: experienceTitle,
        experienceSubtitle: experienceSubtitle,
        projectTitle: projectTitle,
        projectSubtitle: projectSubtitle,
        clientTitle: clientTitle,
        clientSubtitle: clientSubtitle,
        uiTitleLeading: uiTitleLeading,
        uiTitleTrailing: uiTitleTrailing,
        actionCard: actionCard
      );
    } else {
      throw Exception('Unable to retrieve data!');
    }
  }
}
