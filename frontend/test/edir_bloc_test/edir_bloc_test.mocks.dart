// Mocks generated by Mockito 5.4.0 from annotations
// in traditional_financial_asistant/test/edir_bloc_test/edir_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:traditional_financial_asistant/domain/edir/Edir.dart' as _i2;
import 'package:traditional_financial_asistant/domain/edir/edirRepositoryInterface.dart'
    as _i3;

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

class _FakeEdir_0 extends _i1.SmartFake implements _i2.Edir {
  _FakeEdir_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [EdirRepositoryInterface].
///
/// See the documentation for Mockito's code generation for more information.
class MockEdirRepositoryInterface extends _i1.Mock
    implements _i3.EdirRepositoryInterface {
  MockEdirRepositoryInterface() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Edir> create(_i2.Edir? edir) => (super.noSuchMethod(
        Invocation.method(
          #create,
          [edir],
        ),
        returnValue: _i4.Future<_i2.Edir>.value(_FakeEdir_0(
          this,
          Invocation.method(
            #create,
            [edir],
          ),
        )),
      ) as _i4.Future<_i2.Edir>);
  @override
  _i4.Future<_i2.Edir> update(
    int? id,
    _i2.Edir? edir,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #update,
          [
            id,
            edir,
          ],
        ),
        returnValue: _i4.Future<_i2.Edir>.value(_FakeEdir_0(
          this,
          Invocation.method(
            #update,
            [
              id,
              edir,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Edir>);
  @override
  _i4.Future<List<_i2.Edir>> fetchAllEnrolled() => (super.noSuchMethod(
        Invocation.method(
          #fetchAllEnrolled,
          [],
        ),
        returnValue: _i4.Future<List<_i2.Edir>>.value(<_i2.Edir>[]),
      ) as _i4.Future<List<_i2.Edir>>);
  @override
  _i4.Future<_i2.Edir> join(
    String? name,
    String? code,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #join,
          [
            name,
            code,
          ],
        ),
        returnValue: _i4.Future<_i2.Edir>.value(_FakeEdir_0(
          this,
          Invocation.method(
            #join,
            [
              name,
              code,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Edir>);
}
