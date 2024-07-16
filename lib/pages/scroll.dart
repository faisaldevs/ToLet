// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:share_plus/share_plus.dart';
//
// void main() {
//   runApp(const DemoApp());
// }
//
// class DemoApp extends StatelessWidget {
//   const DemoApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Share Plus Plugin Demo',
//       theme: ThemeData(
//         useMaterial3: true,
//         colorSchemeSeed: const Color(0x9f4376f8),
//       ),
//       home: const ShareScreen(),
//     );
//   }
// }
//
// class ShareScreen extends StatefulWidget {
//   const ShareScreen({super.key});
//
//   @override
//   ShareScreenState createState() => ShareScreenState();
// }
//
// class ShareScreenState extends State<ShareScreen> {
//   String text = '';
//   String subject = '';
//   String uri = '';
//   List<String> imageNames = [];
//   List<String> imagePaths = [];
//
//   void _onDeleteImage(int position) {
//     setState(() {
//       imagePaths.removeAt(position);
//       imageNames.removeAt(position);
//     });
//   }
//
//   Future<void> _onShare(BuildContext context) async {
//     final box = context.findRenderObject() as RenderBox?;
//     if (uri.isNotEmpty) {
//       await Share.shareUri(Uri.parse(uri));
//     } else if (imagePaths.isNotEmpty) {
//       final files = imagePaths
//           .asMap()
//           .entries
//           .map((entry) => XFile(entry.value, name: imageNames[entry.key]))
//           .toList();
//       await Share.shareXFiles(files,
//           text: text,
//           subject: subject,
//           sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
//     } else {
//       await Share.share(text,
//           subject: subject,
//           sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
//     }
//   }
//
//   Future<void> _onShareWithResult(BuildContext context) async {
//     final box = context.findRenderObject() as RenderBox?;
//     final scaffoldMessenger = ScaffoldMessenger.of(context);
//     ShareResult shareResult;
//     if (imagePaths.isNotEmpty) {
//       final files = imagePaths
//           .asMap()
//           .entries
//           .map((entry) => XFile(entry.value, name: imageNames[entry.key]))
//           .toList();
//       shareResult = await Share.shareXFiles(files,
//           text: text,
//           subject: subject,
//           sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
//     } else {
//       shareResult = await Share.share(text,
//           subject: subject,
//           sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
//     }
//     scaffoldMessenger.showSnackBar(getResultSnackBar(shareResult));
//   }
//
//   Future<void> _onShareXFileFromAssets(BuildContext context) async {
//     final box = context.findRenderObject() as RenderBox?;
//     final scaffoldMessenger = ScaffoldMessenger.of(context);
//     final data = await rootBundle.load('assets/tolet.png');
//     final buffer = data.buffer;
//     final shareResult = await Share.shareXFiles(
//       [
//         XFile.fromData(
//           buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
//           name: 'flutter_logo.png',
//           mimeType: 'image/png',
//         ),
//       ],
//       sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
//     );
//
//     scaffoldMessenger.showSnackBar(getResultSnackBar(shareResult));
//   }
//
//   SnackBar getResultSnackBar(ShareResult result) {
//     return SnackBar(
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Share result: ${result.status}"),
//           if (result.status == ShareResultStatus.success)
//             Text("Shared to: ${result.raw}")
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Share Plus Plugin Demo'),
//         elevation: 4,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(24),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             ShareTextField(
//               labelText: 'Share text',
//               hintText: 'Enter some text and/or link to share',
//               onChanged: (value) => setState(() => text = value),
//             ),
//             const SizedBox(height: 16),
//             ShareTextField(
//               labelText: 'Share subject',
//               hintText: 'Enter subject to share (optional)',
//               onChanged: (value) => setState(() => subject = value),
//             ),
//             const SizedBox(height: 16),
//             ShareTextField(
//               labelText: 'Share uri',
//               hintText: 'Enter the uri you want to share',
//               onChanged: (value) => setState(() => uri = value),
//             ),
//             const SizedBox(height: 32),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Theme.of(context).colorScheme.onPrimary,
//                 backgroundColor: Theme.of(context).colorScheme.primary,
//               ),
//               onPressed: text.isEmpty && imagePaths.isEmpty && uri.isEmpty
//                   ? null
//                   : () => _onShare(context),
//               child: const Text('Share'),
//             ),
//             const SizedBox(height: 16),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Theme.of(context).colorScheme.onPrimary,
//                 backgroundColor: Theme.of(context).colorScheme.primary,
//               ),
//               onPressed: text.isEmpty && imagePaths.isEmpty
//                   ? null
//                   : () => _onShareWithResult(context),
//               child: const Text('Share With Result'),
//             ),
//             const SizedBox(height: 16),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Theme.of(context).colorScheme.onPrimary,
//                 backgroundColor: Theme.of(context).colorScheme.primary,
//               ),
//               onPressed: () => _onShareXFileFromAssets(context),
//               child: const Text('Share XFile from Assets'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ShareTextField extends StatelessWidget {
//   final String labelText;
//   final String hintText;
//   final ValueChanged<String> onChanged;
//
//   const ShareTextField({
//     required this.labelText,
//     required this.hintText,
//     required this.onChanged,
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: InputDecoration(
//         border: const OutlineInputBorder(),
//         labelText: labelText,
//         hintText: hintText,
//       ),
//       maxLines: null,
//       onChanged: onChanged,
//     );
//   }
// }
