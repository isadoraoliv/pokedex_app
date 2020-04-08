// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<PokedexModel> _$listPokedexComputed;

  @override
  PokedexModel get listPokedex => (_$listPokedexComputed ??=
          Computed<PokedexModel>(() => super.listPokedex))
      .value;

  final _$_listPokedexAtom = Atom(name: '_HomeControllerBase._listPokedex');

  @override
  PokedexModel get _listPokedex {
    _$_listPokedexAtom.context.enforceReadPolicy(_$_listPokedexAtom);
    _$_listPokedexAtom.reportObserved();
    return super._listPokedex;
  }

  @override
  set _listPokedex(PokedexModel value) {
    _$_listPokedexAtom.context.conditionallyRunInAction(() {
      super._listPokedex = value;
      _$_listPokedexAtom.reportChanged();
    }, _$_listPokedexAtom, name: '${_$_listPokedexAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic fetchPokedexList() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.fetchPokedexList();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'listPokedex: ${listPokedex.toString()}';
    return '{$string}';
  }
}
