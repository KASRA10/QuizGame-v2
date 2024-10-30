// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import './my_alerts.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          shadowColor: Colors.grey.shade900,
          elevation: 15.0,
          toolbarHeight: 70.0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              HugeIcons.strokeRoundedArrowTurnBackward,
              color: Colors.grey[300],
              semanticLabel: 'Arrow back icon indicated route back in app',
            ),
            tooltip: 'Back To Start Page',
            enableFeedback: true,
          ),
          title: Text(
            'Quiz Categories',
            style: TextStyle(
              fontFamily: 'LexendExa',
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.grey[300],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () => settingAlert(context),
              icon: Icon(
                HugeIcons.strokeRoundedSetting06,
                color: Colors.grey[300],
                semanticLabel:
                    'Modern ASetting Icon To access to App\' Setting',
              ),
              tooltip: 'Access To App Setting',
              enableFeedback: true,
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () => searchAlert(context),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          splashColor: Colors.black,
          tooltip: 'Search Online Categories',
          enableFeedback: true,
          child: Icon(
            HugeIcons.strokeRoundedSearchArea,
            semanticLabel: 'Search Icon To Search Online Categories',
          ),
        ),
      ),
    );
  }
}
