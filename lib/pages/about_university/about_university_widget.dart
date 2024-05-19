import '/backend/supabase/supabase.dart';
import '/component/debartment_info/debartment_info_widget.dart';
import '/component/empty_component/empty_component_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'about_university_model.dart';
export 'about_university_model.dart';

class AboutUniversityWidget extends StatefulWidget {
  const AboutUniversityWidget({super.key});

  @override
  State<AboutUniversityWidget> createState() => _AboutUniversityWidgetState();
}

class _AboutUniversityWidgetState extends State<AboutUniversityWidget>
    with TickerProviderStateMixin {
  late AboutUniversityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutUniversityModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<UniversityRow>>(
      future: UniversityTable().querySingleRow(
        queryFn: (q) => q.eq(
          'name',
          FFAppState().University,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<UniversityRow> aboutUniversityUniversityRowList = snapshot.data!;
        final aboutUniversityUniversityRow =
            aboutUniversityUniversityRowList.isNotEmpty
                ? aboutUniversityUniversityRowList.first
                : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: true,
              title: Text(
                FFLocalizations.of(context).getText(
                  '1x76cpgx' /* عن الجامعة */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Marhey',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final images =
                              aboutUniversityUniversityRow?.images.toList() ??
                                  [];
                          return SizedBox(
                            width: double.infinity,
                            height: 180.0,
                            child: CarouselSlider.builder(
                              itemCount: images.length,
                              itemBuilder: (context, imagesIndex, _) {
                                final imagesItem = images[imagesIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: FlutterFlowExpandedImageView(
                                          image: Image.network(
                                            imagesItem,
                                            fit: BoxFit.contain,
                                          ),
                                          allowRotation: false,
                                          tag: imagesItem,
                                          useHeroAnimation: true,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: imagesItem,
                                    transitionOnUserGestures: true,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        imagesItem,
                                        width: 300.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              carouselController: _model.carouselController ??=
                                  CarouselController(),
                              options: CarouselOptions(
                                initialPage: max(0, min(0, images.length - 1)),
                                viewportFraction: 0.9,
                                disableCenter: true,
                                enlargeCenterPage: true,
                                enlargeFactor: 0.25,
                                enableInfiniteScroll: true,
                                scrollDirection: Axis.horizontal,
                                autoPlay: true,
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 800),
                                autoPlayInterval:
                                    const Duration(milliseconds: (800 + 4000)),
                                autoPlayCurve: Curves.linear,
                                pauseAutoPlayInFiniteScroll: true,
                                onPageChanged: (index, _) =>
                                    _model.carouselCurrentIndex = index,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: const Alignment(0.0, 0),
                              child: TabBar(
                                labelColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                unselectedLabelStyle: const TextStyle(),
                                indicatorColor:
                                    FlutterFlowTheme.of(context).primary,
                                padding: const EdgeInsets.all(4.0),
                                tabs: [
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      '7kzhn2lv' /* معلومات */,
                                    ),
                                  ),
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      'ukfc7gkc' /* متطلبات */,
                                    ),
                                  ),
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      'xj0nh3b1' /* الاقسام */,
                                    ),
                                  ),
                                ],
                                controller: _model.tabBarController,
                                onTap: (i) async {
                                  [() async {}, () async {}, () async {}][i]();
                                },
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _model.tabBarController,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ListTile(
                                        title: Text(
                                          FFLocalizations.of(context).getText(
                                            'xqkfrodn' /* Name */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Marhey',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        subtitle: Text(
                                          aboutUniversityUniversityRow!.name!,
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await Clipboard.setData(ClipboardData(
                                              text:
                                                  aboutUniversityUniversityRow
                                                      .phoneNumber!));
                                        },
                                        child: ListTile(
                                          title: Text(
                                            FFLocalizations.of(context).getText(
                                              'u0vgnius' /* phone */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Marhey',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          subtitle: Text(
                                            aboutUniversityUniversityRow
                                                .phoneNumber!,
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          dense: false,
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await launchURL(
                                              aboutUniversityUniversityRow
                                                  .location!);
                                        },
                                        child: ListTile(
                                          title: Text(
                                            FFLocalizations.of(context).getText(
                                              'w25bi0cv' /* Address */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Marhey',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          subtitle: Text(
                                            aboutUniversityUniversityRow
                                                .address!,
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          dense: false,
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await launchURL(
                                              aboutUniversityUniversityRow
                                                  .facebook!);
                                        },
                                        child: ListTile(
                                          title: Text(
                                            FFLocalizations.of(context).getText(
                                              'fhqm4oiz' /* facebook */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Marhey',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          subtitle: Text(
                                            aboutUniversityUniversityRow
                                                .facebook!,
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          trailing: const Icon(
                                            Icons.facebook,
                                            color: Color(0xFF0018FF),
                                            size: 30.0,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          dense: false,
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await launchURL(
                                              aboutUniversityUniversityRow
                                                  .website!);
                                        },
                                        child: ListTile(
                                          title: Text(
                                            FFLocalizations.of(context).getText(
                                              'hwzwjnp5' /* Website */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Marhey',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          subtitle: Text(
                                            aboutUniversityUniversityRow
                                                .website!,
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          trailing: Icon(
                                            Icons.web_asset,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            size: 30.0,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          dense: false,
                                        ),
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                context.pushNamed(
                                                  'docsDetailsView',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        const TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .bottomToTop,
                                                    ),
                                                  },
                                                );
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '4eeqt1iy' /* الدكاترة */,
                                              ),
                                              options: FFButtonOptions(
                                                height: 30.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'ti2t4xln' /* خريطة الجامعة */,
                                              ),
                                              options: FFButtonOptions(
                                                height: 30.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 5.0)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 10.0, 16.0, 0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            height: 35.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                's7qcfx1k' /* تقديم جديد */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final requirements =
                                                      aboutUniversityUniversityRow
                                                              .requirements
                                                              .toList() ??
                                                          [];
                                                  if (requirements.isEmpty) {
                                                    return const EmptyComponentWidget();
                                                  }
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: List.generate(
                                                        requirements.length,
                                                        (requirementsIndex) {
                                                      final requirementsItem =
                                                          requirements[
                                                              requirementsIndex];
                                                      return Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      5.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            requirementsItem,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      );
                                                    }).divide(
                                                        const SizedBox(height: 10.0)),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: FutureBuilder<List<DebartmentsRow>>(
                                      future: DebartmentsTable().queryRows(
                                        queryFn: (q) => q.eq(
                                          'university',
                                          FFAppState().University,
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<DebartmentsRow>
                                            columnDebartmentsRowList =
                                            snapshot.data!;
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                                  columnDebartmentsRowList
                                                      .length, (columnIndex) {
                                            final columnDebartmentsRow =
                                                columnDebartmentsRowList[
                                                    columnIndex];
                                            return Builder(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: WebViewAware(
                                                          child:
                                                              GestureDetector(
                                                            onTap: () => _model
                                                                    .unfocusNode
                                                                    .canRequestFocus
                                                                ? FocusScope.of(
                                                                        context)
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode)
                                                                : FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child:
                                                                DebartmentInfoWidget(
                                                              info:
                                                                  columnDebartmentsRow,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                },
                                                text:
                                                    columnDebartmentsRow.name!,
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 60.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            );
                                          })
                                              .divide(const SizedBox(height: 16.0))
                                              .addToStart(
                                                  const SizedBox(height: 20.0)),
                                        );
                                      },
                                    ),
                                  ),
                                ],
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
        );
      },
    );
  }
}
