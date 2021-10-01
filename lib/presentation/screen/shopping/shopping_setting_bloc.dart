import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShoppingSettingBloc extends BlocBase<ScreenSetting> {
  final GetShoppingScreenSetting _getShoppingScreenSetting;
  static const initState = ScreenSetting(
    text: 'Search products...',
    color: '#949494',
  );

  ShoppingSettingBloc(this._getShoppingScreenSetting) : super(initState) {
    init();
  }

  Future init() async {
    final result = await _getShoppingScreenSetting();
    result.when(success: emit);
  }
}
