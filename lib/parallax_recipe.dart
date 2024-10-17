import 'package:flutter/material.dart';
import 'package:test_drive/location_list_item.dart';

class ParallaxRecipe extends StatelessWidget {
  const ParallaxRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SingleChildScrollView(
      child: Column(
        children: [
          for (final location in locations) 
            LocationListItem(
              imageUrl: location.imageUrl,
              name: location.name,
              country: location.place
            )
          
        ],
        ),
    );
    // throw UnimplementedError();
  }
}

class Location {
  const Location(
    {
    required this.name,
    required this.place, 
    required this.imageUrl
    }
  );

  final String name;
  final String place;
  final String imageUrl;
}

const urlPrefix = 'https://docs.flutter.dev/cookbook/img-files/effects/parallax';

const locations = [
  Location(
    name: "Mount Rushmore",
    place: "USA",
    imageUrl: '$urlPrefix/01-mount-rushmore.jpg'
  ),
  Location(
    name: 'Gardens By The Bay',
    place: 'Singapore',
    imageUrl: '$urlPrefix/02-singapore.jpg',
  ),
  Location(
    name: 'Machu Picchu',
    place: 'Peru',
    imageUrl: '$urlPrefix/03-machu-picchu.jpg',
  ),
  Location(
    name: 'Vitznau',
    place: 'Switzerland',
    imageUrl: '$urlPrefix/04-vitznau.jpg',
  ),
  Location(
    name: 'Bali',
    place: 'Indonesia',
    imageUrl: '$urlPrefix/05-bali.jpg',
  ),
  Location(
    name: 'Mexico City',
    place: 'Mexico',
    imageUrl: '$urlPrefix/06-mexico-city.jpg',
  ),
  Location(
    name: 'Cairo',
    place: 'Egypt',
    imageUrl: '$urlPrefix/07-cairo.jpg',
  ),
];