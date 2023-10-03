import 'package:flutter/material.dart';

class ItemNewsFeed extends StatelessWidget {
  final String title, image;
  const ItemNewsFeed({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(.8), Colors.black.withOpacity(.1)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [.2, .8]
          )
        ),
        child: Text(title, style: Theme.of(context).textTheme.titleMedium?.copyWith(
          color: Colors.white
        ),),
      ),
    );
  }
}
