import 'package:flutter/material.dart';

@immutable
class LocationListItem extends StatelessWidget {
  const LocationListItem({
    super.key, 
    required this.imageUrl,
    required this.name,
    required this.country
    });

  final String imageUrl;
  final String name;
  final String country;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
      child: AspectRatio(
        aspectRatio: 16/9,
        child: ClipRRect(
          child: Stack(
            children: [
              _buildParallaxBackground(context),
              _buildGradient(),
              _buildTitleAndSubtile()
            ]
          ),
          borderRadius: BorderRadius.circular(16)
        ),
      ),
    );

    // throw UnimplementedError();
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Positioned.fill(child: Image.network(
      fit: BoxFit.fill,
      imageUrl,
      
    )
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const[0.6, 0.95]
            )
        ),
      )
    );
  }

  Widget _buildTitleAndSubtile() {
    return Positioned(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),

          Text(
            country,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14
            ),
          )
        ],
      ),
    );
  }
}