

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Catogoriespage extends StatefulWidget {
  const Catogoriespage({super.key});

  @override
  State<Catogoriespage> createState() => _CatogoriespageState();
}

class _CatogoriespageState extends State<Catogoriespage> {

   List<String>categoriesicons=[
           'assets/categoriesicons/categories icon1.png',
           'assets/categoriesicons/categories icon2.png',
           'assets/categoriesicons/categories icon3.png',
           'assets/categoriesicons/categories icon4.png',
           'assets/categoriesicons/categories icon5.png',
           'assets/categoriesicons/categories icon6.png',
           'assets/categoriesicons/categories icon7.png',
           'assets/categoriesicons/categories icon8.png',
           'assets/categoriesicons/categories icon9.png',
           'assets/categoriesicons/categories icon10.png',
           'assets/categoriesicons/categories icon11.png',
           'assets/categoriesicons/categories icon12.png',
           'assets/categoriesicons/categories icon13.png',
           'assets/categoriesicons/categories icon14.png',
           'assets/categoriesicons/categories icon15.png',
           'assets/categoriesicons/categories icon16.png',
           'assets/categoriesicons/categories icon17.png',
           'assets/categoriesicons/categories icon18.png',
           'assets/categoriesicons/categories icon19.png'
       ];

       List<String>categoriesiconstitlesList=[
         'Top Offers',
         'Grocery',
         'Mobiles',
         'Fashion',
         'Electronics',
         'Home',
         'Personal Care',
         'Appliances',
         'Toys & Baby',
         'Furniture',
         'Flights & Hotels',
         'Insurance',
         'Sports',
         'Nutrition & more',
         'Bikes & Cars',
         'Gift Cards',
         'Medicines',
         'Home Services',
         'Sell-Back'
       ];


       List<String>TrendingStoresList=[
       'assets/Trending Stores image/Trending Stores image1.png',
       'assets/Trending Stores image/Trending Stores image2.png',
       'assets/Trending Stores image/Trending Stores image3.png',
       'assets/Trending Stores image/Trending Stores image4.png',
       'assets/Trending Stores image/Trending Stores image5.png',
       'assets/Trending Stores image/Trending Stores image6.png',
       'assets/Trending Stores image/Trending Stores image7.png',
       'assets/Trending Stores image/Trending Stores image8.png',
       'assets/Trending Stores image/Trending Stores image9.png',
       'assets/Trending Stores image/Trending Stores image10.png'
       ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Categories'),
          actions:<Widget> [
            IconButton(onPressed: (){}, icon:Icon(Icons.search)),
             IconButton(onPressed: (){}, icon:Icon(Icons.mic)),   
          ],
          
        ),
        body: ListView(
          children: [
            Padding(
              padding:const EdgeInsets.only(left: 5,right: 5,top: 15,),
              child:Container(
                height: 570,
                width: 390,
                child: GridView.builder(
                  itemCount: categoriesicons.length,
                  physics: ScrollPhysics(),
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:4,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    mainAxisExtent: 110,
                    ), 
                  itemBuilder:(context,index){
                    return Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(categoriesicons[index]),),
                    
                    
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text("${categoriesiconstitlesList[index]}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                                )
                              ],
                    
                    
                            )
                        ],
                      ),
                    );
                  }),
              ),
        
               ),
               Divider(color: Colors.black,thickness:.3 ,),
        
        
               Row(
                 children: [
                   Text('Trending Stores',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                   Padding(
                     padding: const EdgeInsets.only(top: 5),
                     child: Container(
                      height: .8,
                      width: 245,
                      color: Color.fromARGB(146, 2, 2, 2),
                     ),
                   )
                 ],
               ),
        
                Divider(color: Colors.black,thickness:.3 ,),
        
        
                      Padding(
              padding:const EdgeInsets.only(left: 20,right: 20,top: 15,),
              child: SizedBox(
                height: 920,
                width: 390,
                child: GridView.builder(
                  itemCount:TrendingStoresList.length,
                  physics: ScrollPhysics(),
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 168,
                    ), 
                  itemBuilder:(context,index){
                    return Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      ),
                      child: Column(
                        children: [
                             ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(TrendingStoresList[index],
                     
                  )
                             )
                            
                        ],
                      ),
                    );
                  }),
              ),
        
               ),
        
              
        
               
            
              
          ],
        
        ),


        ),
        
      );

  }
}