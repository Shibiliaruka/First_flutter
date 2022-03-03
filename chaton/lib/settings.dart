import 'package:chaton/loginscreen.dart';
import 'package:chaton/route.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  String inkwell = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SizedBox(
        child: SettingsList(
          sections: [
            SettingsSection(
              title: Text(
                'Common',
                style: TextStyle(color: Color(0xffFFA500)),
              ),
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  leading: Icon(Icons.language),
                  title: Text('Language'),
                  value: Text('English'),
                ),
                // SettingsTile.switchTile(
                //   onToggle: (value) {},
                //   initialValue: true,
                //   leading: Icon(Icons.format_paint),
                //   title: Text('Enable custom theme'),
                // ),
                SettingsTile.navigation(
                  onPressed: (cntxt) {},
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                  value: Text('logged'),
                ),
                SettingsTile.navigation(
                  onPressed: (cntxt) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Logout"),
                            content: Text("Would you like to continue ?"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Cancel')),
                              TextButton(
                                  onPressed: () {
                                    // Navigator.pushNamed(context, Routes.LOGOUT);
                                    Navigator.pushAndRemoveUntil(context,
                                        MaterialPageRoute(builder: (cntxt) {
                                      return loginscreen();
                                    }), (route) => false);
                                  },
                                  child: Text('Continue')),
                            ],
                          );
                        });
                  },
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                )
              ],
            ),
          ],
        ),

        // child: Container(
        //   child: ListView(
        //     children: [
        //       InkWell(
        //         onTap: () {
        //           setState(() {
        //             inkwell = 'Tap inwell';
        //           });
        //         },
        //         child: Container(
        //           padding: EdgeInsets.only(left: 10, top: 10),
        //           child: Row(
        //             children: [
        //               Icon(Icons.person),
        //               Text('User configuration'),
        //             ],
        //           ),
        //         ),
        //       ),
        //       Divider(),
        //       InkWell(
        //         onTap: () {},
        //         child: Container(
        //             padding: EdgeInsets.only(left: 10, top: 10),
        //             child: Row(
        //               children: [Icon(Icons.verified_user), Text('Profile')],
        //             )),
        //       ),
        //       Divider(),
        //       InkWell(
        //         onTap: () {},
        //         child: Container(
        //             padding: EdgeInsets.only(left: 10, top: 10),
        //             child: Row(
        //               children: [
        //                 Icon(Icons.logout),
        //                 Text('Signout'),
        //               ],
        //             )),
        //       )
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
