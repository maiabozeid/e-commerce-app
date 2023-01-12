import 'package:e_comerce/data/model/onboardingmodel.dart';
import 'package:e_comerce/core/constant/image_asset.dart';

List<OnBoardingModel> onBoardingList= [
   OnBoardingModel(title:'Choose Product',
       body: 'We Have a 100k Product choose \n your product From Our \n E-Commerce Shop',
   image: AppImageAsset.onBoardingImageOne),
  OnBoardingModel(title:'Easy&Safe Payment' ,
      body: 'Easy Checkout And Safe Payment \n method. Trusted by Our Customer from all over the world' ,
      image: AppImageAsset.onBoardingImageTwo),
  OnBoardingModel(title:'Track Your Order' ,
      body: 'Best Tracker has been used for \n Track your order. You will Know where \n your product is at the moment',
      image: AppImageAsset.onBoardingImageThree),
  OnBoardingModel(title:'Fast Delivery' ,
      body: 'Reliable and Fast Delivery.We \n Deliver your product the fastest \n way possible' ,
      image: AppImageAsset.onBoardingImageFour),
 ];
