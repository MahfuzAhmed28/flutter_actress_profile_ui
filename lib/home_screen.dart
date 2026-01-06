import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 400,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/emma.jpg',),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(0.3)
                          ],
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FadeInUp(
                              child: Text('Emma Watson',style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                FadeInUp(
                                  child: Text('60 Videos',style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),),
                                ),
                                SizedBox(width: 50,),
                                FadeInUp(
                                  child: Text('240k Subscribers',style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInUp(
                          child: Text('Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended the Dragon School.',style: TextStyle(
                            color: Colors.grey,
                            height: 1.5
                          ),),
                        ),
                        SizedBox(height: 40,),
                        FadeInUp(
                          child: Text('Born',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),),
                        ),
                        SizedBox(height: 10,),
                        FadeInUp(
                          child: Text('April, 15th 1990, Paris, France',style: TextStyle(
                              color: Colors.grey
                          ),),
                        ),
                        SizedBox(height: 20,),
                        FadeInUp(
                          child: Text('Nationality',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),),
                        ),
                        SizedBox(height: 10,),
                        FadeInUp(
                          child: Text('British',style: TextStyle(
                              color: Colors.grey
                          ),),
                        ),
                        SizedBox(height: 20,),
                        FadeInUp(
                          child: Text('Videos',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),),
                        ),
                        SizedBox(height: 20,),
                        FadeInUp(
                          child: Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                makeVideo(image: 'assets/images/emma-1.jpg'),
                                makeVideo(image: 'assets/images/emma-2.jpg'),
                                makeVideo(image: 'assets/images/emma-3.jpg'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 120,),


                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.yellow[700]
                ),
                child: Align(
                  child: Text('Follow',style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget makeVideo({image}){
    return AspectRatio(
      aspectRatio: 1.5/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(

            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(0.3)
              ],
            ),
          ),
          child: Align(
            child: Icon(Icons.play_arrow,color: Colors.white,size: 50,),
          ),
        ),
      ),
    );
  }
}
