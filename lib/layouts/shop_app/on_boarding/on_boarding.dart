import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task/layouts/shop_app/log_in/login_screen.dart';
import 'package:task/shared/components/components.dart';
import 'package:task/shared/themes/themes.dart';

import '../../../network/local/cache_helper.dart';

class BoardingModel
{
  final String image;
  final String title;
  final String body;

  BoardingModel(this.image, this.title, this.body);
}
class OnBoardingScreen extends StatefulWidget {

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  var pageController = PageController();
  List<BoardingModel> boarding=
  [
    BoardingModel("assets/images/onBoard.jpg","on board 1 title","On board 1 body" ),
    BoardingModel("assets/images/onBoard.jpg","on board 2 title","On board 2 body" ),
    BoardingModel("assets/images/onBoard.jpg","on board 3 title","On board 3 body" ),
  ];

  bool isLast = false;

  void submit() {
    CacheHelper.saveData(key: "onBoarding", value: true).then((value)
    {
      if(value)
        {
          navigateAndFinish(context,LogInScreen());
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          MaterialButton(onPressed: submit,
          child: const Text("Skip",style: TextStyle(
            color: PrimaryColour,
            fontWeight: FontWeight.bold,
            fontSize: 17
          ),),)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                  controller: pageController,
                  onPageChanged: (index)
                {
                  if(index==(boarding.length-1))
                    {
                      setState(() {
                        isLast=true;
                      });
                    }
                  else
                    {
                      setState(() {
                        isLast=false;
                      });
                    }
                },
                  itemBuilder:(context,index)=>buildBoardingItem(boarding[index]),
                  itemCount: boarding.length ,
              ),
            ),
            const SizedBox(
                height: 30),
            Row(
              children: [
                SmoothPageIndicator(
                    controller: pageController,
                    count: boarding.length,
                    effect: ExpandingDotsEffect(
                      dotColor: HexColor("#d2d2db"),
                      activeDotColor:PrimaryColour ,
                      dotHeight:10 ,
                      expansionFactor: 4,
                      dotWidth: 10,
                      spacing: 5,

                    ),
                ),
                const Spacer(),
                FloatingActionButton(onPressed: ()
                {
                  if(isLast)
                    {
                      submit();
                    }
                  else
                    {
                      pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.fastEaseInToSlowEaseOut);
                    }
                },
                  backgroundColor: PrimaryColour,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                   child:const Icon(Icons.arrow_forward_ios, color: Colors.white,),
                )
              ],
            )

          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel Model) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
          child: Image(image: AssetImage(Model.image))),
      const SizedBox(
        height: 30,),
      Text(
        Model.title,style: const TextStyle(
        fontSize: 30,
      ),),
      const SizedBox(
        height: 15,),
      Text(
        Model.body,style: const TextStyle(
        fontSize: 20,


      ),),
      const SizedBox(
        height: 50,),

    ],
  );
}
