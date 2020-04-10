import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:pokedex_app/app/modules/home/widgets/pokedex_item.dart';
import 'package:pokedex_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:pokedex_app/app/modules/shared/utils/app_images.dart';
import 'package:pokedex_app/app/modules/shared/widgets/app_bar_home.dart';
import 'home_controller.dart';
import 'models/pokedex_model.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  void initState() {
    controller.fetchPokedexList();
    controller.getImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double statusWidth = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            top: -(240 / 4.8),
            left: screenWidth - (240 / 1.7),
            child: Opacity(
              child: Image.asset(
                AppImages.blackPokeball,
                height: AppDimensions.imageLarge,
                width: AppDimensions.imageLarge,
              ),
              opacity: 0.1,
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: statusWidth,
                ),
                AppBarHome(),
                Expanded(
                  child: Container(
                    child: Observer(builder: (_) {
                      return (controller.listPokedex != null)
                          ? AnimationLimiter(
                              child: GridView.builder(
                                physics: BouncingScrollPhysics(),
                                padding: EdgeInsets.all(AppDimensions.medium),
                                addAutomaticKeepAlives: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                itemBuilder: (_, index) {
                                  Pokemon pokemon =
                                      controller.getPokemon(index: index);
                                  return AnimationConfiguration.staggeredGrid(
                                    position: index,
                                    columnCount: 2,
                                    child: ScaleAnimation(
                                      child: GestureDetector(
                                        child: PokedexItem(
                                          types: pokemon.type,
                                          index: index,
                                          name: pokemon.name,
                                          image: controller.getImage(
                                              number: pokemon.num),
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          : Center(
                              child: CircularProgressIndicator(),
                            );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
