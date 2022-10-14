import 'package:flutter/material.dart';
import 'package:fwc_album_cup/app/pages/my_stickers/widgets/sticker_group.dart';
import 'package:fwc_album_cup/app/pages/my_stickers/widgets/sticker_group_filter.dart';
import 'package:fwc_album_cup/app/pages/my_stickers/widgets/sticker_status_filter.dart';

class MyStyckerPage extends StatelessWidget {
  const MyStyckerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Figurinhas'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                StickerStatusFilter(filterSelected: ''),
                StickerGroupFilter(),

              ],
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return const StickerGroup();
                },
                childCount: 10,
              )),
        ],
      ),
    );
  }
}
