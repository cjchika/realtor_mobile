import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realtor_app/data/models/property_model.dart';
import 'package:realtor_app/data/providers/property_provider.dart';

class PropertiesNotifier extends StateNotifier<List<PropertyModel>> {
  PropertiesNotifier({required this.ref}) : super([]) {
    getAllProperties(ref: ref);
  }

  final Ref ref;

  Future getAllProperties({required Ref ref}) async {
    await ref.read(propertyRepositoryProvider).getProperties().then((value) {
      state = value;
      ref.read(isLoadingPropertiesProvider.notifier).state = false;
    });
  }

  void toggleBookmark(String id, {required bool isBookmarked}) {
    final updatedProperty = state
        .firstWhere((element) => element.externalID == id)
        .copyWith(isBookmarked: isBookmarked);
    state = [
      for (int i = 0; i < state.length; i++)
        if (state[i].externalID == id) updatedProperty else state[i]
    ];
  }
}
