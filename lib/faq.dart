import 'package:alvina/providers/url_launcher_provider.dart';
import 'package:alvina/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.cover,
            width: 100,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'أسئلة شائعة',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Colors.black,
                height: 20,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
            ),
            //Delivery Section Started...
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/delivery_icon.png',
                  width: 50.0,
                  height: 50.0,
                ),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  'التوصيل',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'مدة التوصيل',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Text(
                    'مدة التوصيل هي 1-3 أيام عمل.\n التوصيل لباب البيت لجميع مناطق الضفة، القدس، وجميع مناطق فلسطين الداخل 48.\n عدا منطقة النقب فهي حتى 5 أيام عمل حتى باب البيت.\n مدة التوصيل قد تختلف في أيام الأعياد والعطل الرسمية.',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'تكلفة التوصيل',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Text(
                    'تكلفة التوصيل مجانيه عند الشراء بقيمه 300 شيكل او اكثر لجميع المناطق',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Text(
                    'عند التسوق بقيمة اقل من 300 شيكل يتم اضافة تكلفة توصيل:-',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '20 شيكل لمناطق الضفه والقدس.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '40 شيكل لمناطق شمال فلسطين الداخل.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '60 شيكل لمناطق جنوب فلسطين الداخل (النقب).',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'منطقتي غير موجوده عند اتمام الطلب',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'في حال عدم وجود منطقتك في المحافظات الموجوده بالموقع، فقط اختاري اقرب منطقة اليك من المحافظات الموجودة واكتبي اسم منطقتك بالعنوان.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يرجى التأكد من الهاتف والعنوان قبل تأكيد الطلب، حيث أن الطلب برقم هاتف خاطئ يؤدي إلى إلغاء الطلب. ',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'هل يوجد مساعدة؟',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'للمساعدة في الطلب بامكانك التواصل معنا على رقم الهاتف، صفحتنا في الفيس بوك.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 0.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'التواصل معنا مباشره من خلال الموقع او الواتس اب رقم: ',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '0097222364343',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'في ساعات العمل من الساعه ال 10 صباحا وحتى الساعه ال 10 مساءا عدا يوم الجمعه.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'ساعات العمل قد تختلف حسب أيام الأعياد والعطل الرسمية: مثل أيام رمضان أو الأعياد.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'هل يمكنني فتح الطرد قبل الاستلام؟',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'نعم، يوجد امكانيه لفتح الطرد والتأكد من طلبك قبل الاستلام،.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'ولكن لا يمكن قياس الملابس قبل الاستلام، لذلك نوفر لك خدمة التبديل المريح.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'كيف يمكنني التأكد من المقاس؟',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'مقاسات شركة الفينا وافية حيث أننا نفضّل أن تطلبي مقاسك الذي ترتدينه بالعادة، كما أنه يمكنك رؤية جدول المقاسات الموجود بصفحة المنتج ليوفر لك السهولة لمعرفة مقاسك الصحيح. ',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'في حال لم يناسبك المنتج/المنتجات من ناحية المقاس أو لأي سبب آخر يمكنك التواصل معنا للتبديل، ونحن سنقوم بالرد عليك كيفية طلب منتجات بدل القطعة/القطع المرسلة إليك، حيث أنه يمكنك التواصل معنا عن طريق العديد من الطرق الموجودة للتبديل.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Delivery Section Ended...
            const SizedBox(
              height: 15.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Colors.black,
                height: 20,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            //Request Section Started...
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/request_icon.png',
                  width: 50.0,
                  height: 50.0,
                ),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  'الطلب',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'كيفية الشراء/الطلب؟',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يمكنك البحث عن المنتج عن طريق وضع الكود الخاص به بخانة البحث أو عن طريق تصفح المتجر.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'لتسهيل البحث في المتجر، يمكنك اختيار نمرتك من “اختر حسب النمره” لعرض فقط ما هو متوفر من نمرتك.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'بعدها يمكنك الدخول للمنتج عن طريق الضغط على صورة المنتج أو عن طريق الضغط على “اشتري الان” تحت صورة المنتج.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'في حال اردت طلب المنتج اضغطي على اختيار النمره واضافة النمرة المطلوبه ثم على “اضافه الى سلة المشتريات”.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'عند طلب المنتج، سيتم اضافته الى سلة المشتريات الخاصه بك، بحيث يمكنك متابعة التسوق، او النقر على السله في اعلى شمال الشاشه لعرض سلة المشتريات.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'بامكانك عندئذ برؤية سلة مشترياتك، حيث يمكنك حذف منتج لا تريده او الابقاء على ما هو بالسلة، وعند الانتهاء تتقدم لانهاء الطلب.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'بعدما تتأكد من طلبك، ادخلي معلوماتك مثل “الاسم” و “العنوان”.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'لوضع أي ملاحظات حول الطلب أو حول التسليم يمكنك وضع ملاحظه في خانة “ملاحظات الطلب”.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'للانهاء تضغط على “تأكيد الطلب”',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'طرق الدفع',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يمكن الدفع نقداً عند الاستلام أو',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'الكترونيا عن طريق بطاقة الائتمان/PayPal لجميع المناطق.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'هل سيتم حجز المنتجات التي أضيفها إلى سلة المشتريات لي؟',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'ستبقى المنتجات التي تضيفيها إلى سلة المشتريات الخاصة بك حتى نفاد المخزون',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'ولكن لن يتم حجزها لك. إذا نفذ المنتج الذي تضيفيه إلى سلة التسوق الخاصة بك لاحقًا،',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'فإنه يمنحك تحذيرًا بشأن حالة مخزون المنتج الذي تريدين شراءه.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يمكنك أضافة أكثر من منتج الى سلة المشتريات.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'لم يتم تسليم طلبي بعد. اريد تغيير المنتج كيف افعل؟',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      ' لأي تغيير على الطلبيات التي لم يتم إرسالها بعد،',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يرجى التواصل معنا على الهاتف أو الواتس اب رقم: 2364343-2-00972',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Request Section Ended...
            const SizedBox(
              height: 15.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Colors.black,
                height: 20,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            //Points Section Started...
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/points_icon.png',
                  width: 50.0,
                  height: 50.0,
                ),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  'النقاط',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'كيفية الحصول على النقاط؟',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يجب أن يكون لديك حساب على الموقع قبل تأكيد الطلب، يمكنك إنشاء حساب على الموقع قبل تأكيد الطلب ليتم تسجيل نقاط الطلب لديك بحسابك.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يمكنك تسجيل الدخول عن طريق البريد الاكتروني، فيسبوك، جوجل، أو أبل، وسيتم تسجيل النقاط بالحساب المدخل.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'من الأفضل أن يكون لديك حساب واحد على الموقع حتى تتجمع النقاط بحساب واحد لديك.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'متى يمكنني استخدام النقاط؟',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يمكنك إستخدام النقاط أو تجميعها حيث لا يوجد موعد لانتهاء النقاط، يتم تجميع النقاط بحسابك بمجرد اكتمال الطلب من طرفنا، وعند تجميع النقاط بحسابك يمكنك استخدامها فوراً. ',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'كيف يمكن أن أعرف عدد النقاط الموجودة لدي؟',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'بعد تسجيل الدخول، توجهي لصفحة “حسابي” حيث يوجد عدد النقاط الموجودة لديك على الموقع.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'أو عند اتمام الطلب بأعلى الصفحة يوجد عدد النقاط الممكن استخدامها وهي نفس عدد النقاط الموجودة لديك بحسابك.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'كيف يمكنني خصم النقاط الموجودة لدي؟',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يمكنك خصم النقاط عند اتمام الطلب، من أعلى الصفحة أنقرِ لخصم عدد النقاط الموجودة أو بعض منها، وسيتم خصم قيمتها من الطلب. ',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Points Section Ended...
            const SizedBox(
              height: 15.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Colors.black,
                height: 20,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            //Return Exchange Section Started...
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/return_exchange_icon.png',
                  width: 50.0,
                  height: 50.0,
                ),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  'سياسة الارجاع والتبديل',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'سياسة التبديل',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يوجد إمكانية للتبديل خلال 3 أيام من تاريخ استلام الطرد،',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يمكنك التواصل معنا للتبديل ونحن سنقوم بارسال المنتج/المنتجات المطلوبة اليك واستلام القطع المراد تبديلها عن طريق شركة التوصيل خلال 3 أيام من تاريخ قبول عملية التبديل.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'أي استلام المنتجات المراد تبديلها وتسليم المنتجات البديلة بنفس اللحظة.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يمكن التبديل من المحل مباشرة، مع التواصل معنا لأبلاغنا بوجود تبديل من الطلب المرسل اليك.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يتم تبديل المنتج مجانا في حال وجود خلل في المنتج، يجب التواصل معنا فوراً لمراجعة الطلب.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'لا يوجد شروط معينة لتبديل المنتج، يمكن التبديل بنفس نوع المنتج أو أي منتج آخر.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يشترط بالمنتج/المنتجات التي سيتم ارجاعها أن تكون في نفس حالة استلامها;',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '1- بحيث تكون غير متسخة، أو مستعملة، أو ناقصة أي من اكسسوارات المنتج.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '2- وجود فاتورة شراء المنتج أو المنتجات.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يجب أن تكون قيمة طلب التبديل بنفس أو أكثر من قيمة القطع المراد تبديلها.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يدفع الزبون تكلفة الشحن لشركة التوصيل عند التبديل:',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '20 شيكل لمناطق الضفه والقدس.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '40 شيكل لمناطق شمال فلسطين الداخل.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '60 شيكل لمناطق جنوب فلسطين الداخل (النقب).',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يرجى الملاحظة بأن الملابس الرسمية (فساتين السهرة والأطقم الرسمية)، الشالات، الإيشاربات، الكمامات والشنط لا تستبدل ولا تسترجع.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'سياسة الارجاع',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'لا يوجد امكانية لارجاع المنتج/المنتجات إلا في حال ارساله الى المحل بعد يوم واحد فقط من استلام الطرد،',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'مع مراعاة توفر الفاتورة المرسلة مع المنتج وكامل إكسسواراته إن وجد، بإستثناء الملابس الرسميه حيث لا يمكن ارجاعها.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'ويحق للموظفين التأكد من حالة المنتج وعدم ارجاعه في حال وجود اي تلف أو في حال تم استعماله.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يرجى الملاحظة بأن تكلفة التوصيل المدفوعة من قبل الزبون غير مستردة،',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'واذا حصل الزبون على توصيل مجاني، وأراد ارجاع الملابس فأنه يتم خصم ما تم دفعه لتوصيل الطرد اليه من قيمة الإرجاع أي قيمة تكلفة الشحن الى منطقته.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يرجى الملاحظة بأن الملابس الرسمية (فساتين السهرة والأطقم الرسمية)، الشالات، الإيشاربات، الكمامات والشنط لا تستبدل ولا تسترجع.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Return Exchange Section Ended...
            const SizedBox(
              height: 15.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Colors.black,
                height: 20,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            //Privacy Policy Started...
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/privacy_policy.png',
                  width: 50.0,
                  height: 50.0,
                ),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  'سياسة الخصوصية والأستخدام',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'سياسة الخصوصية',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'www.alvinaramallah.com اعتماد شعار حماية المعلومات الشخصية لعملائها يستخدم التكنولوجيا المتطورة من أجل تحقيق هذا الهدف.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'تم اتخاذ الإجراءات الإلكترونية والمادية والمنهجية في بيئات آمنة لضمان الأمن. نقوم بتخزين معلوماتك الشخصية على أجهزة الكمبيوتر الموجودة في المرافق الخاضعة للرقابة ولدينا وصول محدود إلى الخارج.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يتم نقل المعلومات التي يتم الحصول عليها عبر موقعنا الإلكتروني من خلال تقنية تسمى SSL (مقبس آمن لاحقًا) وتوفر النقل الآمن للمعلومات / البيانات.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'كما أننا لا نقوم بتخزين معلومات بطاقتك الائتمانية في أنظمتنا لأي سبب من الأسباب. يتم تشفير معلومات بطاقة الائتمان ولا يتم إرسالها إلا إلى البنك المعني باستخدام طرق تشفير خاصة.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يسمح لك موقع www.alvinaramallah.com بتحديد بعض المعلومات مثل معلومات كلمة المرور للوصول إلى موقع الويب. في حالة نسيان كلمة المرور هذه ، سيتم إرسال كلمة المرور التي سيتم إنشاؤها بواسطة النظام إلى عنوان البريد الإلكتروني الذي أدخلته أثناء التسجيل.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'لا نستعمل بياناتك الخاصة مثل الأسم، العنوان ورقم الهاتف الا لتوصيل طلبك لعنوانك واعطاء المعلومات لشركة التوصيل المعتمدة في منطقتك.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'عند إنشاء حساب على موقعنا الالكتروني أو عن طريق تطبيق Alvina Palestine، يتم حفظ معلوماتك مثل الأسم ورقم الهاتف لسهولة الشراء بالمرات القادمة. يمكنك حذف حسابك من صفحة “حسابي” ويتم حذف معلوماتك الشخصية عن خوادمنا فوراً مع حذف حسابك.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'لطلب حذف جميع بياناتك، معلوماتك الشخصية، وعدم إرسال رسائل قصيرة/أو بريد إلكتروني، يمكنك إرسال طلبك إلى البريد الالكتروني: support@alvinaramallah.com، وسيتم حذف جميع بياناتك الشخصية لدينا.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const ExpansionTile(
              iconColor: Colors.black,
              title: Expanded(
                child: Text(
                  'سياسة الأستخدام',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'الوصول إلى هذا الموقع الإلكتروني www.alvinaramallah.com أو تطبيق الهاتف المحمول Alvina Palestine واستخدام أي من المعلومات الموجودة فيه يعني أنك قد قبلت الشروط المذكورة أدناه.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'لا يتم مشاركة أي من العلومات التي يشاركها المستخدم مع الموقع أو تطبيق الهاتف الا مع شركات التوصيل المعتمدة من طرفنا بهدف توصيل الطلب. ',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'تحتفظ أزياء الفينا فلسطين بالحق في تغيير أو إعادة تنظيم أو التوقف عن نشر أي من الخدمات والمنتجات وشروط الاستخدام والمعلومات المقدمة في الموقع الإلكتروني وتطبيق الهاتف المحمول دون الحاجة إلى تذكير.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'تدخل التغييرات حيز التنفيذ في موقع الويب أو تطبيق الهاتف المحمول في وقت النشر وتتبع التغييرات تحت مسؤولية المستخدمين.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'أزياء الفينا فلسطين لها الحق في الوصول إلى العملاء بهدف التواصل والتسويق والإعلان والترويج والإخطار عن طريق البريد الإلكتروني والرسائل القصيرة والمكالمات الهاتفية أو تطبيق الهاتف المحمول من قبل المستخدم.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'من خلال قبول هذه الاتفاقية، يوافق المستخدمون ويعلنون أن أزياء الفينا فلسطين يمكنها تنفيذ أنشطة الاتصال المكتوبة أعلاه ما لم يتم تقديم إشعار كتابي يطلب خلاف ذلك. بقبول هذه الاتفاقية، يوافق المستخدمون على أن المعلومات التي يتم مشاركتها تخصهم ويمكن مشاركتها مع شركات التوصيل التي تهتم بتوصيل الطلب لباب البيت.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'جميع الحقوق الأخرى التي تتمتع بها أزياء الفينا فلسطين والتي لم يتم ذكرها علانية هنا محفوظة.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Privacy Policy Ended...
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              'هل لديك أسئلة أخرى؟',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'للتواصل معنا',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Text(
              'عن طريق ال WhatsApp',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Consumer<UrlLauncherProvider> (
              builder: (context, value, child) {
                return InkWell(
                  onTap: () {
                    Uri url = Uri.parse('https://wa.me/97222364343');
                    value.launch(url);
                  },
                  child: Image.asset(
                    'assets/whatsapp_icon.png',
                    height: 70.0,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'او على رقم التالي في أوقات الدوام من الساعة العاشره صباحا وحتى الساعة العاشرة ',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Text(
              'مساء باستثناء يوم الجمعه',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Text(
              '00972-2-2364343',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Text(
              'على البريد الاكتروني support@alvinaramallah.com',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Text(
              'رام الله، كفرعقب، الشارع الرئيسي.',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            /*Google Maps will appear here...*/
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                child: Text(
                  'تأسست شركة الفينا التركية في عام 1996. مع احتياجات السيدة وفقا لاتجاهات الموضة اليوم ؛ مع تصميماتها الأصلية ، وأفضل جودة وأفضل سعر ، اختارت أن تقدم نفسها تحت سقف واحد. وابتكرنا نحن متجرنا الالكتروني في عام 2017 للتسهيل على المستخدم الطلب الالكتروني لمنتجات الفينا لجميع مناطق فلسطين والأردن اليوم. عملنا على عمل متجرنا سهلاً وسلساً لتسوق ممتع ومريح، ونتطلع دائما لاستقبال ارائكم ومقترحاتكم.',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            const Footer()
          ],
        ),
      ),
    );
  }
}