
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/data/datasource/remote/ApiService.dart';

class Certificates extends StatefulWidget {
  const Certificates({super.key, required this.screenType});

  final ScreenType screenType;

  @override
  State createState() => _CertificatesState();
}

class _CertificatesState extends State<Certificates> {

  @override
  Widget build(BuildContext context) {
    return switch (widget.screenType) {
      ScreenType.Desktop => desktop(context),
      ScreenType.Phone => desktop(context),
      ScreenType.Tablet => desktop(context),
      ScreenType.Watch => desktop(context),
    };
  }

  Widget desktop(BuildContext context) {
    return FutureBuilder(
        future: ApiService().getCertificates(),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
            var list = snapshot.data as List<String>;

            return Column(
              children: [
                Text(
                  'Certificates',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 48,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 1.08,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(16)),
                Padding(
                    padding: const EdgeInsets.all(8),
                    child: GridView.count(
                      // Create a grid with 3 columns. If you change the scrollDirection to
                      // horizontal, this produces 3 rows.
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 3508/2481,
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(8),
                      physics: const NeverScrollableScrollPhysics(),
                      children: List.generate(list.length, (index) {
                        return Image.network(
                          list[index],
                          fit: BoxFit.fitWidth,
                        );
                      }),
                    ),
                )
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else {
            return const Text("Error");
          }
        }
    );
  }

}
