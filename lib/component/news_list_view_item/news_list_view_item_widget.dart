import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'news_list_view_item_model.dart';
export 'news_list_view_item_model.dart';

class NewsListViewItemWidget extends StatefulWidget {
  const NewsListViewItemWidget({
    super.key,
    required this.news,
  });

  final NewsRow? news;

  @override
  State<NewsListViewItemWidget> createState() => _NewsListViewItemWidgetState();
}

class _NewsListViewItemWidgetState extends State<NewsListViewItemWidget> {
  late NewsListViewItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewsListViewItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
      child: Material(
        color: Colors.transparent,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.news?.title,
                    'unkown title',
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF12151C),
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.news?.description,
                      'unkown description',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFF12151C),
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                Builder(
                  builder: (context) {
                    final newsImages = widget.news?.images.toList() ?? [];
                    return SizedBox(
                      width: double.infinity,
                      child: CarouselSlider.builder(
                        itemCount: newsImages.length,
                        itemBuilder: (context, newsImagesIndex, _) {
                          final newsImagesItem = newsImages[newsImagesIndex];
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              newsImagesItem,
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                        carouselController: _model.carouselController ??=
                            CarouselController(),
                        options: CarouselOptions(
                          initialPage: max(0, min(0, newsImages.length - 1)),
                          viewportFraction: 1.0,
                          disableCenter: true,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.25,
                          enableInfiniteScroll: true,
                          scrollDirection: Axis.horizontal,
                          autoPlay: false,
                          onPageChanged: (index, _) =>
                              _model.carouselCurrentIndex = index,
                        ),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        dateTimeFormat(
                          'MMMMEEEEd',
                          widget.news!.createdAt,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ].divide(const SizedBox(height: 5.0)),
            ),
          ),
        ),
      ),
    );
  }
}
