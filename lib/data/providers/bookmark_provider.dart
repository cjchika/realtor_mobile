import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realtor_app/data/models/property_model.dart';
import 'package:realtor_app/data/providers/property_provider.dart';

final bookmarksProvider = StateProvider<List<PropertyModel>>((ref) {
  final bookmarks = ref
      .watch(propertyProvider)
      .where((element) => element.isBookmarked == true)
      .toList();

  return bookmarks;
});
