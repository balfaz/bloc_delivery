import 'package:another_bloc/bloc/geolocation/geolocation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: BlocBuilder<GeolocationBloc, GeolocationState>(
                    builder: ((context, state) {
                  print(state);
                  if (state is GeolocationLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is GeolocationLoaded) {
                    return const GoogleMap(
                      myLocationEnabled: true,
                      initialCameraPosition:
                          CameraPosition(target: LatLng(10, 10), zoom: 5),
                    );
                  } else {
                    return Text('Something went wrong');
                  }
                }))),
            Positioned(
                top: 30,
                left: 20,
                right: 20,
                child: Container(
                  height: 100,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/makarios_scritta.svg',
                        height: 50,
                      ),
                      const Expanded(child: LocationSearchBox()),
                    ],
                  ),
                )),
            Positioned(
                bottom: 50,
                left: 20,
                right: 20,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor),
                    child: Text('Save'),
                    onPressed: () {},
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class LocationSearchBox extends StatelessWidget {
  const LocationSearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Enter your location",
              suffixIcon: const Icon(Icons.search),
              contentPadding:
                  const EdgeInsets.only(left: 20, bottom: 5, right: 5),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white)))),
    );
  }
}
