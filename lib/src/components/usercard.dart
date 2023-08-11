import 'package:flutter/material.dart';
import 'package:insta/src/components/avatar_widget.dart';

class UserCard extends StatelessWidget {
  final String userId;
  final String description;

  const UserCard({Key? key, required this.userId, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: 130,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 15,
            right: 15,
            top: 0,
            bottom: 0,
            child: Column(
              children: [
                const SizedBox(height: 8),
                AvatarWidget(
                  type: AvatarType.TYPE2,
                  thumbPath:
                      "https://media.istockphoto.com/id/1366097101/ko/%EC%82%AC%EC%A7%84/%EB%AA%A9%EC%9A%95-%EC%8B%9C%EA%B0%84-%ED%9B%84-%EC%88%98%EA%B1%B4%EC%9C%BC%EB%A1%9C-%EB%8D%AE%EC%9D%B8-%EC%82%AC%EB%9E%91%EC%8A%A4%EB%9F%AC%EC%9A%B4-%EC%95%84%EA%B8%B0%EC%9D%98-%EC%83%B7.jpg?s=612x612&w=0&k=20&c=DuQDWU7XmnhRe0HfyCcntaEcl6aCpkrOXu7UFyT9pnc=",
                  size: 75,
                ),
                const SizedBox(height: 3),
                Text(
                  userId,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  description,
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Follow"),
                ),
              ],
            ),
          ),
          Positioned(
            right: 5,
            top: 5,
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.close,
                size: 16,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
