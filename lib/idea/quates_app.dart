import 'package:flutter/material.dart';

class QuotesScreen extends StatelessWidget {
  const QuotesScreen({super.key});

  final List<Map<String, String>> quotes = const [
      {
        "quote": "The best among you are those who have the best manners and character.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "Indeed, with hardship, there is ease.",
        "author": "Quran (94:6)"
      },
      {
        "quote": "And put your trust in Allah if you are indeed believers.",
        "author": "Quran (5:23)"
      },
      {
        "quote": "Do not despair of the mercy of Allah.",
        "author": "Quran (39:53)"
      },
      {
        "quote": "O you who have believed, seek help through patience and prayer. Indeed, Allah is with the patient.",
        "author": "Quran (2:153)"
      },
      {
        "quote": "He who is not merciful to others, will not be mercifully dealt with.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "Verily, Allah does not look at your bodies or your forms, but He looks at your hearts and your deeds.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "Be in this world as if you are a stranger or a traveler.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "The believer's shade on the Day of Resurrection will be his charity.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "The greatest richness is the richness of the soul.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "No fatigue, nor disease, nor sorrow, nor sadness, nor hurt, nor distress befalls a Muslim, even if it were the prick he receives from a thorn, but that Allah expiates some of his sins for that.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "Satan promises you poverty and enjoins upon you immorality, but Allah promises you forgiveness and bounty from Him.",
        "author": "Quran (2:268)"
      },
      {
        "quote": "So remember Me; I will remember you. And be grateful to Me and do not deny Me.",
        "author": "Quran (2:152)"
      },
      {
        "quote": "And whoever fears Allah - He will make for him a way out and will provide for him from where he does not expect.",
        "author": "Quran (65:2-3)"
      },
      {
        "quote": "Indeed, Allah loves those who are patient.",
        "author": "Quran (3:146)"
      },
      {
        "quote": "And cooperate in righteousness and piety, but do not cooperate in sin and aggression.",
        "author": "Quran (5:2)"
      },
      {
        "quote": "The strong is not the one who overcomes people by his strength, but the strong is the one who controls himself while in anger.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "A true Muslim is the one from whose tongue and hands the others are safe.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "The one who supplicates to Allah never fails.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "No man has ever drunk a better drink than the drink of patience.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "The most beloved of deeds to Allah are those that are most consistent, even if they are small.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "The best of you are those who are best to their families.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "Speak the truth, even if it is bitter.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "Wealth is not in having many possessions; rather, true wealth is the richness of the soul.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "Patience is a pillar of faith.",
        "author": "Caliph Umar ibn al-Khattab Ra."
      },
      {
        "quote": "The cure for a worried soul is remembrance of Allah.",
        "author": "Quran (13:28)"
      },
      {
        "quote": "Every soul will taste death.",
        "author": "Quran (3:185)"
      },
      {
        "quote": "The dunya (this world) is a prison for the believer and a paradise for the disbeliever.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "He who has in his heart the weight of a mustard seed of pride shall not enter Paradise.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "Paradise lies under the feet of mothers.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "A moment of patience in a moment of anger prevents a thousand moments of regret.",
        "author": "Ali ibn Abi Talib"
      },
      {
        "quote": "The believer's prayer is his source of strength.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "Live your life like you are going to die tomorrow, and live for the Hereafter as if you are going to live forever.",
        "author": "Caliph Ali ibn Abi Talib"
      },
      {
        "quote": "Beware of envy, for it eats up good deeds just as fire eats up wood.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "Seek knowledge from the cradle to the grave.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "Kindness is a mark of faith, and whoever is not kind has no faith.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "If you are grateful, I will surely increase you [in favor].",
        "author": "Quran (14:7)"
      },
      {
        "quote": "And when the foolish address them [with insults], they say [words of] peace.",
        "author": "Quran (25:63)"
      },
      {
        "quote": "Take account of yourselves before you are taken to account.",
        "author": "Caliph Umar ibn al-Khattab Ra."
      },
      {
        "quote": "Do not be sad, for Allah is with us.",
        "author": "Quran (9:40)"
      },
      {
        "quote": "Whoever is in need, Allah will provide for him.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "And those who have believed and done righteous deeds - We will surely remove from them their misdeeds and will surely recompense them with the best of what they used to do.",
        "author": "Quran (29:7)"
      },
      {
        "quote": "The one who is merciful to others will be shown mercy by the Most Merciful.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "Your Lord has not forsaken you, nor is He displeased.",
        "author": "Quran (93:3)"
      },
      {
        "quote": "The most complete in faith amongst believers is he who is the best in character.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "The heart is a vessel, so fill it with Allah's love.",
        "author": "Al-Hasan Al-Basri R."
      },
      {
        "quote": "And say, 'My Lord, increase me in knowledge.'",
        "author": "Quran (20:114)"
      },
      {
        "quote": "The best of people are those who are most beneficial to people.",
        "author": "Prophet Muhammad (ﷺ)"
      },
      {
        "quote": "Do not let your difficulties fill you with anxiety, after all it is only in the darkest nights that stars shine more brightly.",
        "author": "Caliph Ali ibn Abi Talib Ra."
      },
      {
        "quote": "Tawakkul (trust in Allah) is not to abandon effort, but to trust that Allah will make your effort fruitful.",
        "author": "Ibn Taymiyyah Rh."
      }
    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Islamic Quotes"),
        backgroundColor: Colors.deepPurple,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: quotes.length,
        itemBuilder: (context, index) {
          final quote = quotes[index];

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.format_quote,
                      color: Colors.deepPurple, size: 30),

                  const SizedBox(height: 8),

                  Text(
                    quote["quote"]!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "- ${quote["author"]}",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
