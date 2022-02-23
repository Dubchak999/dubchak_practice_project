import 'package:equatable/equatable.dart';

///{@template user}
///User model
///
///[User.empty]  represents an unauthenticated user
///{@endtemplate}
class User extends Equatable {
  /// Macro user
  const User({
    required this.id,
    this.email,
    this.name,
    this.photo,
  });

  /// The current user's email address.
  final String? email;

  /// The current user's id.
  final String id;

  /// The current user's name (Display name).
  final String? name;

  /// Url for the current user's photo.
  final String? photo;

  /// Empty user which represents an unauthenticated user.
  static const empty = User(id: '');

  /// Convinience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convinience getter to determine whether the current user is nit empty.

  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [email, id, name, photo];
}
