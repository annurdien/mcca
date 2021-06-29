import 'package:flutter/material.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      child: UserProfileAvatar(
        avatarUrl:
            'https://cdn.discordapp.com/attachments/794496895564644353/859497912836161566/Group_6896.png',
        notificationCount: 10,
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
    );
  }
}
