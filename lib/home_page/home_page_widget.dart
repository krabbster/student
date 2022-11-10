import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1C1C1C),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, -1.05),
                            child: FlutterFlowVideoPlayer(
                              path: 'assets/videos/stud_(3).mp4',
                              videoType: VideoType.asset,
                              width: double.infinity,
                              height: double.infinity,
                              autoPlay: true,
                              looping: true,
                              showControls: false,
                              allowFullScreen: false,
                              allowPlaybackSpeedMenu: false,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.02, 1),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.08,
                              decoration: BoxDecoration(
                                color: Color(0xFF1C1C1C),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.94, 0.15),
                                    child: Image.asset(
                                      'assets/images/refresh.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.74, 0.15),
                                    child: Image.asset(
                                      'assets/images/qr.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.85, 0.15),
                                    child: SelectionArea(
                                        child: Text(
                                      'Stäng',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: FlipCard(
                              fill: Fill.fillBack,
                              direction: FlipDirection.HORIZONTAL,
                              speed: 400,
                              front: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'assets/images/kort.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.95,
                                  height:
                                      MediaQuery.of(context).size.height * 0.7,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              back: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'assets/images/bak.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.95,
                                  height:
                                      MediaQuery.of(context).size.height * 0.7,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
