import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios Botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicator',
      subtitle: 'Generales y controladores',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'SnackBars y dialogos',
      subtitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated Container',
      subtitle: 'Stateful Widget Animated',
      link: '/animated',
      icon: Icons.play_circle_fill_outlined),
  MenuItem(
      title: 'UI Controls + Tiles',
      subtitle: 'A serie of flutter - controls ',
      link: '/ui-controls',
      icon: Icons.control_point_sharp),
  MenuItem(
      title: 'Introduction to App',
      subtitle: 'tutorial introductorio',
      link: '/tutorial',
      icon: Icons.accessibility_rounded),
  MenuItem(
      title: 'InfiniteScroll and Pull ',
      subtitle: 'Listas infinitas y pull to refresh',
      link: '/infinite',
      icon: Icons.list_outlined),
];
