import 'package:flutter/material.dart';

class BookDetailPage extends StatelessWidget {

  final booklist;
  const BookDetailPage({
    Key? key,
    required this.booklist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: 
      SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.topCenter,
            children: [
             Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: SizedBox(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 3,
                      child: Image.network(booklist['imageLink'])
                      )),
                 ),
                 Text(
                      booklist['title'],
                      style: const TextStyle(
                        color: Colors.black87,
                        fontFamily: 'ReadexRegular',
                        fontSize: 14
                      ),
                    ),
                 Text(
                      booklist['author'],
                      style: const TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'ReadexRegular',
                          fontSize: 10.0
                      ),
                    ),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: const [
                   Icon(Icons.star,size: 12,color: Color.fromARGB(255, 230, 209, 26),),
                   Icon(Icons.star,size: 12,color: Color.fromARGB(255, 230, 209, 26),),
                   Icon(Icons.star,size: 12,color: Color.fromARGB(255, 230, 209, 26),),
                   Icon(Icons.star,size: 12,color: Color.fromARGB(255, 230, 209, 26),),
                   Icon(Icons.star,size: 12,color: Color.fromARGB(255, 230, 209, 26),)
                 ],)
               ],
             ),
             Positioned(
               top: MediaQuery.of(context).size.height / 2.8,
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20.0),
                   color: Colors.white,
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(18.0),
                   child: RichText(text:const TextSpan(style: TextStyle(color: Colors.black,fontFamily: 'ReadexLight',fontSize: 18,wordSpacing: 5,letterSpacing: 3),
                   text: "What is Lorem Ipsum?Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),),
                 ),
               ),
             )
                  
          ],),
        ),
      )
      ),
    );
  }
}