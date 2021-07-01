import 'package:flutter/material.dart';
import 'package:lexiedu/ui/views/settings/settings_model.dart';
import 'package:lexiedu/ui/widgets/profile_setting.dart';
import 'package:lexiedu/ui/widgets/settings_label.dart';
import 'package:stacked/stacked.dart';

class SettingView extends ViewModelBuilderWidget<SettingViewModel> {
  @override
  Widget builder(BuildContext context, viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.90,
          width: MediaQuery.of(context).size.width * 0.95,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileSetting(
                email: viewModel.email!,
                username: viewModel.username!,
              ),
              SettingLabel(icons: Icons.monitor, title: 'Tampilan'),
              SettingLabel(icons: Icons.volume_up_outlined, title: 'Suara'),
              SettingLabel(
                  icons: Icons.system_security_update_warning_rounded,
                  title: 'Izin'),
              SettingLabel(
                  icons: Icons.notifications_none_sharp, title: 'Notifikasi'),
              SettingLabel(icons: Icons.help_outline, title: 'Bantuan'),
              SettingLabel(icons: Icons.feedback_outlined, title: 'Masukan'),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    showDialog<void>(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Peringatan'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: const <Widget>[
                                Text('Apakah anda yakin ingin keluar?'),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: viewModel.signOut,
                              child: const Text('Ok'),
                            ),
                            TextButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Keluar'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  viewModelBuilder(BuildContext context) {
    return SettingViewModel();
  }
}
