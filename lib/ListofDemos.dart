import 'package:flutter/material.dart';

class ListofDemos extends StatelessWidget{

final int i;

  ListofDemos({Key key , this.i }) : super(key : key);
  
 final cataloglist = [ "Animation" , "Design" , "Forms" , "Gesture" , "Images" ,"Lists" , "Navigation" , "Networking" ];
  final catalogIconlist = [ "animation" , "design" , "form" , "gesture" , "image" ,"list" , "navigation" , "networking" ];

 final finalList = [];


  final animationList = ["Animate a page route transition",
                        "Animate a widget using a physics simulation",
                        "Animate the properties of a container",
                        "Fade a widget in and out"];

  final designList = ["Add a Drawer to a screen",
                      "Display a snackbar",
                      "Export fonts from a package",
                      "Update the UI based on orientation",
                      "Use a custom font",
                      "Use themes to share colors and font styles",
                      "Work with tabs"];

  final formsList = ["Build a form with validation",
                      "Create and style a text field",
                      "Focus and text fields",
                      "Handle changes to a text field",
                      "Retrieve the value of a text field"];    

  final gestureList = ["Add Material touch ripples",
                      "Handle taps",
                      "Implement swipe to dismiss"];

  
  final imagesList = ["Display images from the internet",
                    "Fade in images with a placeholder",
                    "Work with cached images"];

  final listsList = ["Create a grid list",
                    "Create a horizontal list",
                    "Create lists with different types of items",
                    "Place a floating app bar above a list",
                    "Use lists",
                    "Work with long lists"];

  final navigationList = ["Animate a widget across screens"
                        "Navigate to a new screen and back",
                        "Navigate with named routes",
                        "Pass arguments to a named route",
                        "Return data from a screen",
                        "Send data to a new screen"];

  final networkingList = ["Fetch data from the internet",
                          "Make authenticated requests",
                          "Parse JSON in the background",
                          "Work with WebSocket"];


  @override
  Widget build(BuildContext context) {

      switch(i){

        case 0 : finalList.addAll(animationList);
                  break ;

        case 1 : finalList.addAll(designList);
                  break ;
                
        case 2 : finalList.addAll(formsList);
                  break ;
                  
        case 3 : finalList.addAll(gestureList);
                  break ;
                  
        case 4 : finalList.addAll(imagesList);
                  break ;
                  
        case 5 : finalList.addAll(listsList);
                  break ;
                  
        case 6 : finalList.addAll(navigationList);
                  break ;

        case 7 : finalList.addAll(networkingList);
                  break;
      }


    return Scaffold(
      
      appBar: AppBar(

        title: Text(cataloglist[i]),
        centerTitle: true,
        elevation: 15,

      ),
      
      body : 
      // GestureDetector(
        
      //   child : 
        
        Container(

         child : ListView.builder(

          itemCount: finalList.length,
          
          itemBuilder: (context , index){

            return GestureDetector(
                    
            child : ListTile(

                title: Text(finalList[index].toString(),
                        style: TextStyle(fontSize: 18)),

                 trailing: Icon(Icons.arrow_right),

             ),
             
               onTap: (){

          switch(cataloglist[i]){

              case "Animation" : 

                print("==="+finalList[index]);

               switch (index) {
                      case 0: 
                          Navigator.of(context).pushNamed('/catalog');                        
                          break;

                      case 3: 
                          Navigator.of(context).pushNamed('/');                        
                          break;
                    }
                    break;

              
              case "Design" : print("design");
                                break;

              case "Forms" :  print("forms");
                              break;


              case "Gesture" :

              case "Images" :

              case "Lists" :

              case "Navigation" :

              case "Networking" :


          }



          // if(cataloglist[i] == "Animation"){


          // }else if (cataloglist[i] == "Design"){

          // }else if (cataloglist[i] == "Forms"){

          // }else if (cataloglist[i] == "Gesture"){

          // }else if (cataloglist[i] == "Images"){

          // }else if (cataloglist[i] == "Lists"){

          // }else if (cataloglist[i] == ""){

          // }else if (cataloglist[i] == ""){

          // }

      },
             
             
              );
          },

          ),

      ),

    
    // ),
      
      );
  }  
}

// class DisplayAllList extends StatelessWidget{

//     DisplayAllList({Key key , this.i}) : super(key: key);

   
  
//   @override
//   Widget build(BuildContext context) {


//     switch(i){


//     }


//     return Scaffold(

       

//         body: getFinalList(i);
//         // ListView.builder(

//         //   itemCount: finalList.length,
          
//         //   itemBuilder: (context , index){


//         //       return ListTile(

//         //         title: Text(finalList[index].toString()),

//         //          trailing: Icon(Icons.arrow_right),

//         //       );


//         //   },

//         // ),




//     );
//   }

// void  getFinalList(int i){


//     return null;
// }

// }


