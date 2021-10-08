// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItemListStateTearOff {
  const _$ItemListStateTearOff();

  _ItemListState call({required bool isLoading, required List<Item> data}) {
    return _ItemListState(
      isLoading: isLoading,
      data: data,
    );
  }
}

/// @nodoc
const $ItemListState = _$ItemListStateTearOff();

/// @nodoc
mixin _$ItemListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Item> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemListStateCopyWith<ItemListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListStateCopyWith<$Res> {
  factory $ItemListStateCopyWith(
          ItemListState value, $Res Function(ItemListState) then) =
      _$ItemListStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Item> data});
}

/// @nodoc
class _$ItemListStateCopyWithImpl<$Res>
    implements $ItemListStateCopyWith<$Res> {
  _$ItemListStateCopyWithImpl(this._value, this._then);

  final ItemListState _value;
  // ignore: unused_field
  final $Res Function(ItemListState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
abstract class _$ItemListStateCopyWith<$Res>
    implements $ItemListStateCopyWith<$Res> {
  factory _$ItemListStateCopyWith(
          _ItemListState value, $Res Function(_ItemListState) then) =
      __$ItemListStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Item> data});
}

/// @nodoc
class __$ItemListStateCopyWithImpl<$Res>
    extends _$ItemListStateCopyWithImpl<$Res>
    implements _$ItemListStateCopyWith<$Res> {
  __$ItemListStateCopyWithImpl(
      _ItemListState _value, $Res Function(_ItemListState) _then)
      : super(_value, (v) => _then(v as _ItemListState));

  @override
  _ItemListState get _value => super._value as _ItemListState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? data = freezed,
  }) {
    return _then(_ItemListState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$_ItemListState implements _ItemListState {
  const _$_ItemListState({required this.isLoading, required this.data});

  @override
  final bool isLoading;
  @override
  final List<Item> data;

  @override
  String toString() {
    return 'ItemListState(isLoading: $isLoading, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemListState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$ItemListStateCopyWith<_ItemListState> get copyWith =>
      __$ItemListStateCopyWithImpl<_ItemListState>(this, _$identity);
}

abstract class _ItemListState implements ItemListState {
  const factory _ItemListState(
      {required bool isLoading, required List<Item> data}) = _$_ItemListState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<Item> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemListStateCopyWith<_ItemListState> get copyWith =>
      throw _privateConstructorUsedError;
}
