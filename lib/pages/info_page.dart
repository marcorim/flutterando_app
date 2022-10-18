import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/custom_app_bar.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Scrollbar(
          child: Column(
            children: [
              const CustomAppBar(),
              const SizedBox(height: 5.0),
              Container(
                margin: const EdgeInsets.all(12.0),
                padding: const EdgeInsets.all(20.0),
                height: 64.00,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFF172026),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF055AA3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          '1',
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text('Exercícios 01'),
                  ],
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Voltar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
