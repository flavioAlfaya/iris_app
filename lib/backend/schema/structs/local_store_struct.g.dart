// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_store_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocalStoreStruct> _$localStoreStructSerializer =
    new _$LocalStoreStructSerializer();

class _$LocalStoreStructSerializer
    implements StructuredSerializer<LocalStoreStruct> {
  @override
  final Iterable<Type> types = const [LocalStoreStruct, _$LocalStoreStruct];
  @override
  final String wireName = 'LocalStoreStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocalStoreStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.site;
    if (value != null) {
      result
        ..add('site')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.colposcopista;
    if (value != null) {
      result
        ..add('colposcopista')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nomeLocalStore;
    if (value != null) {
      result
        ..add('NomeLocalStore')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nomeListaLocal;
    if (value != null) {
      result
        ..add('NomeListaLocal')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  LocalStoreStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocalStoreStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'site':
          result.site = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'colposcopista':
          result.colposcopista = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'NomeLocalStore':
          result.nomeLocalStore = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'NomeListaLocal':
          result.nomeListaLocal.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$LocalStoreStruct extends LocalStoreStruct {
  @override
  final String? site;
  @override
  final String? colposcopista;
  @override
  final String? nomeLocalStore;
  @override
  final BuiltList<String>? nomeListaLocal;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$LocalStoreStruct(
          [void Function(LocalStoreStructBuilder)? updates]) =>
      (new LocalStoreStructBuilder()..update(updates))._build();

  _$LocalStoreStruct._(
      {this.site,
      this.colposcopista,
      this.nomeLocalStore,
      this.nomeListaLocal,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'LocalStoreStruct', 'firestoreUtilData');
  }

  @override
  LocalStoreStruct rebuild(void Function(LocalStoreStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalStoreStructBuilder toBuilder() =>
      new LocalStoreStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalStoreStruct &&
        site == other.site &&
        colposcopista == other.colposcopista &&
        nomeLocalStore == other.nomeLocalStore &&
        nomeListaLocal == other.nomeListaLocal &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, site.hashCode), colposcopista.hashCode),
                nomeLocalStore.hashCode),
            nomeListaLocal.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocalStoreStruct')
          ..add('site', site)
          ..add('colposcopista', colposcopista)
          ..add('nomeLocalStore', nomeLocalStore)
          ..add('nomeListaLocal', nomeListaLocal)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class LocalStoreStructBuilder
    implements Builder<LocalStoreStruct, LocalStoreStructBuilder> {
  _$LocalStoreStruct? _$v;

  String? _site;
  String? get site => _$this._site;
  set site(String? site) => _$this._site = site;

  String? _colposcopista;
  String? get colposcopista => _$this._colposcopista;
  set colposcopista(String? colposcopista) =>
      _$this._colposcopista = colposcopista;

  String? _nomeLocalStore;
  String? get nomeLocalStore => _$this._nomeLocalStore;
  set nomeLocalStore(String? nomeLocalStore) =>
      _$this._nomeLocalStore = nomeLocalStore;

  ListBuilder<String>? _nomeListaLocal;
  ListBuilder<String> get nomeListaLocal =>
      _$this._nomeListaLocal ??= new ListBuilder<String>();
  set nomeListaLocal(ListBuilder<String>? nomeListaLocal) =>
      _$this._nomeListaLocal = nomeListaLocal;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  LocalStoreStructBuilder() {
    LocalStoreStruct._initializeBuilder(this);
  }

  LocalStoreStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _site = $v.site;
      _colposcopista = $v.colposcopista;
      _nomeLocalStore = $v.nomeLocalStore;
      _nomeListaLocal = $v.nomeListaLocal?.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalStoreStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalStoreStruct;
  }

  @override
  void update(void Function(LocalStoreStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalStoreStruct build() => _build();

  _$LocalStoreStruct _build() {
    _$LocalStoreStruct _$result;
    try {
      _$result = _$v ??
          new _$LocalStoreStruct._(
              site: site,
              colposcopista: colposcopista,
              nomeLocalStore: nomeLocalStore,
              nomeListaLocal: _nomeListaLocal?.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'LocalStoreStruct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nomeListaLocal';
        _nomeListaLocal?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LocalStoreStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
