import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height*0.06 ,
        padding: EdgeInsets.only(left: 20, right: 5),
        margin: EdgeInsets.only(right: 50, left: 50, bottom: 15),
        child: TextField(
            textInputAction: TextInputAction.newline,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              border: InputBorder.none ,
              hintText: 'Search for your emotion',
              hintStyle: TextStyle(fontSize: 14),
              suffixIcon: InkWell (
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SearchResultPage(),
                    // ) );
                  },
                  child: Icon(Icons.search)),

            ),
            maxLines: null
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey.shade300,

        ),
      ),
    );


  }
}
