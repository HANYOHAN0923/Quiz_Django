import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // 반응형 UI제작을 위해 MediaQuery를 사용해서 기기의 크기를 가져온다 (그 밖의 화면 로테이션 여부도 알 수 있음)
    Size screensize = MediaQuery.of(context).size;
    double width = screensize.width;
    double height = screensize.height;

    // SafeArea() 기기의 상단 노치 바, 하단 바 영역을 침범하지 않는 영역을 잡아주는 위젯
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Quiz App"),
          backgroundColor: Colors.deepPurple,
          leading: Container(), // AppBar() Default로 적용되는 좌측 버튼을 지우는 역할
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'images/quiz.jpeg',
                width: width * 0.8,
              ),
            ),
            Padding(padding: EdgeInsets.all(width * 0.024)),
            Text(
              '플러터 퀴즈 앱',
              style: TextStyle(
                  fontSize: width * 0.065, fontWeight: FontWeight.bold),
            ),
            Text(
              '퀴즈를 풀기 전 안내사항입니다.\n꼼꼼히 읽고 퀴즈 풀기를 눌러주세요',
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.048),
            ),
            _buildStep(width, '1. 랜덤으로 나오는 퀴즈 3개를 풀어보세요.'),
            _buildStep(width, '2. 문제를 잘 읽고 정답을 고린 뒤\n 다음 문제 버튼을 눌러주세요.'),
            _buildStep(width, '3. 만점을 향해 도전해보세요!.'),
            Padding(
              padding: EdgeInsets.all(width * 0.048),
            ),
            Container(
              padding: EdgeInsets.only(bottom: width * 0.036),
              child: Center(
                child: ButtonTheme(
                  minWidth: width * 0.8,
                  height: height * 0.05,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    child: const Text(
                      "지금 퀴즈 풀기",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStep(double width, String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          width * 0.048, width * 0.024, width * 0.048, width * 0.024),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.check_box,
            size: width * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.024),
          ),
          Text(title)
        ],
      ),
    );
  }
}
