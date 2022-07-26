import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_doc_app_for_patients/core/errors/app_failures.dart';
import 'package:my_doc_app_for_patients/core/usecase/base_usecase.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/usecases/get_current_user_usecase.dart';

import '../../../domain/entities/user_entity.dart';

part 'init_page_state.dart';
part 'init_page_cubit.freezed.dart';

@injectable
class AuthInitPageCubit extends Cubit<AuthInitPageState> {
  AuthInitPageCubit(this._currentUserUsecase)
      : super(AuthInitPageState.initState());

  final GetCurrentUserUsecase _currentUserUsecase;

  Future<void> getCurrentUser() async {
    emit(AuthInitPageState.initState());
    final result = await _currentUserUsecase(NoParams());
    result.fold(
      (l) => emit(AuthInitPageState.errorState(l)),
      (r) => emit(AuthInitPageState.successState(r)),
    );
  }
}
