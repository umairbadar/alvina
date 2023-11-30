import 'package:alvina/cart.dart';
import 'package:alvina/providers/home_provider.dart';
import 'package:alvina/providers/product_listing_provider.dart';
import 'package:alvina/providers/url_launcher_provider.dart';
import 'package:alvina/widgets/custom_button.dart';
import 'package:alvina/widgets/footer.dart';
import 'package:alvina/widgets/side_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late Future<List<dynamic>?> future;

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
            Consumer<UrlLauncherProvider>(builder: (context, value, child){
              return InkWell(
                onTap: () {
                  Uri url = Uri.parse('https://www.instagram.com/alvinaramallah');
                  value.launch(url);
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
                              value.launch(url);
                            },
                            width: 200.0,
                            color: const Color(0xff896768)
                        ),
                      ),
                    )
                  ],
                ),
              );
              },
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
                  return Consumer<ProductListingProvider> (
                    builder: (context, value, child) {
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
                            return InkWell(
                              onTap: () => value.gotoProductDetails(context, data[index]['id']),
                              child: Card(
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
                              ),
                            );
                          },
                        ),
                      );
                    },
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
                  return Consumer<ProductListingProvider> (
                    builder: (context, value, child) {
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
                            return InkWell(
                              onTap: () => value.gotoProductDetails(context, data[index]['id']),
                              child: Card(
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
                              ),
                            );
                          },
                        ),
                      );
                    },
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
                  return Consumer<ProductListingProvider> (
                    builder: (context, value, child) {
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
                            return InkWell(
                              onTap: () => value.gotoProductDetails(context, data[index]['id']),
                              child: Card(
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
                              ),
                            );
                          },
                        ),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(
                      child: Text("${snapshot.error}"));
                }
                return const Text('');
              },
            ),
            Consumer<UrlLauncherProvider> (
              builder: (context, value, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Uri url = Uri.parse('https://www.instagram.com/alvinaramallah');
                        value.launch(url);
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
                        value.launch(url);

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
                );
              },
            ),
            const Footer()
          ],
        ),
      ),
      drawer: const SideDrawer()
    );
  }
}