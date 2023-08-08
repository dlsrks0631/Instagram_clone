import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:insta/src/components/avatar_widget.dart';

import 'image_data.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(
            type: AvatarType.TYPE3,
            nickname: "kkimjehyeon",
            size: 35,
            thumbPath:
                "https://d14cvuwsb9oabg.cloudfront.net/c_fill,fl_lossy,w_960/v1463302735/v3ktc3ziont261m6z8hu.jpg",
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageData(
                IconsPath.postMoreIcon,
                width: 30,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _image() {
    return CachedNetworkImage(
      imageUrl:
          "https://image.dongascience.com/Photo/2020/09/c9402821bc274854892ca7e5d9dae820.jpg",
    );
  }

  Widget _infoCount() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            const SizedBox(width: 12),
            ImageData(
              IconsPath.likeOffIcon,
              width: 55,
            ),
            const SizedBox(width: 10),
            ImageData(
              IconsPath.replyIcon,
              width: 55,
            ),
            const SizedBox(width: 10),
            ImageData(
              IconsPath.directMessage,
              width: 55,
            ),
          ],
        ),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(right: 20),
                child: ImageData(
                  IconsPath.bookMarkOffIcon,
                  width: 50,
                ))
          ],
        )
      ]),
    );
  }

  Widget _infoDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Row(
            children: [
              SizedBox(width: 5),
              Text(
                "좋아요 150개",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 5),
            child: const SingleChildScrollView(
              child: ExpandableText(
                "이것은 아기 사진이에요 정말 귀엽죠\n정말 귀엽죠??\n정말 귀여워요\n",
                prefixText: 'kkimjehyeon',
                prefixStyle: TextStyle(fontWeight: FontWeight.bold),
                expandText: '더보기',
                collapseText: '접기',
                maxLines: 2,
                expandOnTextTap: true, // 더보기 말고 텍스트를 클릭해도 펼쳐짐
                collapseOnTextTap: true,
                linkColor: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _replyTextBtn() {
    return GestureDetector(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.0),
        child: Text(
          "댓글 199개 모두보기",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _header(),
          const SizedBox(height: 15),
          _image(),
          const SizedBox(height: 10),
          _infoCount(),
          _infoDescription(),
          const SizedBox(height: 4),
          _replyTextBtn(),
          _dataAgo(),
        ],
      ),
    );
  }

  Widget _dataAgo() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.0),
      child: Text(
        "1일전",
        style: TextStyle(color: Colors.grey, fontSize: 11),
      ),
    );
  }
}
