import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:weather/ui/views/startup/startup_viewmodel.dart';
import 'package:weather/ui/widgets/dumb_widgets/app_text_button.dart';
import 'package:weather/ui/widgets/dumb_widgets/supabase_logo.dart';
import 'package:url_launcher/url_launcher.dart';

class StartupView extends ViewModelBuilderWidget<StartupViewModel> {
  @override
  Future<void> onViewModelReady(viewModel) async {
    super.onViewModelReady(viewModel);

    await viewModel.runStartupLogic();
  }

  @override
  Widget builder(
      BuildContext context,
      StartupViewModel viewModel,
      Widget? child,
      ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [SupabaseLogo()],
              // ),
              const SizedBox(height: 15),
              const Text(
                'Weathr',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 50),
              const Text('University project for the course "MMDB"'),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Built by'),
                  SizedBox(width: 5),
                  AppTextButton(
                    label: 'Maximilian Fornacon',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(BuildContext context) {
    return StartupViewModel();
  }
}