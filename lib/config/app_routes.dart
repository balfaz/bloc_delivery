import 'package:another_bloc/screens/basket/basket_screen.dart';
import 'package:another_bloc/screens/checkout/checkout_screen.dart';
import 'package:another_bloc/screens/delivery_time/delivery_time_screen.dart';
import 'package:another_bloc/screens/error_screen.dart';
import 'package:another_bloc/screens/filter/filter_screen.dart';
import 'package:another_bloc/screens/home/home_screen.dart';
import 'package:another_bloc/screens/location/location_screen.dart';
import 'package:another_bloc/screens/restaurant_detail/restaurant_detail_screen.dart';
import 'package:another_bloc/screens/restaurant_listing/restaurant_listing_screen.dart';
import 'package:another_bloc/screens/voucher/voucher_screen.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'home': (_) => const HomeScreen(),
  'location': (_) => const LocationScreen(),
  'checkout': (_) => const CheckoutScreen(),
  'deliveryTime': (_) => const DeliveryTimeScreen(),
  'basket': (_) => const BasketScreen(),
  'restDetail': (_) => const RestaurantDetailScreen(),
  'filter': (_) => const FilterScreen(),
  'restListing': (_) => const RestaurantListingScreen(),
  'voucher': (_) => const VoucherScreen(),
  'error': (_) => const ErrorScreen()
};
