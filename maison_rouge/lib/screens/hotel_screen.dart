import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatefulWidget {
  HotelScreen({Key? key}) : super(key: key);

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          height: 300,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/img.jpeg'), fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bienvenue à',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                'Maison Rouge\nCotonou',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Gap(200),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Nos Services --------',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    )
                  ],
                ),
                width: double.infinity,
                height: 1200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
