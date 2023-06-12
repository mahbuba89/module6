
import 'package:flutter/material.dart';

class ListtileCard extends StatelessWidget {
  const ListtileCard({super.key, required this.title, required this.subtitle, required this.img});

  final String title;
  final String subtitle;
  final String img;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(img,fit: BoxFit.fill,height: 70,width: 70,),
      title: Text(title), subtitle: Text(subtitle),);
  }}