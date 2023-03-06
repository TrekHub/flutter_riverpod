import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tut/main.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<int> counter = ref.watch(counterProvider(5));

    // ref.listen<int>(counterProvider, (previous, next){
    //   if(next == 5){
    //     dialogMethod(context);
    //   }
    // });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
        // actions: [
        //   IconButton(onPressed: () {
        //     ref.refresh(counterProvider);
        //   }, icon: const Icon(Icons.refresh_outlined)),
        //   const SizedBox(width: 10,)

        // ],
      ),
      body: Center(
        child: Text(
          counter
              .when(
                  data: (int value) => value,
                  error: (Object e, _) => e,
                  loading: () => 0)
              .toString(),
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       ref.read(counterProvider.notifier).state++;

      //     },
      //     child: const Icon(Icons.add),
      //   )
    );
  }

  // Future<dynamic> dialogMethod(BuildContext context) {
  //   return showDialog(context: context, builder: (context){
  //       return AlertDialog(
  //         title: const Text('Counter Warning'),
  //         content: const Text('Counter has reached 5'),
  //         actions: [
  //           TextButton(onPressed: () {
  //             Navigator.of(context).pop();
  //           }, child: const Text('OK'))
  //         ],
  //       );
  //     });
  // }
}
