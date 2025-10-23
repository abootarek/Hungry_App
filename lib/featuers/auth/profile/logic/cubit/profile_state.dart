import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hungry/core/networking/api_errer_medol.dart';
import 'package:hungry/featuers/auth/profile/data/model/profile_response.dart';
part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;

  const factory ProfileState.profileLoading() = ProfileLoading;
  const factory ProfileState.profileSuccess(ProfileResponse profileResponse) =
      ProfileSuccess;
  const factory ProfileState.profileError(ApiErrorModel apiErrorModel) =
      ProfileError;
  // Update Profile
  const factory ProfileState.updateProfileLoading() = UpdateProfileLoading;
  const factory ProfileState.updateProfileSuccess(
      ProfileResponse profileResponse) = UpdateProfileSuccess;
  const factory ProfileState.updateProfileError(ApiErrorModel apiErrorModel) =
      UpdateProfileError;
  // imagePickedSuccess
  const factory ProfileState.imagePickedSuccess() = ImagePickedSuccess;
}
