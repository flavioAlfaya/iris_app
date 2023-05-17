import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'local_store_struct.g.dart';

abstract class LocalStoreStruct
    implements Built<LocalStoreStruct, LocalStoreStructBuilder> {
  static Serializer<LocalStoreStruct> get serializer =>
      _$localStoreStructSerializer;

  String? get site;

  String? get colposcopista;

  @BuiltValueField(wireName: 'NomeLocalStore')
  String? get nomeLocalStore;

  @BuiltValueField(wireName: 'NomeListaLocal')
  BuiltList<String>? get nomeListaLocal;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(LocalStoreStructBuilder builder) => builder
    ..site = ''
    ..colposcopista = ''
    ..nomeLocalStore = ''
    ..nomeListaLocal = ListBuilder()
    ..firestoreUtilData = FirestoreUtilData();

  LocalStoreStruct._();
  factory LocalStoreStruct([void Function(LocalStoreStructBuilder) updates]) =
      _$LocalStoreStruct;
}

LocalStoreStruct createLocalStoreStruct({
  String? site,
  String? colposcopista,
  String? nomeLocalStore,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LocalStoreStruct(
      (l) => l
        ..site = site
        ..colposcopista = colposcopista
        ..nomeLocalStore = nomeLocalStore
        ..nomeListaLocal = null
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

LocalStoreStruct? updateLocalStoreStruct(
  LocalStoreStruct? localStore, {
  bool clearUnsetFields = true,
}) =>
    localStore != null
        ? (localStore.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addLocalStoreStructData(
  Map<String, dynamic> firestoreData,
  LocalStoreStruct? localStore,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (localStore == null) {
    return;
  }
  if (localStore.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && localStore.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final localStoreData = getLocalStoreFirestoreData(localStore, forFieldValue);
  final nestedData = localStoreData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = localStore.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getLocalStoreFirestoreData(
  LocalStoreStruct? localStore, [
  bool forFieldValue = false,
]) {
  if (localStore == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(LocalStoreStruct.serializer, localStore);

  // Add any Firestore field values
  localStore.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLocalStoreListFirestoreData(
  List<LocalStoreStruct>? localStores,
) =>
    localStores?.map((l) => getLocalStoreFirestoreData(l, true)).toList() ?? [];
