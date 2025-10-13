import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/core/helper/extensions.dart';
import 'package:hungry/core/routing/routing.dart';
import 'package:hungry/core/widgets/show_error.dart';
import 'package:hungry/core/widgets/show_loading.dart';
import 'package:hungry/featuers/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:hungry/featuers/auth/sign_up/logic/cubit/signup_state.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialogLoading(context);
          },
          success: (signupResponse) {
            context.pop();
            context.pushNamedAndRemoveUntil(Routes.signInScreen,
                predicate: (route) => false);
          },
          failure: (apiErrorModel) {
            context.pop();
            setupErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
