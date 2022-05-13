// ignore: file_names
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:soiltesting/colorPicker.dart';
import 'package:soiltesting/imagePickerCamera.dart';
import 'package:soiltesting/imagePickerGallery.dart';
import 'package:soiltesting/mainScreenButton.dart';

class HomePage extends StatefulWidget {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Soil Testing"),
        elevation: 0,
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: size.height / 40,
                    color: Colors.green,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: const Radius.circular(50.0),
                          bottomRight: const Radius.circular(50.0)),
                    ),
                    child: CarouselSlider(
                      items: [
                        //1st Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.holganix.com/hubfs/social-suggested-images/plant_growing.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //2nd Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://cf.ltkcdn.net/garden/images/orig/110154-400x262-Planting_Tomatoes.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //3rd Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://i0.wp.com/forestrypedia.com/wp-content/uploads/2018/06/Planting-Techniques-1.jpeg?resize=720%2C445&ssl=1'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //4th Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/04/05/19/pp-soil-rf-gettyc.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        //5th Iimage slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://cff2.earth.com/uploads/2018/05/02113646/Plants-talk-to-each-other-through-the-soil-to-determine-growth.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                      //Slider Container properties
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 5),
                        autoPlayAnimationDuration: Duration(milliseconds: 1000),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        enableInfiniteScroll: true,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                  Container(
                    height: size.height / 15,
                  ),
                  Container(
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 10,
                      children: [
                        GestureDetector(
                          child: CategoryCard(
                            buttonIcon: Icon(
                              Icons.camera_alt,
                              size: 40,
                            ),
                            title: 'Scan Image',
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => ImagePickerCamera()));
                          },
                        ),
                        GestureDetector(
                          // ignore: prefer_const_constructors
                          child: CategoryCard(
                            buttonIcon: Icon(
                              Icons.image,
                              size: 40,
                              color: Colors.black,
                            ),
                            title: 'Get Image From Gallery',
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => ImagePickerGallery()));
                          },
                        ),
                        GestureDetector(
                          // ignore: prefer_const_constructors
                          child: CategoryCard(
                            buttonIcon: Icon(
                              Icons.invert_colors,
                              size: 40,
                              color: Colors.black,
                            ),
                            title: 'Color Picker',
                          ),

                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => colorPicker()));
                          },
                        ),
                        GestureDetector(
                          // ignore: prefer_const_constructors
                          child: CategoryCard(
                            buttonIcon: Icon(
                              Icons.history_sharp,
                              size: 40,
                              color: Colors.black,
                            ),
                            title: 'Recent History',
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
