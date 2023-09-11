import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class GitHubWebView extends StatelessWidget {
   GitHubWebView({super.key});
// controller was gotten from the Webview package used
 final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
        // Update loading bar.
        }
        ,
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},
      // onNavigationRequest: (NavigationRequest request) {
      //   if (request.url.startsWith('https://www.youtube.com/')) {
      //     return NavigationDecision.prevent;
      //   }
      //   return NavigationDecision.navigate;
      // },
    ),
  )
  ..loadRequest(Uri.parse('https://github.com/Void-0x32'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1D1F33),
        title: const Text('GitHub Profile'),
      ),
      body: WebViewWidget(controller: controller,
      ),
    );
  }
}
