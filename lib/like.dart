import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  bool counter = false;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EX 5 : StateFullWidget',
        ),
      ),
      body: Column(
        children: [
          Image.network('https://www.chillpainai.com/src/wewakeup/scoop/images/f29a88bf9d77f63a9b01fbe08274993cd52cee8c.jpg'),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Eiffel Tower',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight:FontWeight.bold ,
                    ),),
                    Text("Locally nick named 'La dame de fer'"),
                  ],
                ),
                Row(
                  children: [
                    

                    LikeButton(
                      size: 35.0,
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          isLiked? Icons. star : Icons. star_border_outlined,
                          size: 35.0,
                          color: isLiked? const Color.fromARGB(255, 255, 121, 121) : const Color.fromARGB(255, 255, 121, 121),
                        );
                      },
                      likeCount: 0,
                      countBuilder: (int ? count, bool isLiked, String text){
                        var color = isLiked? Colors.black : const Color.fromARGB(255, 0, 0, 0);
                        Widget result;
                        if(count == 0){
                          result = Text('Liked',
                          style: TextStyle(color:color),);
                        }else{
                          result = Text(
                            text,
                          style: TextStyle(color:color),);
                          return result;
                        }
                      },
                      ),
                    
                    
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Color.fromARGB(255, 240, 172, 172),
                      size: 20.0,
                    ),
                    Text('CALL'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.map,
                      color: Color.fromARGB(255, 240, 172, 172),
                      size: 20.0,
                    ),
                    Text('ROUTE'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Color.fromARGB(255, 240, 172, 172),
                      size: 20.0,
                    ),
                    Text('SHARE'),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(18, 25, 18, 0),
            child: Text(
                'Lorem esetting industrince the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
          ),
        ],
      ),
    );
  }
}
