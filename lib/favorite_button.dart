import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isFavorite = false;
  int _favoriteCount = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workshop 03: Favorite Button'),
      ),
      body: Column(
        children: [
          //Image of tourist attraction
          const Image(
            image: AssetImage('assets/images/view.jpg'),
            fit: BoxFit.cover,
          ),
          //Content
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                //Title & Favorite button
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    //Title
                    Expanded(
                      child: Container(
                        height: 60,
                        color: null,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Name of Location
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Text(
                                'Oeschinen Lake Campground',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            //Location
                            Text(
                              'Kandersteg, Switzerland',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //Favorite button
                    Container(
                      height: 60,
                      color: null,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (_isFavorite) {
                                  _favoriteCount -= 1;
                                  _isFavorite = false;
                                } else {
                                  _favoriteCount += 1;
                                  _isFavorite = true;
                                }
                              });
                            },
                            icon: (_isFavorite
                                ? const Icon(Icons.star)
                                : const Icon(Icons.star_border)),
                            color: Colors.red[500],
                            iconSize: 30,
                          ),
                          Text(
                            '$_favoriteCount',
                            style: const TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Button menu
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          //height: 50,
                          color: null,
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.phone),
                                color: Colors.blue,
                                iconSize: 40,
                              ),
                              const Text(
                                'CALL',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          //height: 50,
                          color: null,
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.near_me_sharp),
                                color: Colors.blue,
                                iconSize: 40,
                              ),
                              const Text(
                                'ROUTE',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          //height: 50,
                          color: null,
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.share),
                                color: Colors.blue,
                                iconSize: 40,
                              ),
                              const Text(
                                'SHARE',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Detail
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
