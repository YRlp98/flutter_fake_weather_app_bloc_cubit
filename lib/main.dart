import 'package:flutter/material.dart';
import 'package:flutter_cubit_bloc_tutorial/pages/weather_search_page.dart';
import 'package:bloc/bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: WeatherSearchPage(),
    );
  }
}

class MyChangeNotifier extends ChangeNotifier {
  int field1;
  String field2;

  void changeState() {
    field2 = 'New Value';
    notifyListeners();
  }
}

class MyState {
  final int field1;
  final String field2;

  MyState(this.field1, this.field2);

  // = and hashcode overrides...
}

class MyCubit extends Cubit<MyState> {
  MyCubit() : super(MyState(0, 'Initial value'));

  void changeState() {
    emit(MyState(0, 'New Value'));
  }
}
