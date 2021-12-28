import 'package:flutter/material.dart';
import 'package:flutter_hotel/pages/bottom_bar_item.dart';

final List<BottomBarItem> barItemsList = [
  BottomBarItem(label: 'Home', isSelected: true, icon: Icons.home),
  BottomBarItem(label: 'Conta', isSelected: false, icon: Icons.person),
  BottomBarItem(label: 'Reservas', isSelected: false, icon: Icons.pending_actions),
  BottomBarItem(label: 'Pagamentos', isSelected: false, icon: Icons.payments),
  BottomBarItem(label: 'Mais', isSelected: false, icon: Icons.more_horiz),
];