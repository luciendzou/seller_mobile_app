import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:map_viewer_widget/map_viewer_widget.dart';
import 'package:seller_mobile_app/auth/send_mail.dart';
import 'package:seller_mobile_app/auth/widgets/custom_screen.dart';
import 'package:seller_mobile_app/auth/widgets/rich_text_widget.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class CompletSignin extends StatelessWidget {
  const CompletSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const RichTextWidget(
                    title: 'Names',
                    subtitle: 'DZOU LEBONGO ERASTE LUCIEN',
                    fontSizeT: 14.0,
                    fontSizeS: 16.0,
                  ),
                  const SizedBox(height: 25),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichTextWidget(
                        title: 'Phone number',
                        subtitle: '+237699249894',
                        fontSizeT: 12.0,
                        fontSizeS: 14.0,
                      ),
                      RichTextWidget(
                        title: 'Email',
                        subtitle: 'luciendzou3@gmail.com',
                        fontSizeT: 12.0,
                        fontSizeS: 14.0,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Location",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const SizedBox(
                          width: 150,
                          child: Text(
                            "Cameroun, \nYaoundé, Nkobisson",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 256,
                          height: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: FlutterMap(
                            options: MapOptions(
                              center: LatLng(
                                3.877202240404152,
                                11.421523804399994,
                              ),
                              zoom: 18,
                              maxZoom: 18,
                            ),
                            children: [
                              openStreetMapTileLayer,
                              MarkerLayer(
                                markers: [
                                  Marker(
                                    point: LatLng(
                                      3.877202240404152,
                                      11.421523804399994,
                                    ),
                                    width: 20,
                                    height: 20,
                                    rotateAlignment: Alignment.centerRight,
                                    builder: (BuildContext context) {
                                      return Icon(
                                        Icons.location_pin,
                                        color: Color(0xFF0059FF),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        side: WidgetStatePropertyAll(BorderSide(color:Color(0xFF9E0000) )),
                        enableFeedback: true,
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0xFF9E0000),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (e) => const SendMail()));
                      },
                      child: const Text(
                        "Send the informations",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TileLayer get openStreetMapTileLayer => TileLayer(
  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
  userAgentPackageName: 'com.example.app',
);
