import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failure.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clientFailure() = _ClientFailure;
  const factory MainFailure.noError() = NoError;
  const factory MainFailure.serverFailure() = _ServerFailure;
  const factory MainFailure.dbFailure() = _DBFailure;
  const factory MainFailure.unauthorised() = _Unauthorised;
  const factory MainFailure.sessionDenied() = _SessionDenied;
}
