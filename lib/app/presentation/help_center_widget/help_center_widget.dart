// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';
import 'package:ct_micro_commons_ds/ct_micro_commons_ds.dart';

class HelpCenterWidget extends StatelessWidget {
  const HelpCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HelpCenterHeader(),
            SizedBox(height: 30),
            FrequentlyQuestions(),
            SizedBox(height: 30),
            CardChat(),
          ],
        ),
      ),
    );
  }
}

class HelpCenterHeader extends StatelessWidget {
  const HelpCenterHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Central de Ajuda",
          style: GoogleFonts.poppins(
            color: const Color(0xff393d6e),
            fontSize: 36,
            fontWeight: FontWeight.w700,
          ),
        ),
        InkWell(
          onTap: Modular.to.pop,
          child: const Icon(Icons.close),
        ),
      ],
    );
  }
}

class FrequentlyQuestions extends StatelessWidget {
  const FrequentlyQuestions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Perguntas Frequentes:",
          style: GoogleFonts.poppins(
            color: const Color(0xff393d6e),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 20),
        CuiaTextFormField(
          controller: TextEditingController(),
          hintText: "Pesquisar",
        ),
        const SizedBox(height: 30),
        Column(
          children: List.generate(
            6,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Como ser programador WEB e Mobile?",
                          style: TextStyle(
                            color: Color(0xff007dfa),
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing...",
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.chevron_right),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CardChat extends StatelessWidget {
  const CardChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 102,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color(0xff007dfa),
            width: 2,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset(
                  "/assets/images/virtual_assistant.png",
                  package: 'ct_micro_commons_shared',
                  // width: 60,
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Precisa de ajuda?",
                      style: GoogleFonts.poppins(
                        color: const Color(0xff007dfa),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 250,
                      child: Text(
                        "Fale no chat com um dos nossos consultores.",
                        style: TextStyle(
                          color: Color(0xff999999),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(Icons.chevron_right, color: Color(0xff007dfa)),
          ],
        ),
      ),
    );
  }
}
