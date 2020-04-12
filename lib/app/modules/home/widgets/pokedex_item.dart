import 'package:flutter/material.dart';
import 'package:pokedex_app/app/modules/shared/utils/app_colors.dart';
import 'package:pokedex_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:pokedex_app/app/modules/shared/utils/app_images.dart';

class PokedexItem extends StatelessWidget {
  final String name;
  final int index;
  final Color color;
  final Widget image;
  final List<String> types;

  const PokedexItem({
    Key key,
    this.name,
    this.index,
    this.color,
    this.image,
    this.types,
  }) : super(key: key);

  Widget setTypes() {
    List<Widget> list = <Widget>[];
    types.forEach((name) {
      list.add(
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(80, 255, 255, 255),
              ),
              child: Padding(
                padding: EdgeInsets.all(AppDimensions.small),
                child: Text(
                  name.trim(),
                  style: TextStyle(
                    fontFamily: 'Google',
                    fontSize: AppDimensions.textSmall,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: AppDimensions.small,
            ),
          ],
        ),
      );
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: list,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.small),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.getColorType(type: types[0]),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(AppDimensions.medium),
              child: Text(
                name,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: AppDimensions.textMedium,
                  fontFamily: 'Google',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppDimensions.medium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  setTypes(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: AppDimensions.smallest,
                bottom: AppDimensions.medium,
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Opacity(
                  opacity: 0.2,
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(15 / 360),
                    child: Image.asset(
                      AppImages.whitePokeball,
                      width: 90,
                      height: 90,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: AppDimensions.small,
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(AppDimensions.medium),
                  child: image,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
