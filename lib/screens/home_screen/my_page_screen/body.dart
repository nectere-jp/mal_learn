import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/providers/user_provider.dart';
import 'package:mal_learn/screens/home_screen/my_page_screen/add_friends_buttons.dart';
import 'package:mal_learn/screens/home_screen/my_page_screen/user_profile.dart';

class Body extends ConsumerWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uid = ref.watch(uidProvider);

    if (uid == null) {
      return const CircularProgressIndicator();
    }

    return Column(
      children: const [
        UserProfile(),
        SizedBox(height: 30),
        AddFriendsButtons(),
      ],
    );
  }
}
