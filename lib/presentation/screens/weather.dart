import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project/business_logic/weather_cubit/weather_cubit.dart';
import 'package:new_project/presentation/widgets/default_text.dart';
import 'package:sizer/sizer.dart';

class Weather extends StatefulWidget {
  const Weather({
    super.key,
  });

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  late WeatherCubit cubit;
  @override
  void didChangeDependencies() {
    cubit = WeatherCubit.get(context)..getWeather();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        return Scaffold(
          body: ListView(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.amberAccent,
                      Colors.yellow,
                      Colors.white,
                      Colors.amberAccent,
                      Colors.yellow
                    ],
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd,
                  ),
                ),
                height: 100.h,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.only(start: 6.w, top: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DefaultText(
                            text: cubit.weatherResponse.address,
                            textSize: 18.sp,
                            weight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                          top: 8.h, start: 30.w, bottom: 3.h),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DefaultText(
                                text: cubit
                                    .weatherResponse.currentConditions.temp
                                    .toInt()
                                    .toString(),
                                textSize: 60.sp,
                                weight: FontWeight.bold,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(start: 1.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    DefaultText(
                                      text: "°C",
                                      textSize: 14.sp,
                                      weight: FontWeight.bold,
                                    ),
                                    Container(
                                      height: 8.h,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          DefaultText(
                            text: cubit
                                .weatherResponse.currentConditions.conditions,
                            textSize: 13.sp,
                            weight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 10.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(25.sp),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(start: 5.w),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              height: 7.h,
                              width: 14.w,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  "assets/umbrella2.svg",
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 6.w, end: 27.w),
                            child: DefaultText(
                              text: "RainFeel",
                              weight: FontWeight.bold,
                              textSize: 13.sp,
                            ),
                          ),
                          DefaultText(
                            text:
                                "${cubit.weatherResponse.currentConditions.precip.toInt().toString()}%",
                            weight: FontWeight.bold,
                            textSize: 13.sp,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.only(top: 3.h, bottom: 3.h),
                      child: Container(
                        height: 10.h,
                        width: 85.w,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(25.sp),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.only(start: 5.w),
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                height: 7.h,
                                width: 14.w,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/wind.png",
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  start: 6.w, end: 25.w),
                              child: DefaultText(
                                text: "Wind",
                                weight: FontWeight.bold,
                                textSize: 13.sp,
                              ),
                            ),
                            DefaultText(
                              text:
                                  "${cubit.weatherResponse.currentConditions.windspeed.toString()} km/h",
                              weight: FontWeight.bold,
                              textSize: 13.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 10.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(25.sp),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(start: 5.w),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              height: 7.h,
                              width: 14.w,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/humidity.png",
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 6.w, end: 25.w),
                            child: DefaultText(
                              text: "Humidity",
                              weight: FontWeight.bold,
                              textSize: 13.sp,
                            ),
                          ),
                          DefaultText(
                            text:
                                "${cubit.weatherResponse.currentConditions.humidity.toInt().toString()}%",
                            weight: FontWeight.bold,
                            textSize: 13.sp,
                          ),
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsetsDirectional.only(top: 2.h),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     children: [
                    //       Container(
                    //         decoration: BoxDecoration(
                    //           color: Colors.white,
                    //           borderRadius: BorderRadius.circular(34.sp),
                    //         ),
                    //         height: 10.h,
                    //         width: 13.w,
                    //       ),
                    //       Container(
                    //         decoration: BoxDecoration(
                    //           color: Colors.white,
                    //           borderRadius: BorderRadius.circular(34.sp),
                    //         ),
                    //         height: 10.h,
                    //         width: 13.w,
                    //       ),
                    //       Container(
                    //         decoration: BoxDecoration(
                    //           color: Colors.white,
                    //           borderRadius: BorderRadius.circular(34.sp),
                    //         ),
                    //         height: 10.h,
                    //         width: 13.w,
                    //       ),
                    //       Container(
                    //         decoration: BoxDecoration(
                    //           color: Colors.white,
                    //           borderRadius: BorderRadius.circular(34.sp),
                    //         ),
                    //         height: 10.h,
                    //         width: 13.w,
                    //       ),
                    //       Container(
                    //         decoration: BoxDecoration(
                    //           color: Colors.white,
                    //           borderRadius: BorderRadius.circular(34.sp),
                    //         ),
                    //         height: 10.h,
                    //         width: 13.w,
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
