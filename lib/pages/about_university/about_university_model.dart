import '/flutter_flow/flutter_flow_util.dart';
import 'about_university_widget.dart' show AboutUniversityWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AboutUniversityModel extends FlutterFlowModel<AboutUniversityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
