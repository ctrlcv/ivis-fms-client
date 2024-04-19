import 'package:flutter/material.dart';

const Color kMainColor = Color(0xFF33383A);
const Color kNavyColor = Color(0xFF002C5F);
const Color kGrayColor = Color(0xFFEAE7ED);
const Color kDartBlueColor = Color(0xFF8392a6);
const Color kDarkGrayColor = Color(0xFF686C73);
const Color kGrayFontColor = Color(0xFF898D93);
const Color kBlackFontColor = Color(0xFF363636);
const Color kBackgroundColor = Color(0xFFFEFEFE);
const Color kHoverColor = Color(0xFFE6E7EB);
const Color kLineColor = Color(0xFFF3F3F4);
const Color kHintColor = Color(0xFFD0D0D0);
const Color kDarkBlueHintColor = Color(0xffa7b8d0);
const Color kDisableColor = Color(0xFFF2F2F2);
const Color kCellTitleColor = Color(0xFFE6E9ED);
const Color kCellGrayColor = Color(0xFFF9F9F9);

const double kMobileWidth = 700;
const double kTabletWidth = 1300;
const double kDesktopWidth = 1290;

const String kApiServer =
    "10.0.2.2:3090"; //"localhost:3090";"ec2-3-38-99-211.ap-northeast-2.compute.amazonaws.com:3090"; //
const String kMapServer =
    "http://localhost:3000/carstate"; //"http://ec2-3-38-99-211.ap-northeast-2.compute.amazonaws.com:5000/carstate";
const String kSocketServer = "http://localhost:8399";
const String kMqttServer = "192.168.0.106"; //"http://3.38.99.211"; //

final List<Color> kRandomColor = [
  Colors.yellow,
  Colors.blue,
  Colors.brown,
  Colors.orange,
  Colors.green,
  Colors.pink,
  Colors.amber,
  Colors.cyanAccent,
  Colors.deepPurpleAccent,
  Colors.indigoAccent,
  Colors.teal,
];

final List<String> kExcelCellIndex = [
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z",
  "AA",
  "AB",
  "AC",
  "AD",
  "AE",
  "AF",
  "AG",
  "AH",
  "AI",
  "AJ",
  "AK",
  "AL",
  "AM",
  "AN",
  "AO",
  "AP",
  "AQ",
  "AR",
  "AS",
  "AT",
  "AU",
  "AV",
  "AW",
  "AX",
  "AY",
  "AZ",
];

