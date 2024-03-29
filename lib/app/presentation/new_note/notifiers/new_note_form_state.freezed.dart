// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_note_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewNoteFormState {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewNoteFormStateCopyWith<NewNoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewNoteFormStateCopyWith<$Res> {
  factory $NewNoteFormStateCopyWith(
          NewNoteFormState value, $Res Function(NewNoteFormState) then) =
      _$NewNoteFormStateCopyWithImpl<$Res, NewNoteFormState>;
  @useResult
  $Res call({String? id, String? title, String? content, String? color});
}

/// @nodoc
class _$NewNoteFormStateCopyWithImpl<$Res, $Val extends NewNoteFormState>
    implements $NewNoteFormStateCopyWith<$Res> {
  _$NewNoteFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewNoteFormStateImplCopyWith<$Res>
    implements $NewNoteFormStateCopyWith<$Res> {
  factory _$$NewNoteFormStateImplCopyWith(_$NewNoteFormStateImpl value,
          $Res Function(_$NewNoteFormStateImpl) then) =
      __$$NewNoteFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title, String? content, String? color});
}

/// @nodoc
class __$$NewNoteFormStateImplCopyWithImpl<$Res>
    extends _$NewNoteFormStateCopyWithImpl<$Res, _$NewNoteFormStateImpl>
    implements _$$NewNoteFormStateImplCopyWith<$Res> {
  __$$NewNoteFormStateImplCopyWithImpl(_$NewNoteFormStateImpl _value,
      $Res Function(_$NewNoteFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? color = freezed,
  }) {
    return _then(_$NewNoteFormStateImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewNoteFormStateImpl extends _NewNoteFormState {
  _$NewNoteFormStateImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.color})
      : super._();

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? color;

  @override
  String toString() {
    return 'NewNoteFormState(id: $id, title: $title, content: $content, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewNoteFormStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewNoteFormStateImplCopyWith<_$NewNoteFormStateImpl> get copyWith =>
      __$$NewNoteFormStateImplCopyWithImpl<_$NewNoteFormStateImpl>(
          this, _$identity);
}

abstract class _NewNoteFormState extends NewNoteFormState {
  factory _NewNoteFormState(
      {required final String? id,
      required final String? title,
      required final String? content,
      required final String? color}) = _$NewNoteFormStateImpl;
  _NewNoteFormState._() : super._();

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get content;
  @override
  String? get color;
  @override
  @JsonKey(ignore: true)
  _$$NewNoteFormStateImplCopyWith<_$NewNoteFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
