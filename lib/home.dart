import 'package:alvina/cart.dart';
import 'package:alvina/faq.dart';
import 'package:alvina/follow_up.dart';
import 'package:alvina/products/product_list.dart';
import 'package:alvina/providers/home_provider.dart';
import 'package:alvina/widgets/custom_button.dart';
import 'package:alvina/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:alvina/account/tab_layout.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var provider;
  late Future<List<dynamic>?> future;

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  void initState() {
    super.initState();

    future = Provider.of<HomeProvider>(context, listen: false).getData(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffd1beb7),
        title: Center(
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.cover,
            width: 100,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Cart())
              );
            },
            tooltip: 'فتح سلة التسوق',
            icon: const Icon(
              Icons.shopping_cart_outlined,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Uri url = Uri.parse('https://www.instagram.com/alvinaramallah');
                _launchUrl(url);
              },
              child: Stack(
                children: [
                  Image.network('https://www.alvinaramallah.com/wp-content/uploads/2023/11/New-1400x789.png'),
                  Positioned(
                    bottom: 10,
                    child: Align (
                      alignment: Alignment.center,
                      child: CustomButton(
                          title: 'الدخول للمتجر',
                          onPressed: () {
                            Uri url = Uri.parse('https://www.instagram.com/alvinaramallah');
                            _launchUrl(url);
                          },
                          width: 200.0,
                          color: const Color(0xff896768)
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Divider(),
            Image.network('https://www.alvinaramallah.com/wp-content/uploads/2023/09/ALVINA-NEW-0.png'),
            const Divider(),
            /*Image.network('https://www.alvinaramallah.com/wp-content/uploads/2023/05/TUNiK-iNG-1219x800.jpg'),
            const Divider(),
            Image.network('https://www.alvinaramallah.com/wp-content/uploads/2023/05/TRENc-iNG_1.jpg'),
            const Divider(),
            Image.network('https://www.alvinaramallah.com/wp-content/uploads/2023/05/esofman-ing.jpg'),
             const Divider(),
            Image.network('https://www.alvinaramallah.com/wp-content/uploads/2023/05/ELBiSE_1_2-1219x800.jpg'),
             const Divider(),
            Image.network('https://www.alvinaramallah.com/wp-content/uploads/2023/05/BLUZ-iNG-1219x800.jpg'),
             const Divider(),
            Image.network('https://www.alvinaramallah.com/wp-content/uploads/2023/05/ABiYE-iMG-1219x800.jpg'),*/
            //Winter Season Collection
            const SizedBox(
              height: 20.0,
            ),
            const Text(
                'تشكيلة الموسم الشتوي',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            FutureBuilder(
              future: future,
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  List<dynamic>? data = snapshot.data;
                  return SizedBox(
                    height: 200.0,
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1
                      ),
                      itemCount: data!.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  '${data[index]['thumbnail']}',
                                  fit: BoxFit.fill,
                                  height: double.infinity,
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 5,
                                child: Align (
                                  alignment: Alignment.center,
                                  child: Container (
                                    decoration: const BoxDecoration(
                                        color: Color(0xff4c0d0d)
                                    ),
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '${data[index]['title']}'.toUpperCase(),
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                      child: Text("${snapshot.error}"));
                }
                return const Text('');
              },
            ),
            //Summer Season Collection...
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'تشكيلة الموسم الصيفي',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            FutureBuilder(
              future: future,
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  List<dynamic>? data = snapshot.data;
                  return SizedBox(
                    height: 200.0,
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1
                      ),
                      itemCount: data!.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  '${data[index]['thumbnail']}',
                                  fit: BoxFit.fill,
                                  height: double.infinity,
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 5,
                                child: Align (
                                  alignment: Alignment.center,
                                  child: Container (
                                    decoration: const BoxDecoration(
                                        color: Color(0xff4c0d0d)
                                    ),
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '${data[index]['title']}'.toUpperCase(),
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                      child: Text("${snapshot.error}"));
                }
                return const Text('');
              },
            ),
            //Specially for you...
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'خصيصاً لكِ',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            FutureBuilder(
              future: future,
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  List<dynamic>? data = snapshot.data;
                  return SizedBox(
                    height: 200.0,
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1
                      ),
                      itemCount: data!.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  '${data[index]['thumbnail']}',
                                  fit: BoxFit.fill,
                                  height: double.infinity,
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 5,
                                child: Align (
                                  alignment: Alignment.center,
                                  child: Container (
                                    decoration: const BoxDecoration(
                                        color: Color(0xff4c0d0d)
                                    ),
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '${data[index]['title']}'.toUpperCase(),
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                right: 0,
                                child: Align (
                                  alignment: Alignment.center,
                                  child: Container (
                                    decoration: const BoxDecoration(
                                        color: Color(0xffA03331)
                                    ),
                                    padding: const EdgeInsets.all(8.0),
                                    child: const Text(
                                      '50%',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                      child: Text("${snapshot.error}"));
                }
                return const Text('');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Uri url = Uri.parse('https://www.instagram.com/alvinaramallah');
                    _launchUrl(url);
                  },
                  icon: Image.asset(
                    'assets/instagram_icon.png',
                    width: 36,
                    height: 36,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Uri url = Uri.parse('https://www.facebook.com/alvinaramallah');
                    _launchUrl(url);

                  },
                  icon: Image.asset(
                    'assets/facebook_icon.png',
                    width: 36,
                    height: 36,
                  ),
                ),
                const Text(
                  'تابعينا على مواقع التواصل الاجتماعي'
                )
              ],
            ),
            const Footer()
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xffd1beb7),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 100.0,
                    height: 100.0,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        //Login, Signup...
                        Navigator.pop(context);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const TabLayout())
                        );
                      },
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text('تسجيل الدخول / تسجيل جديد'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: const Text('حسابي'),
              onTap: () {
              },
            ),
             const Divider(),
            ListTile(
              title: const Text('أسئلة واستفسارات'),
              onTap: () {
                //FAQ's...
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FAQ())
                );
              },
            ),
             const Divider(),
            ListTile(
              title: const Text('متابعة الطلب'),
              onTap: () {
                //Follow Up...
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FollowUp())
                );
              },
            ),
             const Divider(),
            ExpansionTile(
              title: const Text('شال/إيشارب'),
              children: [
                ListTile(
                  title: const Text("شال"),
                  onTap: (){
                    //Shawl...
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ProductList(
                            productId: "شال"
                        ))
                    );
                  },
                ),
                ListTile(
                  title: const Text("إيشارب"),
                  onTap: (){
                    //Isharb...
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ProductList(
                            productId: "إيشارب"
                        ))
                    );
                  },
                ),
              ],
            ),
             const Divider(),
            ListTile(
              title: const Text('شنطة'),
              onTap: () {
                //Bag...
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ProductList(
                        productId: "شنطة"
                    ))
                );
              },
            ),
             const Divider(),
            ExpansionTile(
              title: const Text('الموسم الشتوي'),
              children: [
                ListTile(
                  title: const Text('بلوز'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('بنطلون'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('تنورة'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('جلباب'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('فستان'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('جاكيت'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text("جاكيت شتوي"),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('طقم'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('فست'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('قطن'),
                  onTap: () {
                  },
                ),
              ],
            ),
             const Divider(),
            ExpansionTile(
              title: const Text('الموسم الصيفي'),
              children: [
                ListTile(
                  title: const Text('ترانشكوت'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('بنطلون'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('بلوز'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('تونيك'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('فستان سهرة'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('فست'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('طقم'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('فستان'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('قطن'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('جلباب'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('جاكيت'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('تنورة'),
                  onTap: () {
                  },
                ),
              ],
            ),
             const Divider(),
            ExpansionTile(
              title: const Text('الموسم الجديد'),
              children: [
                ListTile(
                  title: const Text('تونيك'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('بنطلون'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('جاكيت'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('فستان'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('طقم'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('جاكيت شتوي'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('جلباب'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('ترانشكوت'),
                  onTap: () {
                  },
                ),
                ListTile(
                  title: const Text('فست'),
                  onTap: () {
                  },
                ),
              ],
            ),
             const Divider(),
          ],
        ),
      )
    );
  }
}