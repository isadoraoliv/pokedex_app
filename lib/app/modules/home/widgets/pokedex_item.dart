import 'package:flutter/material.dart';
import 'package:pokedex_app/app/modules/shared/utils/app_colors.dart';
import 'package:pokedex_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:pokedex_app/app/modules/shared/utils/app_images.dart';
import 'package:pokedex_app/app/modules/shared/utils/const_api.dart';

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.small),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[Text('Teste')],
            ),
            Opacity(
              opacity: 0.2,
              child: Image.asset(
                AppImages.whitePokeball,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 100,
                width: 100,
                padding: EdgeInsets.all(AppDimensions.small),
                child: image,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
