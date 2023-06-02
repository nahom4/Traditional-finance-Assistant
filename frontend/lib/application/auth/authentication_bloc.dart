import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import '../../domain/auth/authenticationRepositoryInterface.dart';
import '../../domain/auth/User.dart';
import '../../domain/auth/AuthFailure.dart';
import '../../domain/auth/password.dart';
import '../../domain/auth/username.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';


class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRepositroyInterface authenticationRepository;

  AuthenticationBloc(
     this.authenticationRepository)
      :
        super(AuthenticationInitial()) {
    on<LoginEvent>((event, emit) async {
      Username username = event.user.username;
      Password password = event.user.password;

      final user = User.create(username: username, password: password);
      final Either<AuthFailure, Unit> validationResult =
          user.validateCredentials();

       await validationResult.fold((failure) {
        emit(AuthenticationFailure());
        emit(AuthenticationInitial());
      }, (_) async{
           try {
        await authenticationRepository.logIn(user);
        
        emit(AuthenticationAuthenticated());
      } catch (error) {
        emit(AuthenticationUnauthenticated());
      }
      });
   
    });
  }
}
