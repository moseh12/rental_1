import 'package:flutter/material.dart';
import 'package:rental/components/aboutus_componetns.dart';




class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
           bannerForAboutUS(context),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. \nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going le of text. ',textAlign: TextAlign.center,style: TextStyle(color: Colors.black54),),
              ),


           Container(
             height: 130,
             width: MediaQuery.of(context).size.width,
             padding: const EdgeInsets.symmetric(vertical: 8.0),
             child: listViewAboutUs(),
           ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('CopyRight ',style: TextStyle(fontWeight: FontWeight.bold),),
                  Container(
                    height: 11,
                    width: 11,decoration: BoxDecoration(
                    border: Border.all(color:Colors.black,),borderRadius: BorderRadius.circular(40),

                  ),
                    child: const Center(child: Text('C',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),)),
                  ),  const Text(' 2020 Real Estate',style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 10,),
              const Text('www.realestate.net',style: TextStyle(fontWeight: FontWeight.w500),)
             ,const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
