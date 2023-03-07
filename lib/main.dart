import 'package:dropbox_clone/app_styles.dart';
import 'package:dropbox_clone/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
        floatingActionButton: SizedBox(
          width: 60,
          height: 60,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: KPurpleColor,
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}

List<Color> folderColors = [
  KLightBlueColor,
  KLightYellowColor,
  KLightRedColor,
  KLightGreenColor,
  KLightBlueColor,
  KLightYellowColor,
  KLightRedColor,
  KLightGreenColor,
];

List<String> moreIconColors = [
  'more_vertical_icon_blue.svg',
  'more_vertical_icon_yellow.svg',
  'more_vertical_icon_red.svg',
  'more_vertical_icon_green.svg',
  'more_vertical_icon_blue.svg',
  'more_vertical_icon_yellow.svg',
  'more_vertical_icon_red.svg',
  'more_vertical_icon_green.svg',
];

List<String> folderIconColors = [
  'folder_icon_blue.svg',
  'folder_icon_yellow.svg',
  'folder_icon_red.svg',
  'folder_icon_green.svg',
  'folder_icon_blue.svg',
  'folder_icon_yellow.svg',
  'folder_icon_red.svg',
  'folder_icon_green.svg',
];

List<String> folderNames = [
  'Mobile Apps',
  'SVG Icons',
  'Prototypes',
  'Avatars',
  'Mobile Apps',
  'SVG Icons',
  'Prototypes',
  'Avatars',
];

List<String> folderDates = [
  'December 20.2022',
  'December 21.2022',
  'December 22.2022',
  'December 23.2022',
  'December 20.2022',
  'December 21.2022',
  'December 22.2022',
  'December 23.2022',
];

List<Color> textColors = [
  KBlueColor,
  KYellowColor,
  KRedColor,
  KGreenColor,
  KBlueColor,
  KYellowColor,
  KRedColor,
  KGreenColor,
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Your Dribbox',
                style: KquestrialSemiBold.copyWith(
                    color: KBlackColor,
                    fontSize: SizeConfig.blockSizeHorizontal! * 6),
              ),
              SvgPicture.asset('Assets/menu_icon.svg')
            ],
          ),
          SizedBox(height: SizeConfig.blockSizeVertical! * 4),
          TextField(
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(width: 1, color: KGreyColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(width: 1, color: KGreyColor),
                ),
                prefixIcon: Container(
                    width: 24,
                    height: 24,
                    alignment: Alignment.center,
                    child: SvgPicture.asset('Assets/search_icon.svg')),
                hintText: 'Search Folder',
                hintStyle: KquestrialMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    color: KDarkGrey)),
            style: KquestrialMedium.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                color: KDarkGrey),
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Recent',
                      style: KquestrialSemiBold.copyWith(
                          fontSize: SizeConfig.blockSizeVertical! * 4,
                          color: KLightBlack)),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                  SvgPicture.asset('Assets/arrow_down_icon.svg'),
                ],
              ),
              SvgPicture.asset('Assets/sort_icon.svg')
            ],
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 3,
          ),
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: SizeConfig.blockSizeHorizontal! * 2,
                  mainAxisSpacing: SizeConfig.blockSizeHorizontal! * 2,
                  mainAxisExtent: 107),
              itemCount: folderColors.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.5),
                  decoration: BoxDecoration(
                      color: folderColors[index],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('Assets/${folderIconColors[index]}'),
                          SvgPicture.asset('Assets/${moreIconColors[index]}'),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 1,
                      ),
                      Text(
                        folderNames[index],
                        style: KquestrialSemiBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: textColors[index]),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 0.4,
                      ),
                      Text(
                        folderDates[index],
                        style: KquestrialRegular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                            color: textColors[index]),
                      )
                    ],
                  ),
                );
              })
        ],
      ),
    ));
  }
}
