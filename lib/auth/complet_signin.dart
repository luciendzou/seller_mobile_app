import 'package:flutter/material.dart';
import 'package:map_viewer_widget/map_viewer_widget.dart';
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
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
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
                const SizedBox(
                  height: 25,
                ),
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
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Location",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 12),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              "Cameroun, \nYaoundé, Nkobisson, \n3.877202240404152, 11.421523804399994",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      MapViewerWidget(
                        options: MapOptions(
                          center: LatLng(3.877202240404152, 11.421523804399994),
                          zoom: 18,
                          maxZoom: 18,
                        ),
                        children: const [],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
