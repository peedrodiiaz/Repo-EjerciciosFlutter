import 'package:flutter/material.dart';

class ImagesExample extends StatelessWidget {
  const ImagesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildImage('https://avatars.githubusercontent.com/u/195286345?v=4', 'Juan', null),
              buildImage(null, 'Antony', 'assets/images/antony-goat.gif'),
                buildImage('https://avatars.githubusercontent.com/u/195286345?v=4', 'Juan', null),
              buildImage(null, 'Antony', 'assets/images/antony-goat.gif'),
                buildImage('https://avatars.githubusercontent.com/u/195286345?v=4', 'Juan', null),
              buildImage(null, 'Antony', 'assets/images/antony-goat.gif'),
                buildImage('https://avatars.githubusercontent.com/u/195286345?v=4', 'Juan', null),
              buildImage(null, 'Antony', 'assets/images/antony-goat.gif'),
            ],
          ),
        )
      ],
    );
  }

}

  Widget buildImage(
    String? imageUrl,
    String? actorName,
    String? assetPath
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipOval(
          child: Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle
            ),
            child: imageUrl != null
                  ? Image.network(imageUrl, fit: BoxFit.cover)
                  : Image.asset(assetPath!, fit: BoxFit.cover),
            ),
          ),
      ],
    );
    
  }
