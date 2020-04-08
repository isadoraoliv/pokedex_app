import 'package:flutter/material.dart';
import 'package:pokedex_app/app/modules/shared/utils/app_colors.dart';
import 'package:pokedex_app/app/modules/shared/utils/app_dimensions.dart';

class AppBarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    right: 7,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: AppColors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: AppDimensions.medium,
                  right: AppDimensions.medium,
                ),
                child: Text(
                  'Pokedex',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: AppDimensions.textLargest,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
