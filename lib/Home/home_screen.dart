import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:singal_screen_project/Widget/build_size_box.dart';
import 'package:singal_screen_project/Widget/build_text.dart';
import 'package:singal_screen_project/Widget/text_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.cancel,
              color: Color(0xffb11aa7),
            )),
        backgroundColor: Colors.white,
        title: const Center(
          child: Text("Message aux proprietaries",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildSizeBox(
              height: Get.height * 0.06,
            ),
            BuildText(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              text: "Ecrivez un message au proprietaire",
              size: 18,
            ),
            BuildSizeBox(
              height: 3,
            ),
            buildDivider(),
            BuildSizeBox(
              height: 5,
            ),
            BuildText(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              text:
                  "Expliquez aux proprietaires le but de votre location et qui seront les passagers.",
              size: 14,
            ),
            BuildSizeBox(
              height: 5,
            ),
            buildDivider(),
            BuildSizeBox(
              height: 5,
            ),
            BuildText(
              color: Colors.black26,
              text: "Bonjour, ...\n\n\n\n",
              size: 15,
            ),
            BuildSizeBox(
              height: 5,
            ),
            buildDivider(),
            BuildSizeBox(
              height: Get.height * 0.06,
            ),
            BuildText(
              color: Colors.black,
              text: "Precisions sur le rendez-vous",
              size: 18,
              fontWeight: FontWeight.bold,
            ),
            BuildSizeBox(
              height: 5,
            ),
            buildDivider(),
            BuildSizeBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 17),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("lundi 6 juin 10:30"),
                      Text("lundi 9 juin 11:30"),
                    ],
                  ),
                ),
              ),
            ),
            BuildSizeBox(
              height: 15,
            ),
            BuildText(
              color: Colors.black,
              text:
                  "Precisez si besoin les heures et lieu de rendez-vous (etes-vous flexible ? contraintes d'avion ou train ?)",
              size: 14,
            ),
            BuildSizeBox(
              height: 5,
            ),
            buildDivider(),
            BuildSizeBox(
              height: 5,
            ),
            BuildText(
              color: Colors.black26,
              fontWeight: FontWeight.bold,
              text: "Precisions(facultatif)\n\n\n",
              size: 15,
            ),
            BuildSizeBox(
              height: 5,
            ),
            buildDivider(),
            buildDivider(),
            BuildSizeBox(
              height: 5,
            ),
            BuildText(
              color: Colors.black45,
              text:
                  "Vous poureez relire votre demande avant de confirmer l'envoi.",
              size: 15,
            ),
            BuildSizeBox(
              height: 30,
            ),
            TextBottun(
              text: "Suivant",
              clickCallback: () {},
            ),
            BuildSizeBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Divider buildDivider() {
    return const Divider(
      thickness: 1,
    );
  }
}
