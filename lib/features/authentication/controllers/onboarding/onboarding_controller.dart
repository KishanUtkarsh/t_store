import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class OnBoardingController extends GetxController{

  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPage = 0.obs;



  /// Update page index when page scroll
  void updatePageIndicator(index){
    currentPage.value = index;
  }

  /// Jump to specific not selected page.
  void dotNavigationClick(index){
    currentPage.value = index;
    pageController.jumpToPage(index);
  }

  /// update current page Index & jump to next page
  void nextPage(){
    if(currentPage.value == 2){
      // Get.to(LoginScreen());
    }
    else{
      int pageNum = currentPage.value + 1;
      pageController.jumpToPage(pageNum);
    }
  }

  /// update current index & jump to the last page
  void skipPage(){
    currentPage.value = 2;
    pageController.jumpToPage(2);
  }



}