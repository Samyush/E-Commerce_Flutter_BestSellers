// import 'package:best_sellers/screens/sign_up/components/sign_up_form.dart';
// import 'package:flutter/material.dart';
//
// class LoadingSpinner extends StatefulWidget {
//   final double opacity;
//   final Color color;
//   final Widget progressIndicator;
//   final Offset offset;
//   final bool dismissible;
//   final Widget child;
//
//   LoadingSpinner({
//     Key key,
//     // @required this.inAsyncCall,
//     this.opacity = 0.3,
//     this.color = Colors.grey,
//     this.progressIndicator = const CircularProgressIndicator(),
//     this.offset,
//     this.dismissible = false,
//     @required this.child,
//   });
//
//   @override
//   _LoadingSpinnerState createState() => _LoadingSpinnerState();
// }
//
// class _LoadingSpinnerState extends State<LoadingSpinner> {
//   bool inAsyncCall = SignUpFormState().showSpinner;
//
//   @override
//   Widget build(BuildContext context) {
//     List<Widget> widgetList = [];
//     widgetList.add(widget.child);
//     if (inAsyncCall) {
//       Widget layOutProgressIndicator;
//       if (widget.offset == null)
//         layOutProgressIndicator = Center(child: widget.progressIndicator);
//       else {
//         layOutProgressIndicator = Positioned(
//           child: widget.progressIndicator,
//           left: widget.offset.dx,
//           top: widget.offset.dy,
//         );
//       }
//       final modal = [
//         new Opacity(
//           child: new ModalBarrier(
//               dismissible: widget.dismissible, color: widget.color),
//           opacity: widget.opacity,
//         ),
//         layOutProgressIndicator
//       ];
//       widgetList += modal;
//     }
//     return new Stack(
//       children: widgetList,
//     );
//   }
// }
