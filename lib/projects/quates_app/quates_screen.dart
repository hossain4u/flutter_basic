import 'package:flutter/material.dart';

class QuatesScreen extends StatelessWidget {
  const QuatesScreen({super.key});

  final List<Map<String,dynamic>> quotes = const[
    {
      "id": 1,
      "quote": "The best among you are those who have the best manners and character.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 2,
      "quote": "Indeed, with hardship, there is ease.",
      "author": "Quran (94:6)"
    },
    {
      "id": 3,
      "quote": "And put your trust in Allah if you are indeed believers.",
      "author": "Quran (5:23)"
    },
    {
      "id": 4,
      "quote": "Do not despair of the mercy of Allah.",
      "author": "Quran (39:53)"
    },
    {
      "id": 5,
      "quote": "O you who have believed, seek help through patience and prayer. Indeed, Allah is with the patient.",
      "author": "Quran (2:153)"
    },
    {
      "id": 6,
      "quote": "He who is not merciful to others, will not be mercifully dealt with.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 7,
      "quote": "Verily, Allah does not look at your bodies or your forms, but He looks at your hearts and your deeds.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 8,
      "quote": "Be in this world as if you are a stranger or a traveler.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 9,
      "quote": "The believer's shade on the Day of Resurrection will be his charity.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 10,
      "quote": "The greatest richness is the richness of the soul.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 11,
      "quote": "No fatigue, nor disease, nor sorrow, nor sadness, nor hurt, nor distress befalls a Muslim, even if it were the prick he receives from a thorn, but that Allah expiates some of his sins for that.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 12,
      "quote": "Satan promises you poverty and enjoins upon you immorality, but Allah promises you forgiveness and bounty from Him.",
      "author": "Quran (2:268)"
    },
    {
      "id": 13,
      "quote": "So remember Me; I will remember you. And be grateful to Me and do not deny Me.",
      "author": "Quran (2:152)"
    },
    {
      "id": 14,
      "quote": "And whoever fears Allah - He will make for him a way out and will provide for him from where he does not expect.",
      "author": "Quran (65:2-3)"
    },
    {
      "id": 15,
      "quote": "Indeed, Allah loves those who are patient.",
      "author": "Quran (3:146)"
    },
    {
      "id": 16,
      "quote": "And cooperate in righteousness and piety, but do not cooperate in sin and aggression.",
      "author": "Quran (5:2)"
    },
    {
      "id": 17,
      "quote": "The strong is not the one who overcomes people by his strength, but the strong is the one who controls himself while in anger.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 18,
      "quote": "A true Muslim is the one from whose tongue and hands the others are safe.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 19,
      "quote": "The one who supplicates to Allah never fails.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 20,
      "quote": "No man has ever drunk a better drink than the drink of patience.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 21,
      "quote": "The most beloved of deeds to Allah are those that are most consistent, even if they are small.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 22,
      "quote": "The best of you are those who are best to their families.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 23,
      "quote": "Speak the truth, even if it is bitter.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 24,
      "quote": "Wealth is not in having many possessions; rather, true wealth is the richness of the soul.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 25,
      "quote": "Patience is a pillar of faith.",
      "author": "Caliph Umar ibn al-Khattab Ra."
    },
    {
      "id": 26,
      "quote": "The cure for a worried soul is remembrance of Allah.",
      "author": "Quran (13:28)"
    },
    {
      "id": 27,
      "quote": "Every soul will taste death.",
      "author": "Quran (3:185)"
    },
    {
      "id": 28,
      "quote": "The dunya (this world) is a prison for the believer and a paradise for the disbeliever.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 29,
      "quote": "He who has in his heart the weight of a mustard seed of pride shall not enter Paradise.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 30,
      "quote": "Paradise lies under the feet of mothers.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 31,
      "quote": "A moment of patience in a moment of anger prevents a thousand moments of regret.",
      "author": "Ali ibn Abi Talib"
    },
    {
      "id": 32,
      "quote": "The believer's prayer is his source of strength.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 33,
      "quote": "Live your life like you are going to die tomorrow, and live for the Hereafter as if you are going to live forever.",
      "author": "Caliph Ali ibn Abi Talib"
    },
    {
      "id": 34,
      "quote": "Beware of envy, for it eats up good deeds just as fire eats up wood.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 35,
      "quote": "Seek knowledge from the cradle to the grave.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 36,
      "quote": "Kindness is a mark of faith, and whoever is not kind has no faith.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 37,
      "quote": "If you are grateful, I will surely increase you [in favor].",
      "author": "Quran (14:7)"
    },
    {
      "id": 38,
      "quote": "And when the foolish address them [with insults], they say [words of] peace.",
      "author": "Quran (25:63)"
    },
    {
      "id": 39,
      "quote": "Take account of yourselves before you are taken to account.",
      "author": "Caliph Umar ibn al-Khattab Ra."
    },
    {
      "id": 40,
      "quote": "Do not be sad, for Allah is with us.",
      "author": "Quran (9:40)"
    },
    {
      "id": 41,
      "quote": "Whoever is in need, Allah will provide for him.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 42,
      "quote": "And those who have believed and done righteous deeds - We will surely remove from them their misdeeds and will surely recompense them with the best of what they used to do.",
      "author": "Quran (29:7)"
    },
    {
      "id": 43,
      "quote": "The one who is merciful to others will be shown mercy by the Most Merciful.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 44,
      "quote": "Your Lord has not forsaken you, nor is He displeased.",
      "author": "Quran (93:3)"
    },
    {
      "id": 45,
      "quote": "The most complete in faith amongst believers is he who is the best in character.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 46,
      "quote": "The heart is a vessel, so fill it with Allah's love.",
      "author": "Al-Hasan Al-Basri R."
    },
    {
      "id": 47,
      "quote": "And say, 'My Lord, increase me in knowledge.'",
      "author": "Quran (20:114)"
    },
    {
      "id": 48,
      "quote": "The best of people are those who are most beneficial to people.",
      "author": "Prophet Muhammad (ﷺ)"
    },
    {
      "id": 49,
      "quote": "Do not let your difficulties fill you with anxiety, after all it is only in the darkest nights that stars shine more brightly.",
      "author": "Caliph Ali ibn Abi Talib Ra."
    },
    {
      "id": 50,
      "quote": "Tawakkul (trust in Allah) is not to abandon effort, but to trust that Allah will make your effort fruitful.",
      "author": "Ibn Taymiyyah Rh."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Islamic Quates',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 45,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.green, Colors.blue]),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 50,
          itemBuilder: (context, index){
          final quote= quotes[index];

        return Card(
          color: Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          elevation: 4,
            margin:const EdgeInsets.symmetric(vertical: 5),
          child: Padding(
              padding:const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.format_quote,
                color: Colors.green,size: 30,
                ),
                const SizedBox(height:4),
                Text(quote['quote']!,
                style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic
                ),
                ),

                const SizedBox(height:5),

                Align(
                  alignment: Alignment.bottomRight,
                  child: Text("-${quote['author']} : ${quote['id']}",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),

                  ),
                ),
              ],
            ),

          ),
        );
      }),
    );
  }
}
