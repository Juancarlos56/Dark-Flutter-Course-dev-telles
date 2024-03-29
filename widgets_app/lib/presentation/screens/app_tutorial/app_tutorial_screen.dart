import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca la comida',
      'Reprehenderit magna exercitation reprehenderit nulla mollit consectetur fugiat tempor sunt nostrud. Incididunt ut dolore velit magna sint ad elit ullamco reprehenderit ullamco consequat nisi. Incididunt irure aliqua nisi aliqua Lorem exercitation sint esse. Voluptate commodo culpa eu minim nostrud est et elit. Sunt eu dolor pariatur qui culpa consectetur dolor. Commodo aliqua cillum cillum commodo qui fugiat consectetur elit voluptate sit dolore dolor nulla. Ut adipisicing duis ad labore ea et reprehenderit fugiat ullamco cupidatat sit ullamco.',
      'assets/images/1.png'),
  SlideInfo(
      'Entrega rapida',
      'Consequat ipsum eu aliqua eu labore velit labore voluptate Lorem veniam voluptate. Cillum dolor sunt deserunt ipsum amet dolor ut minim deserunt cillum consectetur ut anim. Dolor exercitation aliquip ut nisi. Voluptate consequat quis tempor labore in do ad adipisicing culpa consequat aliquip sit ex. Aliquip incididunt exercitation ex aute officia mollit duis. Consequat cupidatat nulla officia excepteur qui elit.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Commodo laborum ipsum ad id in dolore quis ex minim pariatur ea in amet aute. Irure officia fugiat ipsum culpa et elit laborum cillum excepteur non ut. Nisi Lorem cillum mollit sint.',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      final page = pageController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slideDate) => _Slide(
                      caption: slideDate.caption,
                      imageUrl: slideDate.imageUrl,
                      title: slideDate.title,
                    ))
                .toList(),
          ),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                  onPressed: () => context.pop(), child: const Text('Salir'))),
          endReached
              ? Positioned(
                  right: 30,
                  bottom: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                        onPressed: () => context.pop(),
                        child: const Text('Comenzar')),
                  ))
              : const SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodyLarge;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageUrl),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              caption,
              style: captionStyle,
            )
          ],
        ),
      ),
    );
  }
}
