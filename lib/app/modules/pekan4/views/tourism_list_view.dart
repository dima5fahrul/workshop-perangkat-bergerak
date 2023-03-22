import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:workshop_flutter/app/data/models/tourism_place.dart';
import 'package:workshop_flutter/app/modules/pekan4/views/list_item_view.dart';
import 'package:workshop_flutter/app/modules/pekan4/views/percobaan_detail_view.dart';

class TourismListView extends StatefulWidget {
  const TourismListView({Key? key, required this.donetourismPlace})
      : super(key: key);
  final List<TourismPlace> donetourismPlace;

  @override
  _TourismListViewState createState() =>
      _TourismListViewState(donetourismPlace);
}

class _TourismListViewState extends State<TourismListView> {
  final List<TourismPlace> donetourismPlaceList;
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Martin Garrix',
      rank: 'Top 1',
      from: 'Netherland',
      style: 'Pop',
      imageAsset: 'assets/profiles/martin_garrix.jpg',
      description:
          'Rotterdam-born Oliver Heldens experienced his rise to fame at a very young age; enjoying a UK number 1 single at the tender age of 19 with `Gecko (Overdrive)` featuring the vocals of Becky Hill, and it`s been all systems go since then. His music continues to storm the charts, with hits like `Deja Vu` featuring Anabel Englund and a big room version of `Another Chance` alongside Roger Sanchez both released last year, and thanks to his various aliases he`s an artist who successfully bridges the mainstream and the underground.',
      galery: [
        'assets/images/martin-garrix1.jpg',
        'assets/images/martin-garrix2.jpg',
        'assets/images/martin-garrix3.jpg',
      ],
    ),
    TourismPlace(
      name: 'David Guetta',
      rank: 'Top 2',
      from: 'France',
      style: 'EDM',
      imageAsset: 'assets/profiles/david_guetta.jpg',
      description:
          "David Guetta is a French DJ, record producer, songwriter, and remixer. He is best known for his 2011 single 'Titanium' featuring Sia, which reached number 1 on the Billboard Hot 100 chart. He is also known for his 2014 single 'Hey Mama' featuring Nicki Minaj and Afrojack, which reached number 1 on the Billboard Hot 100 chart.",
      galery: [
        'assets/images/david-guetta1.jpg',
        'assets/images/david-guetta2.jpg',
        'assets/images/david-guetta3.jpg',
      ],
    ),
    TourismPlace(
      name: 'Dimitri Vegas & Like Mike',
      rank: 'Top 3',
      from: 'Belgium',
      style: 'EDM',
      imageAsset: 'assets/profiles/Dimitri_vegas_like_mike.jpg',
      description:
          'Dimitri Vegas & Like Mike are a Belgian DJ duo consisting of brothers Dimitri Thivaios and Michael Thivaios. They are best known for their live performances, which often include pyrotechnics, acrobats, and other visual effects. They are also known for their 2018 single "Complicated" featuring Kiiara, which reached number 1 on the Billboard Dance Club Songs chart.',
      galery: [
        'assets/images/dimitri-vegas-like-mike1.jpg',
        'assets/images/dimitri-vegas-like-mike2.jpg',
        'assets/images/dimitri-vegas-like-mike3.jpg',
      ],
    ),
    TourismPlace(
      name: 'Alok',
      rank: 'Top 4',
      from: 'Brazil',
      style: 'Dance-pop',
      imageAsset: 'assets/profiles/alok.jpg',
      description:
          'Alok is a Brazilian DJ and record producer. He is best known for his 2018 single "Hear Me Now" featuring Zeeba, which reached number 1 on the Billboard Dance Club Songs chart. He is also known for his 2019 single "Never Let Me Go" featuring IRO, which reached number 1 on the Billboard Dance Club Songs chart.',
      galery: [
        'assets/images/alok1.jpg',
        'assets/images/alok2.jpg',
        'assets/images/alok3.jpg',
      ],
    ),
    TourismPlace(
      name: 'Armin Van Buuren',
      rank: 'Top 5',
      from: 'Netherland',
      style: 'Trance',
      imageAsset: 'assets/profiles/armin_van_buuren.jpg',
      description:
          "Continuing his run as The World`s No.1 Trance DJ, as well as an incredible legacy of 21 years in the top five of the Top 100 DJs, Armin van Buuren tells DJ Mag that getting back to touring has been a highlight of his year. “It`s been great to be back on the road after the pandemic. If anything, I`m more thankful than ever to be on stage and to be able to share my music with the crowd. Because of corona[virus], I produced a lot of music, so it felt really good to finally see the crowd react to it.”",
      galery: [
        'assets/images/armin-van-buuren1.jpg',
        'assets/images/armin-van-buuren2.jpg',
        'assets/images/armin-van-buuren3.jpg',
      ],
    ),
    TourismPlace(
      name: 'Afrojack',
      rank: 'Top 6',
      from: 'Netherland',
      style: 'EDM',
      imageAsset: 'assets/profiles/afrojack.jpg',
      description:
          "The Afrojack sound is big, warm and accessible, full of epic breaks, joyous synths and space-laser production, often mixed with melancholy chords and lyrics. It`s a sound that has proved hugely popular again this year and the Dutch DJ/producer hasn`t missed a single opportunity to play to his fans, with a 2022 gig schedule that took in Miami, Las Vegas, Paris, Dubai, Bucharest, New York, Tokyo and beyond. And then after a hectic summer season it was straight back into it with the announcement of his fifteen city `Jack To The Future` US tour.",
      galery: [
        'assets/images/afrojack1.jpg',
        'assets/images/afrojack2.jpg',
        'assets/images/afrojack3.jpg',
      ],
    ),
    TourismPlace(
      name: 'Steve Aoki',
      rank: 'Top 7',
      from: 'United States',
      style: 'Multi-genre',
      imageAsset: 'assets/profiles/steve_aoki.jpg',
      description:
          "Steve Aoki does it all. Whether penning novels, opening pizza shops or producing mindful music for NFTs, the cake-throwing producer, DJ and entrepreneur is constantly racking up new accomplishments in life, and IPs in his repertoire. Last year it was Kura Kura Pa — the anime-themed yakitori joint he helms alongside his brother Kevin at Resorts World Las Vegas. In 2022, however, the chart-topping titan is focused on another kind of handheld obsession. ",
      galery: [
        'assets/images/steve-aoki1.jpg',
        'assets/images/steve-aoki2.jpg',
        'assets/images/steve-aoki3.jpg',
      ],
    ),
    TourismPlace(
      name: 'Timmy Trumpet',
      rank: 'Top 8',
      from: 'Australia',
      style: 'Energetic',
      imageAsset: 'assets/profiles/timmy_trumpet.jpg',
      description:
          "For the horn-blasting, stadium-slaying dance star Timmy Trumpet, 2022 was a remarkable year. “I got married, toured more than ever before and got to do some crazy shit, like playing on Jimmy Kimmel Live,” he says.",
      galery: [
        'assets/images/timmy-trumpet1.jpg',
        'assets/images/timmy-trumpet2.jpg',
        'assets/images/timmy-trumpet3.jpg',
      ],
    ),
    TourismPlace(
      name: 'Don Diablo',
      rank: 'Top 9',
      from: 'Netherland',
      style: 'Future',
      imageAsset: 'assets/profiles/don_diablo.jpg',
      description:
          "Don Diablo has had a busy year by anyone's standards. He was hugely productive in the studio, experimenting with new sounds, writing new hooks, working on new harmonies and ways to push the so-called future house sound forward. Highlights include remixing one of his favourite Avicii tunes to raise money for the Tim Bergling Foundation which raises awareness for Mental Health, and getting to open the Biennale in Venice alongside DRIFT with the world's first indoor drone performance. 'It felt like a huge milestone which I never thought I'd make.'",
      galery: [
        'assets/images/don-diablo1.jpg',
        'assets/images/don-diablo2.jpg',
        'assets/images/don-diablo3.jpg',
      ],
    ),
    TourismPlace(
      name: 'Oliver Heldens',
      rank: 'Top 10',
      from: 'Netherland',
      style: 'EDM',
      imageAsset: 'assets/profiles/oliver_heldens.jpg',
      description:
          'Rotterdam-born Oliver Heldens experienced his rise to fame at a very young age; enjoying a UK number 1 single at the tender age of 19 with `Gecko (Overdrive)` featuring the vocals of Becky Hill, and it`s been all systems go since then. His music continues to storm the charts, with hits like `Deja Vu` featuring Anabel Englund and a big room version of `Another Chance` alongside Roger Sanchez both released last year, and thanks to his various aliases he`s an artist who successfully bridges the mainstream and the underground.',
      galery: [
        'assets/images/oliver-heldens1.jpg',
        'assets/images/oliver-heldens2.jpg',
        'assets/images/oliver-heldens3.jpg',
      ],
    ),
  ];

  _TourismListViewState(this.donetourismPlaceList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: tourismPlaceList.length,
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PercobaanDetailView(
                  place: place,
                ),
              ),
            ),
            child: ListItemView(
              place: place,
              isDone: donetourismPlaceList.contains(place),
              onCheckboxClick: (bool? value) {
                setState(() {
                  if (value != null) {
                    value
                        ? donetourismPlaceList.add(place)
                        : donetourismPlaceList.remove(place);
                  }
                  print(donetourismPlaceList);
                });
              },
            ),
          );
        },
      ),
    );
  }
}
