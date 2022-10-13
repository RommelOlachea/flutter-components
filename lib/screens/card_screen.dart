import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imgUrl:
                'https://www.creativefabrica.com/wp-content/uploads/2021/03/13/beautiful-landscape-in-sunset-Graphics-9546561-1.jpg',
            name: 'Un Hermoso Paisaje',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imgUrl:
                'https://sh-assets.holidu.com/imagecache/blog-photos/17596_Fill_800_800.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imgUrl:
                'https://images.pexels.com/photos/1619317/pexels-photo-1619317.jpeg?cs=srgb&dl=pexels-james-wheeler-1619317.jpg&fm=jpg',
          ),
        ],
      ),
    );
  }
}
