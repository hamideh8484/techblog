import 'package:flutter/material.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/models/data_models.dart';

Map homePagePosterMap = {
  "imageAssets": Assets.images.posterTest.path,
  "writer": "ملیکا عزیزی",
  "date": "یک روز پیش",
  "title": "دوازده قدم برنامه نویسی یک دوره ",
  "view": "1000"
};

// blog fake data
List<HashtTAgModel> tagList = [
  HashtTAgModel(title: 'جاوا'),
  HashtTAgModel(title: 'کاتلین'),
  HashtTAgModel(title: 'وب'),
  HashtTAgModel(title: 'هوش مصنوعی'),
  HashtTAgModel(title: 'iot'),
  HashtTAgModel(title: 'دارت'),
];
List<HashtTAgModel> selectedTags = [];

List<BlogModel> blogList = [
  BlogModel(
    id: 1,
    imageUrl:
        'https://cdn.nody.ir/files/2024/05/30/nody-%D8%AC%D8%AF%DB%8C%D8%AF%D8%AA%D8%B1%DB%8C%D9%86-%D8%B9%DA%A9%D8%B3%D8%A7%DB%8C%D9%84%D8%A7%D9%86-%D9%85%D8%A7%D8%B3%DA%A9-1717096164.webp',
    title: 'ایلان ماسک حدود 4 میلیارد از سهان تسلا را فروخت',
    writer: 'جواد تاجی',
    writerImageUrl:
        'https://cdn.nody.ir/files/2024/05/30/nody-%D8%AC%D8%AF%DB%8C%D8%AF%D8%AA%D8%B1%DB%8C%D9%86-%D8%B9%DA%A9%D8%B3%D8%A7%DB%8C%D9%84%D8%A7%D9%86-%D9%85%D8%A7%D8%B3%DA%A9-1717096164.webp',
    date: 'یک ساعت پیش',
    content: 'ایلان ماسک صاحب ۳۰ درصد از سهام تسلا موتورز است...',
    views: '256',
  ),
  BlogModel(
    id: 2,
    imageUrl: 'https://aftabnews.ir/files/fa/news/1403/3/27/1351183_557.jpg',
    title: 'ایلان ماسک حدود 4 میلیارد از سهان تسلا را فروخت',
    writer: 'جواد تاجی',
    writerImageUrl:
        'https://aftabnews.ir/files/fa/news/1403/3/27/1351183_557.jpg',
    date: 'یک ساعت پیش',
    content: 'ایلان ماسک صاحب ۳۰ درصد از سهام تسلا موتورز است...',
    views: '256',
  ),
  BlogModel(
    id: 3,
    imageUrl:
        'https://static3.parsnews.com/thumbnail/9pMiCrHZXaIO/00u_gJ5mbDPjYGfawu2HP7LRCRJqBGsxLfbtptyQEOTBhDRCzPHiEt5DkgzeYWqHxCgYJujfKiE,/%D8%A7%DB%8C%D9%84%D8%A7%D9%86+%D9%85%D8%A7%D8%B3%DA%A9.jpg',
    title: 'ایلان ماسک حدود 4 میلیارد از سهان تسلا را فروخت',
    writer: 'جواد تاجی',
    writerImageUrl:
        'https://static3.parsnews.com/thumbnail/9pMiCrHZXaIO/00u_gJ5mbDPjYGfawu2HP7LRCRJqBGsxLfbtptyQEOTBhDRCzPHiEt5DkgzeYWqHxCgYJujfKiE,/%D8%A7%DB%8C%D9%84%D8%A7%D9%86+%D9%85%D8%A7%D8%B3%DA%A9.jpg',
    date: 'یک ساعت پیش',
    content: 'ایلان ماسک صاحب ۳۰ درصد از سهام تسلا موتورز است...',
    views: '256',
  ),
  BlogModel(
    id: 4,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgA8qcOIrHrLYOIbXABrJZtfk68KFcv_dMcA&s',
    title: 'ایلان ماسک حدود 4 میلیارد از سهان تسلا را فروخت',
    writer: 'جواد تاجی',
    writerImageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgA8qcOIrHrLYOIbXABrJZtfk68KFcv_dMcA&s',
    date: 'یک ساعت پیش',
    content: 'ایلان ماسک صاحب ۳۰ درصد از سهام تسلا موتورز است...',
    views: '256',
  ),
  BlogModel(
    id: 5,
    imageUrl:
        'https://cdn.nody.ir/files/2024/05/30/nody-%D8%AC%D8%AF%DB%8C%D8%AF%D8%AA%D8%B1%DB%8C%D9%86-%D8%B9%DA%A9%D8%B3%D8%A7%DB%8C%D9%84%D8%A7%D9%86-%D9%85%D8%A7%D8%B3%DA%A9-1717096164.webp',
    title: 'ایلان ماسک حدود 4 میلیارد از سهان تسلا را فروخت',
    writer: 'جواد تاجی',
    writerImageUrl:
        'https://cdn.nody.ir/files/2024/05/30/nody-%D8%AC%D8%AF%DB%8C%D8%AF%D8%AA%D8%B1%DB%8C%D9%86-%D8%B9%DA%A9%D8%B3%D8%A7%DB%8C%D9%84%D8%A7%D9%86-%D9%85%D8%A7%D8%B3%DA%A9-1717096164.webp',
    date: 'یک ساعت پیش',
    content: 'ایلان ماسک صاحب ۳۰ درصد از سهام تسلا موتورز است...',
    views: '256',
  ),
  BlogModel(
    id: 6,
    imageUrl:
        'https://cdn.nody.ir/files/2024/05/30/nody-%D8%AC%D8%AF%DB%8C%D8%AF%D8%AA%D8%B1%DB%8C%D9%86-%D8%B9%DA%A9%D8%B3%D8%A7%DB%8C%D9%84%D8%A7%D9%86-%D9%85%D8%A7%D8%B3%DA%A9-1717096164.webp',
    title: 'ایلان ماسک حدود 4 میلیارد از سهان تسلا را فروخت',
    writer: 'جواد تاجی',
    writerImageUrl:
        'https://cdn.nody.ir/files/2024/05/30/nody-%D8%AC%D8%AF%DB%8C%D8%AF%D8%AA%D8%B1%DB%8C%D9%86-%D8%B9%DA%A9%D8%B3%D8%A7%DB%8C%D9%84%D8%A7%D9%86-%D9%85%D8%A7%D8%B3%DA%A9-1717096164.webp',
    date: 'یک ساعت پیش',
    content: 'ایلان ماسک صاحب ۳۰ درصد از سهام تسلا موتورز است...',
    views: '256',
  ),
  BlogModel(
    id: 7,
    imageUrl:
        'https://cdn.nody.ir/files/2024/05/30/nody-%D8%AC%D8%AF%DB%8C%D8%AF%D8%AA%D8%B1%DB%8C%D9%86-%D8%B9%DA%A9%D8%B3%D8%A7%DB%8C%D9%84%D8%A7%D9%86-%D9%85%D8%A7%D8%B3%DA%A9-1717096164.webp',
    title: 'ایلان ماسک حدود 4 میلیارد از سهان تسلا را فروخت',
    writer: 'جواد تاجی',
    writerImageUrl:
        'https://cdn.nody.ir/files/2024/05/30/nody-%D8%AC%D8%AF%DB%8C%D8%AF%D8%AA%D8%B1%DB%8C%D9%86-%D8%B9%DA%A9%D8%B3%D8%A7%DB%8C%D9%84%D8%A7%D9%86-%D9%85%D8%A7%D8%B3%DA%A9-1717096164.webp',
    date: 'یک ساعت پیش',
    content: 'ایلان ماسک صاحب ۳۰ درصد از سهام تسلا موتورز است...',
    views: '256',
  ),
];
