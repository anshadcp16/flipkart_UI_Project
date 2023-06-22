
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flipkart/screens/Accountpage.dart';
import 'package:flipkart/screens/Cartpage.dart';
import 'package:flipkart/screens/Categoriespage.dart';
import 'package:flipkart/screens/Notificationpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';




class homeScreen extends StatefulWidget {
 const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {



  bool isSwitched=false;

  final  List<AssetImage> imagesList = [ 
                AssetImage('assets/highlights images/flipkart highlights pic1.png'),
                AssetImage('assets/highlights images/flipkart highlights pic2.png'),
                AssetImage('assets/highlights images/flipkart highlights pic3.png'),
                AssetImage('assets/highlights images/flipkart highlights pic4.png'),

                ];




 final List<String> imageListSponored=[
    'assets/Sponsored image/sponsored image1.png',
     'assets/Sponsored image/sponsored image2.png',
    'assets/Sponsored image/sponsored image3.png',
      'assets/Sponsored image/sponsored image4.png', 
      'assets/Sponsored image/sponsored image5.png',   
      'assets/Sponsored image/sponsored image6.png',  
         
  ];  
   List<String> SponsoredSubtitleList=[
    'BikeDekho',
    'CarDekho',
    'Get Instant Delivery',
    'Insta EMI Card',
    'Unlimited Rewards',
    'Enjoy 10X Rewards',
  ];

  List<String>SponsoredtitleList=[
   'Explore Now',
    'Explore Now',
    'Buy Now',
    'Apply Now',
    'Apply Now',
    'Apply Now',
  ];


 



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SafeArea(
        child:ListView(
          children: [
           
           
       Row(
            children: [
                 SizedBox(width: 15,), 
             OutlinedButton.icon(onPressed: (){},
             style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            minimumSize: MaterialStateProperty.all<Size>(
            Size(165, 40))
             ),
          icon:Image(width:30,height:30,
                   image:AssetImage('assets/image/flipkartbuttunicon-removebg-preview.png')), 
                  label:Text('Flipkart',
                  style:TextStyle(
                color: Colors.white, fontStyle: FontStyle.italic,fontWeight: FontWeight.w800),),),
                SizedBox(width: 30,), 
              OutlinedButton.icon(onPressed: (){},
              style: ButtonStyle(
               side: MaterialStateProperty.all(BorderSide.none),
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 214, 211, 211)),
              minimumSize: MaterialStateProperty.all<Size>(
              Size(165, 40))
               ),
               icon:Image(width:30,height:30,
                   image:AssetImage('assets/image/flipkart_grocery_icon-removebg-preview.png')), 
                  label:Text('Grocery',
                  style:TextStyle(
                color: Colors.black, fontStyle: FontStyle.italic,fontWeight: FontWeight.w800),),),
             ],
      ),
        
              SizedBox(height: 10,),
            
       Row(
              children: [
                 SizedBox(width: 15,),
                Column(
                  children: [
                    Text('Brand Mall'),
                    SizedBox(height: 5,),
                     SizedBox(
                       width: 65,
                      height: 25,
                       child: FlutterSwitch(
                       width: 65,
                      height: 25,
                      valueFontSize: 13,
                       showOnOff: true,
                       value:isSwitched,
                       onToggle:(value){
                      setState(() {
                        isSwitched=value;
                       });
                       }),
                     ),
                      
                  ],
                ),
                SizedBox(width: 15,),
                
                Expanded(
                  child: TextField(decoration:InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 5,bottom: 5),
                    border: OutlineInputBorder(),
                    hintText: 'Search for products',
                    prefixIcon: Icon(Icons.search),
                    
                    ),
                    ),
                ),
                SizedBox(width:15,) ],
      ),
      
           
      CarouselSlider(
                 items: imagesList.map((image) {
                  return Container(
                          margin: EdgeInsets.all(5.0),
                       child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                           child: Image.asset(
                        image.assetName,
                        width:394.0,
                         ),
                        ),
                        );
                     }).toList(),
                        options: CarouselOptions(
                        height: 200.0,
                         autoPlay: true,
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                            viewportFraction:1,
                          ),
      ),
      
      
      
       SingleChildScrollView(
      scrollDirection: Axis.horizontal,
       child: Row(
        children: [
      Column(
        children: [
          CircleAvatar(backgroundImage: AssetImage('assets/icon images/supercoins icon.png',),
          radius: 30,
          ),
          Text('Supercoins',
          style:TextStyle(fontWeight: FontWeight.w800,fontSize: 13),)
        ],
      ),
      SizedBox(width: 5,),
       Column(
        children: [
          CircleAvatar(backgroundImage: AssetImage('assets/icon images/NextGenBrands icon.png',),
          radius: 30,
          ),
          
          Text('NextGen Brands',
           
          style:TextStyle(fontWeight: FontWeight.w800,fontSize: 13),
          )
        ],
      ),
        SizedBox(width: 5,),
       Column(
        children: [
          CircleAvatar(backgroundImage: AssetImage('assets/icon images/credit icon.png',),
          radius: 30,
          ),
          Text('Credit',
          style:TextStyle(fontWeight: FontWeight.w800,fontSize: 13),)
        ],
      ),
        SizedBox(width: 5,),
         Column(
        children: [
          CircleAvatar(backgroundImage: AssetImage('assets/icon images/Win a prize icon.png',),
          radius: 30,
          ),
          Text('Win a Prize',
          style:TextStyle(fontWeight: FontWeight.w800,fontSize: 13),)
        ],
      ),
        SizedBox(width: 5,),
           Column(
        children: [
          CircleAvatar(backgroundImage: AssetImage('assets/icon images/LiveShop icon.png',),
          radius: 30,
          ),
          Text('LiveShop+',
          style:TextStyle(fontWeight: FontWeight.w800,fontSize: 13),)
        ],
      ),
        SizedBox(width: 5,),
              Column(
        children: [
          CircleAvatar(backgroundImage: AssetImage('assets/icon images/EMI icon.png',),
          radius: 30,
          ),
          Text('EMI',
          style:TextStyle(fontWeight: FontWeight.w800,fontSize: 13),)
        ],
      ),
        SizedBox(width: 5,),
                 Column(
        children: [
          CircleAvatar(backgroundImage: AssetImage('assets/icon images/students club icon.png',),
          radius: 30,
          ),
          Text('Student Club',
          style:TextStyle(fontWeight: FontWeight.w800,fontSize: 13),)
        ],
      ),
        SizedBox(width: 5,),
                 Column(
        children: [
          CircleAvatar(backgroundImage: AssetImage('assets/icon images/camara icon.png',),
          radius: 30,
          ),
          Text('Camera',
          style:TextStyle(fontWeight: FontWeight.w800,fontSize: 13),)
        ],
      ),
      SizedBox(width: 5,)
       ],
                    
        ),
       ),
       
      Padding(padding: EdgeInsets.only(top: 15)),
      
       Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: [
        Container(
      height:130,
      width: 110,
       decoration: BoxDecoration(
        color: Color.fromARGB(255, 214, 209, 209),
        borderRadius: BorderRadius.circular(10),
          ),
         
         child:Column(
          
           children: [
              Padding(padding:EdgeInsets.only(top: 8)),
             Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(  
                 image: AssetImage('assets/main offers images/Laplop deals.png')),
              ),
             ),
             Padding(padding:EdgeInsets.only(top: 5)),
             Text('Laptop Deals',style: TextStyle(fontWeight: FontWeight.w300),),
             Padding(padding:EdgeInsets.only(top: 5)),
             Text('From ₹14,990',style: TextStyle(fontWeight: FontWeight.w800),)
           ],
         ),
         
         
        ),
      
      
        Container(
      height:130,
      width: 110,
       decoration: BoxDecoration(
        color: Color.fromARGB(255, 214, 209, 209),
        borderRadius: BorderRadius.circular(10),
          ),
         
         child:Column(
          
           children: [
              Padding(padding:EdgeInsets.only(top: 8)),
             Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(  
                 image: AssetImage('assets/main offers images/Extra.png')),
              ),
             ),
             Padding(padding:EdgeInsets.only(top: 5)),
             Text('Extra ₹75 off',style: TextStyle(fontWeight: FontWeight.w300),),
             Padding(padding:EdgeInsets.only(top: 5)),
             Text('Sale is Live',style: TextStyle(fontWeight: FontWeight.w800),)
           ],
         ),
         
         
        ),
      
      
        
        Container(
      height:130,
      width: 110,
       decoration: BoxDecoration(
        color: Color.fromARGB(255, 214, 209, 209),
        borderRadius: BorderRadius.circular(10),
          ),
         
         child:Column(
          
           children: [
              Padding(padding:EdgeInsets.only(top: 8)),
             Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(  
                 image: AssetImage('assets/main offers images/BT caliing.png'),width: 100,),
              ),
             ),
             Padding(padding:EdgeInsets.only(top: 5)),
             Text('BT Calling | 1.83"',style: TextStyle(fontWeight: FontWeight.w300,),),
             Padding(padding:EdgeInsets.only(top: 5)),
             Text('Sale price ₹1,499 ',style: TextStyle(fontWeight: FontWeight.w800),)
           ],
         ),
         
         
        ),
       
      ],
      
       ),
      
      
      
      
       Padding(padding: EdgeInsets.only(top: 10)),
       Divider(color:Colors.black,thickness: .2,),
      Padding(
        padding: EdgeInsets.only(left: 15,top: 5,bottom: 5),
        child: Text('Sponsored',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600))
        ),
       Divider(color:Colors.black,thickness: .3,),
      
      
      Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child:   SizedBox(
          height:330,
           width:360,
          child:GridView.builder(
         itemCount: imageListSponored.length,
         physics: ScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:3,
         crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent:160,
        
        ),
      itemBuilder:(context,index){
            return Container(
         decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),
         color: Color.fromARGB(255, 206, 202, 193),
           ),
           child: Column(
            children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                  child: Image.asset(imageListSponored[index],
                  )
                  ),
               Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("${SponsoredSubtitleList[index]}",style: TextStyle(fontSize: 13),),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding:const EdgeInsets.only(top: 1),
                        child: Text("${SponsoredtitleList[index]}",style: TextStyle(fontWeight: FontWeight.w700),),)
                    ],
                  )
      
                
                ],
                
              
               )
            ],
           ),
          );
      
        
      
         }),
      
      ),
      ),
      
      
      
      
      ] ,
             
       ),
      
      ),
      
 );
  }
 }