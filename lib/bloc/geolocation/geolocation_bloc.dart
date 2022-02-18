import 'dart:async';

import 'package:another_bloc/repositories/geolocation/geolocation_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';

part 'geolocation_event.dart';
part 'geolocation_state.dart';

class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
  final GeolocationRepository _geoLocationRepository;
  StreamSubscription? _geoLocationSubscription;
  GeolocationBloc({required GeolocationRepository geoLocationRepository})
      : _geoLocationRepository = geoLocationRepository,
        super(GeolocationLoading()) {
    on<GeolocationEvent>((event, emit) async* {
      if (event is LoadGeolocation) {
        yield* _mapLoadGeolocationToState();
      } else if (event is UpdateGeolocation) {
        yield* _mapUpdateGeolocationToState(event);
      }
    });
  }
  Stream<GeolocationState> _mapLoadGeolocationToState() async* {
    _geoLocationSubscription?.cancel();
    final Position position = await _geoLocationRepository.getCurrentLocation();
    add(UpdateGeolocation(position: position));
  }

  Stream<GeolocationState> _mapUpdateGeolocationToState(
      UpdateGeolocation event) async* {
    yield (GeolocationLoaded(position: event.position));
  }

  Future<void> close() async {
    _geoLocationSubscription?.cancel();
    return super.close();
  }
}
