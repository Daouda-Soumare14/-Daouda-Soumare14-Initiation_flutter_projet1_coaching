import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projet1_review/features/auth/domain/entities/app_user.dart';
import 'package:projet1_review/features/auth/presentation/cubits/auth_cubit.dart';
import 'package:projet1_review/features/profile/presentation/cubits/profile_cubit.dart';
import 'package:projet1_review/features/profile/presentation/cubits/profile_state.dart';

class ProfilePage extends StatefulWidget {
  final String uid;

  const ProfilePage({super.key, required this.uid});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // cubits
  late final authCubit = context.read<AuthCubit>();
  late final profileCubit = context.read<ProfileCubit>();

  // current user
  late AppUser? currentUser = authCubit.currentUser;

  // on startup
  @override
  void initState() {
    super.initState();

    // load user profile data
    profileCubit.fetchUserProfile(widget.uid);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
      // loaded
      if (state is ProfileLoaded) {
        // get loaded user
        final user = state.profileUser;
        return Scaffold(
          // app bar
          appBar: AppBar(
            title: Text(user.name),
            foregroundColor: Theme.of(context).colorScheme.primary,
          ),

          // body
        );
      }

      // loading..
      else if (state is ProfileLoading) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else {
        return const Center(
          child: Text("No profile found.."),
        );
      }
    });
  }
}
