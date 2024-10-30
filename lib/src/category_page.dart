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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 168.0,
                height: 168.0,
                child: Image.asset(
                  'images/categories_image.png',
                  semanticLabel:
                      'categories icons indicated by some distinct shapes',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                  5.0,
                ),
                child: SizedBox(
                  width: 200.0,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: Text(
                      'Sport',
                      style: TextStyle(
                        fontFamily: 'LexendExa',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade900,
                      ),
                    ),
                    iconAlignment: IconAlignment.end,
                    icon: Icon(
                      HugeIcons.strokeRoundedFootball,
                      color: Colors.grey.shade900,
                      semanticLabel:
                          'Soccer/ Football ball indicates sport category',
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            25.0,
                          ),
                        ),
                        side: BorderSide(
                          color: Colors.grey.shade900,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                  5.0,
                ),
                child: SizedBox(
                  width: 200.0,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: Text(
                      'Movie',
                      style: TextStyle(
                        fontFamily: 'LexendExa',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade900,
                      ),
                    ),
                    iconAlignment: IconAlignment.end,
                    icon: Icon(
                      HugeIcons.strokeRoundedCameraVideo,
                      color: Colors.grey.shade900,
                      semanticLabel:
                          'A Cinema Camera with stand indicating Cinema Category',
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            25.0,
                          ),
                        ),
                        side: BorderSide(
                          color: Colors.grey.shade900,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                  5.0,
                ),
                child: SizedBox(
                  width: 200.0,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: Text(
                      'Food',
                      style: TextStyle(
                        fontFamily: 'LexendExa',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade900,
                      ),
                    ),
                    iconAlignment: IconAlignment.end,
                    icon: Icon(
                      HugeIcons.strokeRoundedRestaurant02,
                      color: Colors.grey.shade900,
                      semanticLabel: 'Boxing Gloves Indicating sport category',
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            25.0,
                          ),
                        ),
                        side: BorderSide(
                          color: Colors.grey.shade900,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                  5.0,
                ),
                child: SizedBox(
                  width: 200.0,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: Text(
                      'Technology',
                      style: TextStyle(
                        fontFamily: 'LexendExa',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade900,
                      ),
                    ),
                    iconAlignment: IconAlignment.end,
                    icon: Icon(
                      HugeIcons.strokeRoundedComputerPhoneSync,
                      color: Colors.grey.shade900,
                      semanticLabel: 'Boxing Gloves Indicating sport category',
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            25.0,
                          ),
                        ),
                        side: BorderSide(
                          color: Colors.grey.shade900,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ], // End Of Children
          ),
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
