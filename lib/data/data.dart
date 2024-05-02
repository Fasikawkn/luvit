import 'package:get/get.dart';

import '../models/card_data.dart';
import '../models/card_info_data.dart';

List<CardData> cardData = [
  CardData(
    id: 0,
    image: 'assets/images/person_1.png',
    title: '잭과분홍콩나물 25',
    description: '서울 . 2km 거리에 있음',
    likeCount: 29930,
  ),
  CardData(
    id: 1,
    image: 'assets/images/person_2.png',
    title: '잭과분홍콩나물 25',
    description:
        '서로 아껴주고 힘이 되어줄 사람 찾아요 선릉으로 직장 다니고 있고 여행 좋아해요 이상한 이야기하시는 분 바로 차단입니다',
    likeCount: 29930,
  ),
  CardData(
    id: 2,
    image: 'assets/images/person_3.png',
    title: '잭과분홍콩나물 25',
    description: null,
    likeCount: 29930,
    info: [
      CardInfoData(
          icon: 'assets/images/purple_heart_icon.png',
          title: '진지한 연애를 찾는 중',
          color: Get.theme.colorScheme.surface),
      CardInfoData(
        icon: 'assets/images/glass_icon.png',
        title: '전혀 안 함',
      ),
      CardInfoData(
        icon: 'assets/images/cigar_icon.png',
        title: '비흡연',
      ),
      CardInfoData(
        icon: 'assets/images/hand_icon.png',
        title: '매일 1시간 이상',
      ),
      CardInfoData(
        icon: 'assets/images/handshake_icon.png',
        title: '만나는 걸 좋아함',
      ),
      CardInfoData(title: 'INFP')
    ],
  ),
  CardData(
    id: 3,
    image: 'assets/images/person_3.png',
    title: '잭과분홍콩나물 25',
    description: null,
    likeCount: 29930,
    info: [
      CardInfoData(
          icon: 'assets/images/purple_heart_icon.png',
          title: '진지한 연애를 찾는 중',
          color: Get.theme.colorScheme.surface),
      CardInfoData(
        icon: 'assets/images/glass_icon.png',
        title: '전혀 안 함',
      ),
      CardInfoData(
        icon: 'assets/images/cigar_icon.png',
        title: '비흡연',
      ),
      CardInfoData(
        icon: 'assets/images/hand_icon.png',
        title: '매일 1시간 이상',
      ),
      CardInfoData(
        icon: 'assets/images/handshake_icon.png',
        title: '만나는 걸 좋아함',
      ),
      CardInfoData(title: 'INFP')
    ],
  ),
  CardData(
    id: 4,
    image: 'assets/images/person_3.png',
    title: '잭과분홍콩나물 25',
    description: null,
    likeCount: 29930,
    info: [
      CardInfoData(
          icon: 'assets/images/purple_heart_icon.png',
          title: '진지한 연애를 찾는 중',
          color: Get.theme.colorScheme.surface),
      CardInfoData(
        icon: 'assets/images/glass_icon.png',
        title: '전혀 안 함',
      ),
      CardInfoData(
        icon: 'assets/images/cigar_icon.png',
        title: '비흡연',
      ),
      CardInfoData(
        icon: 'assets/images/hand_icon.png',
        title: '매일 1시간 이상',
      ),
      CardInfoData(
        icon: 'assets/images/handshake_icon.png',
        title: '만나는 걸 좋아함',
      ),
      CardInfoData(title: 'INFP')
    ],
  ),
];