final List<String> kCase01Data = [
  "1, 372955400, 1270382650, 경기도 수원시 영통구 이의동 1379-1, 주차중, P,  0,   0,    0,  0, 100,  0, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 300",
  "1, 372955450, 1270382400, 경기도 수원시 영통구 이의동 1379-1, 운행중, D,  2, 100,   10,  0, 100, 10, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 300",
  "1, 372955500, 1270382220, 경기도 수원시 영통구 이의동 1379-1, 운행중, D,  4, 200,   12,  0, 100, 10, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 300",
  "1, 372954840, 1270381890, 경기도 수원시 영통구 이의동 1379-1, 운행중, D,  8, 250,   14,  0, 100, 12, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 300",
  "1, 372954730, 1270381740, 경기도 수원시 영통구 이의동 1379-1, 운행중, D,  9, 260,   18,  0, 100, 12, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 300",
  "1, 372954600, 1270381440, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 10, 270,   22,  1, 100, 12, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 301",
  "1, 372954500, 1270381260, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 11, 280,   24,  1, 100, 12, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 301",
  "1, 372954400, 1270381090, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 12, 290,   28,  1, 100, 12, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 301",
  "1, 372954220, 1270380820, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 13, 300,   32,  1, 100, 12, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 301",
  "1, 372954190, 1270380720, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 14, 310,   40,  1, 100, 12, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 301",
  "1, 372953920, 1270380200, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 15, 320,   44,  1, 100, 12, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 301",
  "1, 372953610, 1270379740, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 16, 330,   50,  2,  99, 12, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 302",
  "1, 372953420, 1270379410, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 17, 340,   55,  2,  99, 11, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 302",
  "1, 372953080, 1270378880, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 18, 350,   61,  2,  99, 10, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 302",
  "1, 372952930, 1270378610, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 20, 360,   65,  2,  99, 11, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 302",
  "1, 372952440, 1270378130, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 21, 370,   69,  2,  99, 12, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 302",
  "1, 372952250, 1270377620, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 23, 370,   74,  2,  99, 13, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 302",
  "1, 372951840, 1270377240, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 25, 380,   80,  2,  99, 14, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 302",
  "1, 372951450, 1270376530, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 27, 370,   88,  3,  99, 12, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 303",
  "1, 372951270, 1270376090, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 29, 390,   94,  3,  99, 11, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 303",
  "1, 372951110, 1270375630, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 30, 400,  101,  3,  99, 10, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 303",
  "1, 372950960, 1270375060, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 31, 410,  107,  3,  99,  9, 0, 0, 0, 1, 1, 9, 18, 1, 상, 20000, 303",
  "1, 372951110, 1270374180, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 33, 420,  114,  3,  99,  9, 0, 0, 0, 1, 0, 9, 18, 1, 상, 20000, 303",
  "1, 372951520, 1270373360, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 32, 420,  120,  3,  99,  9, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 303",
  "1, 372951930, 1270372480, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 34, 420,  131,  3,  99, 10, 0, 0, 1, 0, 0, 9, 18, 1, 상, 20000, 303",
  "1, 372952500, 1270371420, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 36, 430,  145,  4,  99, 11, 0, 1, 1, 0, 0, 9, 18, 1, 상, 20000, 304",
  "1, 372953020, 1270370370, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 37, 430,  161,  4,  99, 10, 0, 1, 1, 0, 0, 9, 18, 1, 상, 20000, 304",
  "1, 372953500, 1270369410, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 38, 440,  179,  4,  99,  9, 0, 1, 1, 0, 0, 9, 18, 1, 상, 20000, 304",
  "1, 372953900, 1270368610, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 39, 440,  189,  4,  99,  8, 0, 1, 1, 0, 0, 8, 18, 1, 중, 20000, 304",
  "1, 372954340, 1270367890, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 42, 450,  193,  4,  99,  8, 0, 1, 1, 0, 0, 8, 18, 1, 중, 20000, 304",
  "1, 372955050, 1270368460, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 41, 450,  210,  4,  99,  8, 0, 1, 1, 0, 0, 8, 18, 1, 중, 20000, 304",
  "1, 372955850, 1270369090, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 42, 450,  220,  4,  99,  8, 0, 1, 1, 0, 0, 8, 18, 1, 중, 20000, 304",
  "1, 372956860, 1270369880, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 44, 460,  240,  5,  99,  9, 0, 1, 1, 0, 0, 8, 18, 1, 중, 20000, 305",
  "1, 372957690, 1270370540, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 47, 470,  255,  5,  99,  9, 0, 1, 1, 0, 0, 8, 19, 1, 중, 20000, 305",
  "1, 372958710, 1270371390, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 48, 490,  269,  5,  98,  9, 0, 1, 1, 0, 0, 8, 19, 1, 중, 20000, 305",
  "1, 372959590, 1270372050, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 49, 500,  283,  5,  98, 10, 0, 1, 1, 0, 0, 8, 19, 1, 중, 20000, 305",
  "1, 372960360, 1270372850, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 52, 510,  299,  5,  98, 10, 0, 1, 1, 0, 0, 8, 19, 1, 중, 20000, 305",
  "1, 372961130, 1270373750, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 54, 490,  311,  5,  98, 10, 0, 1, 1, 0, 0, 8, 19, 1, 중, 20000, 305",
  "1, 372961900, 1270374890, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 53, 470,  323,  5,  98, 11, 0, 1, 1, 0, 0, 8, 19, 1, 중, 20000, 305",
  "1, 372962690, 1270376000, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 54, 460,  337,  6,  98, 11, 0, 1, 1, 0, 0, 8, 19, 1, 중, 20000, 306",
  "1, 372963160, 1270376820, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 57, 450,  349,  6,  98, 12, 0, 1, 1, 0, 0, 8, 19, 2, 중, 20000, 306",
  "1, 372963820, 1270378000, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 61, 440,  360,  6,  98, 12, 0, 1, 1, 0, 0, 8, 19, 2, 중, 20000, 306",
  "1, 372964480, 1270379370, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 60, 430,  379,  6,  98, 13, 0, 1, 0, 1, 0, 8, 19, 2, 중, 20000, 306",
  "1, 372965330, 1270381320, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 58, 430,  390,  6,  98, 12, 0, 0, 0, 1, 1, 8, 19, 2, 중, 20000, 306",
  "1, 372966230, 1270384830, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 56, 420,  407,  6,  98, 13, 0, 0, 0, 1, 0, 8, 19, 2, 중, 20000, 306",
  "1, 372967100, 1270388560, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 54, 410,  425,  6,  98, 14, 0, 0, 1, 0, 0, 8, 19, 2, 중, 20000, 306",
  "1, 372967940, 1270392580, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 52, 400,  439,  7,  98, 13, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 307",
  "1, 372968560, 1270396630, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 50, 400,  459,  7,  98, 12, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 307",
  "1, 372968680, 1270400410, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 48, 410,  473,  7,  98, 11, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 307",
  "1, 372968640, 1270404170, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 46, 410,  491,  7,  98, 10, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 307",
  "1, 372968170, 1270407250, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 42, 420,  513,  7,  98, 11, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 307",
  "1, 372966980, 1270407280, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 40, 410,  537,  7,  98, 12, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 307",
  "1, 372964840, 1270405510, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 42, 400,  551,  7,  98, 13, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 307",
  "1, 372963820, 1270405030, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 44, 390,  579,  8,  98, 12, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 308",
  "1, 372963050, 1270404650, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 44, 390,  593,  8,  98, 11, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 308",
  "1, 372962240, 1270404190, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 42, 390,  619,  8,  98, 10, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 308",
  "1, 372961360, 1270403690, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 40, 380,  645,  8,  98,  9, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 308",
  "1, 372960470, 1270403200, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 38, 380,  679,  8,  98,  9, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 308",
  "1, 372960130, 1270402050, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 35, 360,  691,  8,  98, 10, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 308",
  "1, 372960380, 1270399630, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 33, 340,  731,  8,  98, 11, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 308",
  "1, 372960300, 1270397300, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 32, 310,  741,  9,  98, 11, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 309",
  "1, 372960080, 1270395210, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 31, 290,  763,  9,  97, 12, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 309",
  "1, 372959720, 1270393040, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 30, 260,  771,  9,  97, 12, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 309",
  "1, 372959320, 1270391400, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 28, 230,  801,  9,  97, 13, 0, 0, 1, 0, 0, 7, 19, 2, 중, 20000, 309",
  "1, 372958630, 1270389250, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 24, 210,  839,  9,  97, 14, 0, 0, 0, 1, 0, 8, 19, 2, 중, 20000, 309",
  "1, 372957910, 1270387700, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 20, 180,  871,  9,  97, 13, 0, 0, 0, 1, 0, 8, 19, 2, 중, 20000, 309",
  "1, 372957180, 1270386280, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 18, 150,  913,  9,  97, 12, 0, 0, 0, 1, 0, 8, 19, 2, 중, 20000, 309",
  "1, 372956410, 1270384400, 경기도 수원시 영통구 이의동 1379-1, 운행중, D, 12, 110,  970, 10,  97, 11, 0, 0, 0, 1, 0, 8, 19, 2, 중, 20000, 310",
  "1, 372955400, 1270382650, 경기도 수원시 영통구 이의동 1379-1, 운행중, D,  8,  90, 1001, 10,  97, 10, 0, 0, 0, 1, 0, 8, 19, 2, 중, 20001, 310",
  "1, 372955400, 1270382650, 경기도 수원시 영통구 이의동 1379-1, 운행중, D,  4,  70, 1019, 10,  97,  8, 0, 0, 0, 1, 0, 8, 19, 2, 중, 20001, 310",
  "1, 372955400, 1270382650, 경기도 수원시 영통구 이의동 1379-1, 운행중, D,  0,  30, 1021, 10,  97, 10, 0, 0, 0, 1, 0, 8, 19, 2, 중, 20001, 310",
  "1, 372955400, 1270382650, 경기도 수원시 영통구 이의동 1379-1, 주차중, P,  0,   0,    0,  0,  97,  0, 0, 0, 0, 1, 0, 8, 19, 2, 중, 20001, 310",
  "1, 372955400, 1270382650, 경기도 수원시 영통구 이의동 1379-1, 주차중, P,  0,   0,    0,  0,  97,  0, 1, 0, 0, 1, 0, 8, 19, 2, 중, 20001, 300",
];
