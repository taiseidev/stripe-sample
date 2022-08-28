import 'package:billing_sample_app/presentation/checkout/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

class SuccessPageBody extends HookConsumerWidget {
  const SuccessPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final redirectTime = ref.watch(redirectTimeProvider);
    useEffect(() {
      ref.read(timerProvider);
      return null;
    }, []);
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Lottie.network(
                'https://assets2.lottiefiles.com/packages/lf20_5u2vmoem.json',
              ),
              Text(
                'ご購入ありがとうございます！\n${redirectTime.value}秒後にホーム画面に戻ります。',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
