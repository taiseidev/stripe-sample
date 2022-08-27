import 'package:billing_sample_app/presentation/top/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopPageBody extends ConsumerWidget {
  const TopPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationState = ref.watch(navigationStateProvider);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (navigationState)
          NavigationRail(
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bookmark),
                label: Text('Bookmark'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.people),
                label: Text('Friends'),
              ),
            ],
            selectedIndex: ref.watch(selectedIndexProvider),
            onDestinationSelected: (index) {
              ref
                  .read(selectedIndexProvider.notifier)
                  .update((state) => state = index);
            },
          ),
        NavigationStateButton(),
      ],
    );
  }
}

class NavigationStateButton extends ConsumerWidget {
  const NavigationStateButton({Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconState = ref.watch(navigationStateIconProvider);
    return GestureDetector(
      child: Container(
        width: 50,
        height: 50,
        color: Colors.blue,
        child: Icon(
          iconState ? Icons.menu : Icons.clear,
          color: Colors.white,
        ),
      ),
      onTap: () {
        ref
            .read(navigationStateProvider.notifier)
            .update((state) => state = !state);
        ref
            .read(navigationStateIconProvider.notifier)
            .update((state) => state = !state);
      },
    );
  }
}
