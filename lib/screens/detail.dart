import 'package:flutter/material.dart';
import '../styles/app_colors.dart';

class Details extends StatefulWidget {
  final recipe;
  const Details({Key? key, this.recipe}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    dynamic recipe = widget.recipe;
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: AppColors.whiteshade,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left, color: Colors.white, size: 35),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height *.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter:
                  ColorFilter.mode(Colors.black.withOpacity(0.4),
                      BlendMode.srcOver),
                  image: AssetImage("assets/${recipe["image"]}"),
                fit: BoxFit.cover
              )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height *.5,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, -4),
                    blurRadius: 20
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      left: 30,
                      right: 30
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(recipe["name"],
                            style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ]
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 30,
                      right: 30
                    ),
                    child: Row(
                      children: [
                        Text(recipe["description"].toString(),
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            style: const TextStyle(color: Colors.grey)
                        ),
                      ]
                    )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 20,
                          left: 30,
                          right: 30
                      ),
                      child: Row(
                          children: const [
                            Text("Ingredients",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ]
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 10,
                          left: 30,
                          right: 30
                      ),
                      child: Row(
                          children: [
                            Text(recipe["ingredients"].toString(),
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),
                            ),
                          ]
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 10,
                          left: 30,
                          right: 30
                      ),
                      child: Row(
                          children: const [
                            Text("Steps",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ]
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 10,
                          left: 30,
                          right: 30
                      ),
                      child: Row(
                          children: [
                            Text(recipe["steps"].toString(),
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey
                              ),
                            ),
                          ]
                      )
                  ),
                ]
              )
            )
          )
        ]
      )
    );
  }
}