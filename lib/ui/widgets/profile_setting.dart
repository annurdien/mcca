import 'package:flutter/material.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({Key? key, required this.username, required this.email})
      : super(key: key);
  final String username;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            child: UserProfileAvatar(
              avatarUrl:
                  'https://cdn.discordapp.com/attachments/794496895564644353/859497912836161566/Group_6896.png',
              notificationBubbleTextStyle: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              avatarSplashColor: Colors.green,
              radius: 55,
              avatarBorderData: AvatarBorderData(
                borderColor: Color(0xFF91F4CC),
                borderWidth: 5.0,
              ),
              activityIndicatorAndroidColor: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  email,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
