// import 'package:flutter/material.dart';

// class DateModal extends StatefulWidget {
//   final VoidCallback onConfirm;

//   const DateModal({required this.onConfirm, Key? key}) : super(key: key);

//   @override
//   State<DateModal> createState() => _DateModalState();
// }

// class _DateModalState extends State<DateModal> {
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       backgroundColor: Colors.white,
//       child: Container(
//         height: 275,
//         width: 351,
//         padding: const EdgeInsets.all(14),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'Вы уверены, что хотите выйти?',
//               style: TextStyle(
//                 fontSize: 34,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: 145, // Уменьшили ширину кнопки
//                   height: 56,
//                   decoration: BoxDecoration(
//                     color: Colors.white, // Цвет внутренней заливки
//                     borderRadius: BorderRadius.circular(15),
//                     border: Border.all(
//                       color: const Color(0xFFF3F3F3), // Цвет границы
//                       width: 2,
//                     ),
//                   ),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                       onConfirm();
//                     },
//                     child: Text(
//                       'Да',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Theme.of(context).primaryColor, // Цвет текста
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 13),
//                 Container(
//                   width: 145, // Уменьшили ширину кнопки
//                   height: 56,
//                   decoration: BoxDecoration(
//                     color: Theme.of(context)
//                         .primaryColor, // Цвет внутренней заливки
//                     borderRadius: BorderRadius.circular(15),
//                     border: Border.all(
//                       color: Theme.of(context).primaryColor, // Цвет границы
//                       width: 2,
//                     ),
//                   ),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                     },
//                     child: const Text(
//                       'Нет',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white, // Цвет текста
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
