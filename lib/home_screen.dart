import 'package:flutter/material.dart';
import 'package:untitled1/card.dart';
import 'package:untitled1/listtile_card.dart';

class PhotoGalleryScreen extends StatelessWidget {
  const PhotoGalleryScreen({
    super.key,
  });

  defaultSnackbar(context, {required msg}) =>
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          defaultSnackbar(context, msg: 'Photos Uploaded Successfully!');
        },
        child: Icon(Icons.cloud_upload),
      ),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Photo Gallery'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Welcome to My Photo Gallery!',
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineSmall,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder()),
              ),
            ),
            Container(
              child: Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 10,
                children: [
                  ImageCard(
                      img:
                      'https://upload.wikimedia.org/wikipedia/commons/3/36/Hopetoun_falls.jpg',
                      onTap: () {
                        defaultSnackbar(context, msg: 'Clicked on photo!');
                      }),
                  ImageCard(
                      img:
                      'https://img.freepik.com/premium-photo/natural-landscape-huangguoshu-waterfall-guizhou_1417-8034.jpg',
                      onTap: () {
                        defaultSnackbar(context, msg: 'Clicked on photo!');
                      }),
                  ImageCard(
                      img:
                      'https://www.shutterstock.com/image-photo/high-mountain-morning-time-beautiful-260nw-1384588922.jpg',
                      onTap: () {
                        defaultSnackbar(context, msg: 'Clicked on photo!');
                      }),
                  ImageCard(
                      img:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/24701-nature-natural-beauty.jpg/1280px-24701-nature-natural-beauty.jpg',
                      onTap: () {
                        defaultSnackbar(context, msg: 'Clicked on photo!');
                      }),
                  ImageCard(
                      img:
                      'https://cdn.pixabay.com/photo/2015/12/01/20/28/forest-1072828_1280.jpg',
                      onTap: () {
                        defaultSnackbar(context, msg: 'Clicked on photo!');
                      }),
                  ImageCard(
                      img:
                      'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bmF0dXJhbHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',
                      onTap: () {
                        defaultSnackbar(context, msg: 'Clicked on photo!');
                      }),
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListtileCard(
                  title: 'Sample Photo 1',
                  subtitle: 'Category 1',
                  img: 'https://cdn.pixabay.com/photo/2014/03/24/17/06/bird-295026_1280.png',
                ),
                ListtileCard(
                  title: 'Sample Photo 2',
                  subtitle: 'Category 2',
                  img:'https://cdn.pixabay.com/photo/2012/04/25/00/03/dove-41260_1280.png',
                ),
                ListtileCard(
                  title: 'Sample Photo 3',
                  subtitle: 'Category 3',
                  img:'https://cdn.pixabay.com/photo/2016/05/26/14/39/parrot-1417286_1280.png',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
