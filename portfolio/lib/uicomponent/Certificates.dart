import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../util/Util.dart'; // Pastikan ScreenType diimport

class Certificates extends StatefulWidget {
  const Certificates({super.key, required this.screenType});

  final ScreenType screenType;

  @override
  State createState() => _CertificatesState();
}

class _CertificatesState extends State<Certificates> {

  final List<String> _localCertificates = [
    "https://kafri8889.github.io/resources/dicoding_flutter_pemula.jpg",
    "https://kafri8889.github.io/resources/dicoding_android_intermediate.jpg",
    "https://kafri8889.github.io/resources/dicoding_android_fundamental.jpg",
    "https://kafri8889.github.io/resources/dicoding_android_pemula.jpg",
    "https://kafri8889.github.io/resources/dicoding_kotlin.jpg"
  ];

  void _showCertificateDialog(BuildContext context, String certificateUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final theme = Theme.of(context);
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          insetPadding: const EdgeInsets.all(40),
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 900,
              maxHeight: 900,
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Tombol close
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.close, color: theme.colorScheme.onSurface),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      certificateUrl,
                      fit: BoxFit.contain,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Center(child: Text("Failed to load certificate", style: theme.textTheme.titleMedium));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return desktop(context);
  }

  Widget desktop(BuildContext context) {
    final theme = Theme.of(context);

    final list = _localCertificates;

    if (list.isEmpty) {
      return const Center(child: Text("No certificates available yet."));
    }

    return Column(
      children: [
        Text(
          'Certificates',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: theme.colorScheme.onBackground,
            fontSize: 48,
            fontWeight: FontWeight.w900, // Lebih bold
            height: 1.08,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Proof of continuous learning and mastery',
          textAlign: TextAlign.center,
          style: theme.textTheme.titleLarge?.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 40),

        SizedBox(
          height: 350,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: index == list.length - 1 ? 0 : 32),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: InkWell(
                      onTap: () => _showCertificateDialog(context, list[index]),
                      child: Image.network(
                        list[index],
                        height: 350,
                        fit: BoxFit.fitHeight,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Container(
                            height: 350,
                            width: 500,
                            color: theme.colorScheme.surfaceContainerHighest,
                            child: const Center(child: CircularProgressIndicator()),
                          );
                        },
                      ),
                    ),
                  ),
                );
              }),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
