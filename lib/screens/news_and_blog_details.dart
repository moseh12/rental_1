// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:rental/components/news_and_blog_components.dart';
import 'package:rental/utils/colorscheme.dart';

class NewsAndBlogDetails extends StatefulWidget {
  final String? headline;
  // ignore: use_key_in_widget_constructors
  const NewsAndBlogDetails([this.headline]);
  @override
  _NewsAndBlogDetailsState createState() => _NewsAndBlogDetailsState();
}

final List<String> prices = [
  'Kes567,900',
  'Kes335,900',
  'Kes289,700',
  'Kes470,000',
  'Kes224,670',
  'Kes490,270',
  'Kes300,600',
  'Kes651,230',
  'Kes980,000',
  'Kes300,000',
];
final List<String> addresses = [
  '16523 Choke Cherry Dr,Victorville,CA 8728',
  'Station,Hampton,GA 23423',
  '129 Hoper Ln,Folsom,CA 95300',
  '13598 GA 30127',
  '4625 Careyback CA 7689',
  '4592 Eldywood,OH 45103',
  '4028 Timber Creek ,OH45623',
  '11456 57th St E Parrish',
  '67 Marvin Park,GA 30178',
  '24019 Doverwick,Tx',
];
final List<String> houseImg = [
  'assets/images/house.jpg',
  'assets/images/house1.jpg',
  'assets/images/house2.jpg',
  'assets/images/house3.jpg',
  'assets/images/house4.jpg',
  'assets/images/house5.jpg',
  'assets/images/house6.jpg',
  'assets/images/house7.jpg',
  'assets/images/house8.jpg',
  'assets/images/house9.jpg',
];

class _NewsAndBlogDetailsState extends State<NewsAndBlogDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: NewsAndBlogDetailsBody(widget.headline!)),
    );
  }
}

class NewsAndBlogDetailsBody extends StatelessWidget {
  final String headline;
  NewsAndBlogDetailsBody(this.headline, {super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bannerForNewsAndBlog(context),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'News',
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  headline,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Post By John Smith',
                  style: TextStyle(color: primaryColor),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Post on: 9 hours',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 5),
                const Divider(),
                const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,but also the leap into electronic typesetting, remaining essentially unchanged. \nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,but also the leap into electronic typesetting, remaining essentially unchanged. \nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Container(
            height: 140,
            margin: const EdgeInsets.only(bottom: 10.0),
            child: newsAndBlogDetailsList(),
          ),
        ],
      ),
    );
  }

  final List<String> prices = [
    '\Kes567,900',
    '\Kes335,900',
    '\Kes289,700',
    '\Kes470,000',
    '\Kes224,670',
    '\Kes490,270',
    '\Kes300,600',
    '\Kes651,230',
    '\Kes980,000',
    '\Kes300,000',
  ];
  final List<String> addresses = [
    '16523 Choke Cherry Dr,Victorville,CA 8728',
    'Station,Hampton,GA 23423',
    '129 Hoper Ln,Folsom,CA 95300',
    '13598 GA 30127',
    '4625 Careyback CA 7689',
    '4592 Eldywood,OH 45103',
    '4028 Timber Creek ,OH45623',
    '11456 57th St E Parrish',
    '67 Marvin Park,GA 30178',
    '24019 Doverwick,Tx',
  ];
  final List<String> houseImg = [
    'assets/images/house.jpg',
    'assets/images/house1.jpg',
    'assets/images/house2.jpg',
    'assets/images/house3.jpg',
    'assets/images/house4.jpg',
    'assets/images/house5.jpg',
    'assets/images/house6.jpg',
    'assets/images/house7.jpg',
    'assets/images/house8.jpg',
    'assets/images/house9.jpg',
  ];
  final List<String> reviews = [
    '29',
    '4',
    '67',
    '32',
    '12',
    '45',
    '50',
    '59',
    '67',
  ];
  final List<String> name = [
    'Chapman Ford',
    'Jackie Brown',
    'Steve White',
    'Bret John',
    'Peter Shaw',
    'Branson Brown',
    'Mitchel Stark',
    'Shawn Tait',
    'Paul Phoenix',
  ];
  newsAndBlogDetailsList() {
    return ListView.builder(
      itemCount: houseImg.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Row(
          children: [
            index == 0
                ? const SizedBox(width: 10)
                : GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'HouseDetails');
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 200,
                      margin: const EdgeInsets.only(right: 8.0),
                      padding: const EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: const EdgeInsets.only(right: 6),
                              height: double.infinity,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(houseImg[index]),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      prices[index],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const Spacer(),
                                    const CircleAvatar(
                                      maxRadius: 12,
                                      backgroundColor: primaryColor,
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                        size: 17,
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        maxRadius: 5,
                                        backgroundColor: Colors.green,
                                      ),
                                      Text(
                                        ' House for Sale',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  addresses[index],
                                  maxLines: 2,
                                  overflow: TextOverflow.fade,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11,
                                  ),
                                ),

                                const SizedBox(height: 5),
                                const IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Text(
                                        '3 ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        'bds ',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      VerticalDivider(
                                        width: 1,
                                        color: Colors.grey,
                                      ),

                                      Text(
                                        ' 5 ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        'baths ',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      VerticalDivider(
                                        width: 1,
                                        color: Colors.grey,
                                      ),

                                      Text(
                                        ' 1750 ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        'sqft',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    const Text(
                                      'Agent: ',
                                      style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 13,
                                      ),
                                    ),
                                    Text(
                                      name[index - 1],
                                      style: const TextStyle(
                                        color: primaryColor,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.orange,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.orange,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.orange,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.orange,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      '(Kes{reviews[index-1]} Reviews)',
                                      style: const TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
          ],
        );
      },
    );
  }
}
