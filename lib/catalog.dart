import 'package:flutter/material.dart';


class Catalog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

          appBar: AppBar(

            title: Text("Catalog"), 
            centerTitle: true,
            elevation: 15,
          
          ),

        body: AllitemList(),
      );

    
  }

}


class AllitemList extends StatelessWidget{

  AllitemList({Key key}) : super(key: key);

  final cataloglist = [ "Animation" , "Design" , "Forms" , "Gesture" , "Images" ,"Lists" , "Navigation" , "Networking" ];

  final catalogIconlist = [ "animation" , "design" , "form" , "gesture" , "image" ,"list" , "navigation" , "networking" ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      body:OrientationBuilder(
        
        builder: (context, orientation) { 

          return GridView.count(

          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,

            children:new  List<Widget>.generate(cataloglist.length , (index){

              return GestureDetector (
                
                child :GridTile(

                  child: Card(

                      margin: EdgeInsets.all(8),
                      elevation: 5,
                      child : Column (

                        children: <Widget>[

                          Container(
                            margin: EdgeInsets.only(top: 25),
                           child : Image.asset('images/'+catalogIconlist[index]+'.png',
                            width:75,height:75,
                           alignment: Alignment.center,
                                                     
                           ),
                          ),
                          
                          Container(
                          
                          margin: EdgeInsets.only(top:30),
                          alignment: Alignment.bottomCenter,
                           child : Text(cataloglist[index],
                           style: TextStyle(fontSize: 20),
                             ),  
                          ),

              
                          
                        ],
                        
                        
                      ),

                
                  ),                
              ),

              onTap: (){

              print("ontap is called");

             Navigator.of(context).pushNamed('/ListofDemos',arguments : index,);
             
              },
            );
            })
            
          );
         }     
      ,),
      );
  }
}


