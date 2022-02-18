import 'package:another_bloc/bloc/geolocation/geolocation_bloc.dart';
import 'package:another_bloc/config/theme.dart';
import 'package:another_bloc/repositories/geolocation/geolocation_repository.dart';
import 'package:another_bloc/screens/screens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  if (defaultTargetPlatform == TargetPlatform.android) {
    AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider<GeolocationRepository>(
            create: ((_) => GeolocationRepository()),
          )
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => GeolocationBloc(
                  geoLocationRepository: context.read<GeolocationRepository>())
                ..add(LoadGeolocation()),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Food Delivery',
            theme: theme(),
            initialRoute: 'location',
            routes: appRoutes,
          ),
        ));
  }
}
