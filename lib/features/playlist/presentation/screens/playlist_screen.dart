import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rhythmic_awake/core/constants/app_images.dart';
import 'package:rhythmic_awake/shared/widgets/app_bg.dart';

import '../../../../shared/widgets/small_btn.dart';
import '../widgets/playlist_bar_widget.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(alignment: Alignment.center,child: Text('Playlist',style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 18.sp),),),
                SizedBox(height: 57.h),
      
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Song List",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SmallBtn(func: () {}, text: 'Add Music'),
              ]),
                SizedBox(height: 24.h,),
                PlaylistBarWidget(title: 'Spotify Song', img: AppImages.spotifyCol, leading: 'Song 01',),
                PlaylistBarWidget(title: 'www.youtube/954732', img: AppImages.spotifyCol, leading: 'Song 02',),
                PlaylistBarWidget(title: 'www.youtube/654398', img: AppImages.yt, leading: 'Song 03',),
                PlaylistBarWidget(title: 'Itunes Rock Music', img: AppImages.itunes, leading: 'Song 04',),
                PlaylistBarWidget(title: 'Spotify Song', img: AppImages.spotifyCol, leading: 'Song 05',),
                PlaylistBarWidget(title: 'www.youtube/654398', img: AppImages.yt, leading: 'Song 06',),
                PlaylistBarWidget(title: 'Spotify Song', img: AppImages.spotifyCol, leading: 'Song 07',),
                PlaylistBarWidget(title: 'Spotify Song', img: AppImages.spotifyCol, leading: 'Song 08',),
                PlaylistBarWidget(title: 'Spotify Song', img: AppImages.spotifyCol, leading: 'Song 09',),
                PlaylistBarWidget(title: 'Spotify Song', img: AppImages.spotifyCol, leading: 'Song 10',),
                PlaylistBarWidget(title: 'Spotify Song', img: AppImages.spotifyCol, leading: 'Song 11',),
      
              ],
            ),
          ),
        ),
      ),
    );
  }
}
