import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../frostedglass.dart';

void main() => runApp(MaterialApp(
  home: AaharPage(),
));


class AaharPage extends StatefulWidget {
  @override
  _AaharPageState createState() => _AaharPageState();
}
class _AaharPageState extends State<AaharPage>
{
  final double coverHeight = 280;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    final top = coverHeight;
    return Scaffold(
      backgroundColor: Color(0xff6379c9),
      body: Stack(
        clipBehavior: Clip.none,
        alignment :Alignment.center,
        children: [
          buildCoverImage(),
          Positioned (
            top : top,
            child : buildProfileImage(),
          ),
        ],
      ),
    );
  }
  Widget buildCoverImage() => Container(
    color: Color(0xff6379c9),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child:   Image(
        image: AssetImage('assets/pics/jaggi.png'),
      ),
    ),

    width: double.infinity,
    height: coverHeight,



  );

  Widget buildProfileImage()=>Container(
    color: Color(0xff6333a2),
    child:Column(
      children: [
        SizedBox(height: 200.h,
            width:200.h,
        child:Flexible(
          child: Text('AAHAR PAGE '),
        )
        ),
      ],
    ),

    );



}