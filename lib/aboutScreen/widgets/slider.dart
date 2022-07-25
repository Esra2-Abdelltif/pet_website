import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_app/Bloc/cubit.dart';
import 'package:orange_app/Bloc/states.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderContainer extends StatelessWidget {
  const SliderContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AppCubit,AppStates>(
      listener: (BuildContext context,AppStates state)
      {
      },

      builder: (BuildContext context ,AppStates state) {
        AppCubit cubit = AppCubit.get(context);

        return Container(color: Colors.brown,width: double.infinity,
          child:  Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height:350 ,
                  initialPage: 0, //frist image
                  enableInfiniteScroll: true , //scroll lw7dh
                  reverse: false,//يقلب في تجاه واحد
                  aspectRatio: 16/9,
                  viewportFraction: 0.9,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                  enlargeCenterPage: true,
                  onPageChanged: ((index, reason)=> AppCubit.get(context).ChangeindexCarouselSider(index)),
                  scrollDirection: Axis.horizontal,
                ),
                items:AppCubit.get(context).Images.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Text('${i}');
                    },
                  );
                }).toList(),
              ),
              Center(child: AnimatedSmoothIndicator(
                effect:  ExpandingDotsEffect(
                  activeDotColor: Colors.white,
                  dotColor: Colors.grey,
                  dotHeight: 20,
                  dotWidth: 30,
                  expansionFactor: 3,
                  spacing: 15,
                ),
                count:AppCubit.get(context).Images.length,
                activeIndex:AppCubit.get(context).indexCarouselSider,
              ) ),
              SizedBox(height: 30,),

            ],
          ),
        );

      },
    );
  }
}
