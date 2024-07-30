import 'package:alqr/components/bottom_sheet.dart';
import 'package:alqr/components/btn.dart';
import 'package:alqr/components/cards.dart';
import 'package:alqr/pages/gen.dart';
import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _editingController = TextEditingController(text: '');
  String data = '';

  void showbtn() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(10),
          content: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Generate Random QrCode
              Text(
                'Generate Radom Codes',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // TextFill
              SizedBox(height: 20),
              TextField(
                controller: _editingController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  hintText: 'Enter random Prompt',
                ),
              ),

              //Gene Btn
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    data = _editingController.text;
                    _editingController.clear();
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueAccent,
                  ),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                  child: Text(
                    'Generate',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: PrettyQr(
                  data: '$data',
                  size: 200,
                  roundEdges: true,
                  elementColor: Theme.of(context).primaryColor,
                ),
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidegt(
                    btnText: 'Share',
                    iconImage: Icons.share,
                  ),
                  ButtonWidegt(
                    btnText: 'Download',
                    iconImage: Icons.download_sharp,
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AlQr and Camera image / flash image
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[700]),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_outlined,
                    ),
                  ),
                ),
              ],
            ),
            // Header 'Hi User'
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Good Afternoon, Altech',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                Text(
                  'Happy day',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 10),
            //Subheader 'Choose the Mode of QrCode'
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Choose the Mode of QrCode.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            //the four Choices
            Column(
              children: [
                CardTile(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RandScreen())),
                  title: 'Website Generator',
                  content: 'Generate a Qr for your Website url',
                  bgCol: Color.fromARGB(255, 71, 139, 255),
                ),
                CardTile(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RandScreen())),
                  title: 'Tel Number QrCode',
                  content: 'Encrypt your Telephone Number to QrCode',
                  bgCol: Colors.lightBlue,
                ),
                CardTile(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RandScreen())),
                    title: 'Wifi',
                    content: 'Generate QrCode for wifi.',
                    bgCol: Colors.lightBlueAccent),
                CardTile(
                    onTap: showbtn,
                    title: 'Other',
                    content: 'Generate for QrCode for anything.',
                    bgCol: const Color.fromARGB(255, 105, 168, 240)),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showbtn,
        tooltip: 'Tap to Generate',
        child: const Icon(Icons.grid_view_rounded),
      ),
    );
  }
}
