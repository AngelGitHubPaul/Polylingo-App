import 'package:flutter/material.dart';
import 'package:helloworld/review_pages/hangul_review.dart';
import 'package:helloworld/review_pages/hiragana_review.dart';
import 'package:helloworld/review_pages/katakana_review.dart';

class Languages {
  final String lang;
  final String en;

  Languages({required this.lang, required this.en});
}

final List<Languages> languages = [
  Languages(lang: 'あ', en: 'Hiragana'),
  Languages(lang: 'ア', en: 'Katakana'),
  Languages(lang: 'ᜀ', en: 'Alibata'),
  Languages(lang: '아', en: 'Hangul'),
];

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: languages.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) => Card(
          child: InkWell(
        onTap: () {
          switch (index) {
            case 0:
              {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const HiraganaReviewPage();
                    },
                  ),
                );
              }
              break;
            case 1:
              {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const KatakanaReviewPage();
                    },
                  ),
                );
              }
              break;
            case 3:
              {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const HangulReviewPage();
                    },
                  ),
                );
              }
              break;
          }
        },
        child: GridTile(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              Text(
                (languages[index].lang),
                style: const TextStyle(
                  color: Colors.pink,
                  fontSize: 40.0,
                ),
              ),
              Text(
                (languages[index].en),
                style: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ]))),
      )),
    );
  }
}