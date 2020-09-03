import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_cubit_bloc_tutorial/data/model/weather.dart';
import 'package:meta/meta.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
}
