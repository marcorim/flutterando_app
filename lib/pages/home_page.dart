import 'package:flutter/material.dart';
import 'package:flutterando_app/widgets/custom_app_bar.dart';
import 'package:flutterando_app/widgets/custom_navigator.dart';
import 'package:flutterando_app/widgets/widget_card_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Scrollbar(
          child: Column(
            children: const [
              CustomAppBar(),
              SizedBox(height: 5.0),
              WidgetCardHome(
                descricao:
                    'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                exercicio: 4,
                titulo: 'Animações',
                assetImage: 'assets/images/Icon awesome-running.png',
              ),
              WidgetCardHome(
                descricao:
                    'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
                exercicio: 2,
                titulo: 'Leitura de Mockup',
                assetImage: 'assets/images/Icon awesome-glasses.png',
              ),
              WidgetCardHome(
                descricao: 'Ambiente destinado a testes e estudos em geral',
                exercicio: 3,
                titulo: 'Playground',
                assetImage: 'assets/images/Icon material-toys.png',
              ),
              CustomNavigator(),
            ],
          ),
        ),
      ),
    );
  }
}
