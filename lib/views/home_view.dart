import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/enums/meal_planner.dart';
import 'package:pop_starter_kit/enums/pdf_guide.dart';
import 'package:pop_starter_kit/enums/video_guide.dart';
import 'package:pop_starter_kit/theme/spacing.dart';
import 'package:pop_starter_kit/theme/text_styles.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            tooltip: 'Sign out',
            onPressed: authController.signOut,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(Spacing.paddingSmall),
            child: Column(
              children: [
                _VideoCard(),
                _Section(
                  children: MealPlanner.values
                      .map(
                        (g) => _CardButton(
                          title: g.description,
                          onTap: () {
                            if (g == MealPlanner.dogs) {
                              context.router.pushNamed('meal-planner/dogs');
                            }
                          },
                        ),
                      )
                      .toList(),
                ),
                _Section(
                  title: 'Video Guides',
                  children: VideoGuide.values
                      .map((g) => _CardButton(title: g.description))
                      .toList(),
                ),
                _Section(
                  title: 'PDF Guides',
                  children: PdfGuide.values
                      .map((g) => _CardButton(title: g.description))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _VideoCard extends StatelessWidget {
  final controller = YoutubePlayerController.fromVideoId(
    videoId: YoutubePlayerController.convertUrlToId(
      'https://www.youtube.com/watch?v=qPE4lzg3_Nk',
    )!,
    autoPlay: false,
    params: const YoutubePlayerParams(
      mute: false,
      showControls: true,
      showFullscreenButton: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Spacing.comfyWidth,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(Spacing.paddingLarge),
          child: Column(
            children: [
              Text(
                'WATCH FIRST!',
                style: TextStyles.headlineSmallBolder(context),
              ),
              Spacing.verticalSpaceTiny,
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: YoutubePlayer(
                  controller: controller,
                  aspectRatio: 16 / 9,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String? title;
  final List<Widget> children;

  const _Section({this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacing.verticalSpaceLarge,
        if (title != null)
          Text(
            title!.toUpperCase(),
            style: TextStyles.titleMediumBolder(context),
          ),
        Wrap(
          alignment: WrapAlignment.center,
          runSpacing: Spacing.paddingMedium,
          spacing: Spacing.paddingMedium,
          children: children,
        ),
      ],
    );
  }
}

class _CardButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const _CardButton({required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Flexible(
                child: Container(
                  color: Colors.grey[800],
                  child: Padding(
                    padding: EdgeInsets.all(Spacing.paddingTiny),
                    child: Center(
                      child: Text(
                        title.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyles.labelMediumBolder(context),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
