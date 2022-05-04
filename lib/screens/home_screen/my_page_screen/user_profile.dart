import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/providers/user_provider.dart';
import 'package:mal_learn/widgets/clipped_background_image.dart';
import 'package:mal_learn/widgets/user_icon.dart';

class UserProfile extends ConsumerWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 260,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const BackgroundImage(),
              UserIcon(
                icon: ref.read(userModelProvider).value!.iconProvider,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const _UserName(),
        const _Id(),
      ],
    );
  }
}

class _Id extends ConsumerWidget {
  const _Id({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ref.read(userModelProvider).value!.id;

    return Text(
      id,
      style: TextStyle(
        fontSize: 12,
        color: Colors.teal.shade300,
      ),
    );
  }
}

class _UserName extends ConsumerWidget {
  const _UserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userName = ref.read(userModelProvider).value!.userName;

    return Text(
      userName,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
  }
}
