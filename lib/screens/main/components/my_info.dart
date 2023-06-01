import 'package:flutter/material.dart';
class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.25,
        child: Container(
          color: Color(0xff242430),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Spacer(flex: 2,),
              CircleAvatar(
                radius: 50,
                backgroundImage:Image.asset('images/karan.jpg').image,
              ),
              Spacer(),
              Text('Karan Vaswani', style: Theme.of(context).textTheme.subtitle2),
              const Text('Flutter & FullStack Web Developer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                ),),
              Spacer(flex: 2,),
            ],
          ),
        )
    );
  }
}