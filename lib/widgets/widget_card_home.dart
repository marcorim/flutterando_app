// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WidgetCardHome extends StatelessWidget {
  final int exercicio;
  final String titulo;
  final String descricao;
  final String assetImage;

  const WidgetCardHome({
    Key? key,
    required this.exercicio,
    required this.titulo,
    required this.descricao,
    required this.assetImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      height: 140,
      decoration: const BoxDecoration(
        color: Color(0xFF172026),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image(
                  image: AssetImage(assetImage),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                titulo,
                style: const TextStyle(
                  color: Color(0xFFEDF4F8),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              const Text(
                'Exercícios:',
                style: TextStyle(
                  color: Color(0xFF51565A),
                  fontSize: 12.0,
                  fontFamily: "Montserrat,Regular",
                ),
              ),
              Text(
                '  $exercicio',
                style: const TextStyle(
                  color: Color(0xFFEDF4F8),
                  fontSize: 12.0,
                  fontFamily: "Montserrat,Regular",
                ),
              ),
            ],
          ),
          const Spacer(),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              descricao,
              style: const TextStyle(
                color: Color(0xFF51565A),
                fontSize: 14.0,
                fontFamily: "Montserrat,Regular",
              ),
            ),
          ),
          const Spacer(),
          Row(
            children: [
              const SizedBox(width: 3.0),
              const Image(
                height: 20.0,
                width: 20.51,
                image: AssetImage(
                  'assets/images/Icon awesome-github.png',
                ),
              ),
              const SizedBox(width: 8.0),
              const Text(
                'Acessar código fonte',
                style: TextStyle(
                  color: Color(0xFFEDF4F8),
                  fontSize: 12.0,
                  fontFamily: "Montserrat,Regular",
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: (() {
                  Navigator.of(context).pushNamed(
                    '/info_pages',
                  );
                }),
                child: Container(
                  width: 119.0,
                  height: 34.5,
                  decoration: const BoxDecoration(
                    color: Color(0xFF055AA3),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  child: const Align(
                    child: Text(
                      'Ver mais',
                      style: TextStyle(
                        color: Color(0xFFEDF4F8),
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
