import 'package:flutter/material.dart';
import 'package:toku/components/phrase_item.dart';
import 'package:toku/models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  // ignore: non_constant_identifier_names
  final List<ItemModel> PhrasesList = const [
    ItemModel(
      jpName: 'Musume',
      enName: 'Are you coming',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      jpName: 'Chichi',
      enName: 'Father',
      sound: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      jpName: 'Sofu',
      enName: 'GrandFather',
      sound: 'sounds/family_members/grand father.wav',
    ),
    ItemModel(
      jpName: 'Sobo',
      enName: 'Grandmother',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    ItemModel(
      jpName: 'Haha',
      enName: 'Mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      jpName: 'Ani',
      enName: 'Olderbrother',
      sound: 'sounds/family_members/older bother.wav',
    ),
    ItemModel(
      jpName: 'Ani',
      enName: 'Older Sister ',
      sound: 'sounds/family_members/older sister.wav',
    ),
    ItemModel(
      jpName: 'Mussuko',
      enName: 'Son',
      sound: 'sounds/family_members/son.wav',
    ),
    ItemModel(
      jpName: 'Otutuo',
      enName: 'Younger brother',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    ItemModel(
      jpName: 'Imouto',
      enName: 'Younger sister',
      sound: 'sounds/family_members/younger sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff46322b),
      ),
      body: ListView.builder(
        itemCount: PhrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            item: PhrasesList[index],
            color: const Color(0xff50adc7),
          );
        },
      ),
    );
  }
}
