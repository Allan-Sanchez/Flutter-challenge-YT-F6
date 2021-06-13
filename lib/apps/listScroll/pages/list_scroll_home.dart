import 'package:flutter/material.dart';
//store
import 'package:challenge_yt/apps/util/Products.dart';

const itemSize = 150.0;

class ListScrollHome extends StatefulWidget {
  const ListScrollHome({Key? key}) : super(key: key);

  @override
  _ListScrollHomeState createState() => _ListScrollHomeState();
}

class _ListScrollHomeState extends State<ListScrollHome> {
  final _scrollController = ScrollController();

  void onListen() {
    // print('ScrollController ; ${_scrollController.offset}');
    setState(() {});
  }

  @override
  void initState() {
    _scrollController.addListener(onListen);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(onListen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shrink top list'),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final product = products[index];
                final itemPositionOffSet = index * itemSize;
                final difference =
                    _scrollController.offset - itemPositionOffSet;
                final percent = 1 - (difference / itemSize);
                double opacity = percent;
                double scale = percent;
                if (opacity > 1.0) opacity = 1.0;
                if (opacity < 0.0) opacity = 0.0;
                if (percent > 1.0) scale = 1.0;
                return Opacity(
                  opacity: opacity,
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..scale(scale, 1.0),
                    child: Card(
                      color: Color(product.color),
                      child: SizedBox(
                        height: itemSize,
                        child: Row(
                          children: [
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                product.name,
                                style: TextStyle(
                                    // color: Colors.white,
                                    color: Colors.blue[600],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0),
                              ),
                            )),
                            Image.network(product.image)
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }, childCount: products.length),
            )
          ],
        ),
      ),
    );
  }
}
