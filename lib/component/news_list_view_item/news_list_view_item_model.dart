import '/flutter_flow/flutter_flow_util.dart';
import 'news_list_view_item_widget.dart' show NewsListViewItemWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NewsListViewItemModel extends FlutterFlowModel<NewsListViewItemWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
