import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  WebViewController controller = WebViewController();
  bool isLoading = true;
  @override
  void initState() {
    controller.setNavigationDelegate(NavigationDelegate(
      onPageStarted: (url) => setState(() => isLoading = true),
      onPageFinished: (url) => setState(() => isLoading = false),
    ));
    controller.loadRequest(Uri.parse('https://storetia.com/'));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        isLoading ? Center(child: CircularProgressIndicator(
          color: Colors.green,
        ),) :
        WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
