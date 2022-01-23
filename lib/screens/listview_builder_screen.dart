import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> _imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels + 500 >=
          _scrollController.position.maxScrollExtent) {
        // add5();
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (_isLoading) return;

    _isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    add5();

    _isLoading = false;
    setState(() {});

    if (_scrollController.position.pixels + 100 <=
        _scrollController.position.maxScrollExtent) return;

    _scrollController.animateTo(_scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void add5() {
    final lastId = _imagesIds.last;
    _imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 3));
    final lastId = _imagesIds.last;
    _imagesIds.clear();
    _imagesIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                  controller: _scrollController,
                  itemCount: _imagesIds.length,
                  itemBuilder: (context, index) {
                    return FadeInImage(
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                        placeholder: const AssetImage('assets/jar-loading.gif'),
                        image: NetworkImage(
                            'https://picsum.photos/500/300?random=${_imagesIds[index]}'));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
