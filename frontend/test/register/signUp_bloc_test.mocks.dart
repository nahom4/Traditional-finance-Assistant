// Mocks generated by Mockito 5.4.0 from annotations
// in traditional_financial_asistant/test/register/signUp_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:traditional_financial_asistant/domain/register/signUpRepositoryInterface.dart'
    as _i3;
import 'package:traditional_financial_asistant/domain/register/User.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeUsers_0 extends _i1.SmartFake implements _i2.Users {
  _FakeUsers_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SignUpRepositoryInterface].
///
/// See the documentation for Mockito's code generation for more information.
class MockSignUpRepositoryInterface extends _i1.Mock
    implements _i3.SignUpRepositoryInterface {
  MockSignUpRepositoryInterface() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Users> signUp(_i2.Users? user) => (super.noSuchMethod(
        Invocation.method(
          #signUp,
          [user],
        ),
        returnValue: _i4.Future<_i2.Users>.value(_FakeUsers_0(
          this,
          Invocation.method(
            #signUp,
            [user],
          ),
        )),
      ) as _i4.Future<_i2.Users>);
}
