import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarVSCO extends StatefulWidget {
  const AppBarVSCO({
    super.key,
    required this.svgLogo,
  });

  final Widget svgLogo;

  @override
  State<AppBarVSCO> createState() => _AppBarVSCOState();
}

class _AppBarVSCOState extends State<AppBarVSCO> {
  bool logedIn = false;

  updateLoginState() {
    setState(() {
      logedIn = !logedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      notifyParent: updateLoginState,
      logedIn: logedIn,
    );
  }
}

class AppBar extends StatefulWidget {
  final Function() notifyParent;
  final bool logedIn;
  const AppBar({
    super.key,
    required this.notifyParent,
    required this.logedIn,
  });
  //bool logedIn;
  @override
  State<AppBar> createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  String pageButtonSelected =
      'Features'; //Features, Plans, Whats New, Feed and Profile

  updateButtonSelectedState(String ppageButtonSelected) {
    setState(() {
      pageButtonSelected = ppageButtonSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 40,
              ),
              TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return const Color.fromARGB(255, 165, 165, 165);
                      }
                      return Colors.black;
                    }),
                  ),
                  child: SvgPicture.asset('/images/VSCO-logo.svg')),
              const SizedBox(
                width: 40,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    pageButtonSelected = 'Feature';
                  });
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return const Color(0xFF737373);
                    }
                    return Colors.black;
                  }),
                ),
                child: Text(
                  'Features',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: pageButtonSelected == 'Feature'
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    pageButtonSelected = 'Plans';
                  });
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return const Color(0xFF737373);
                    }
                    return Colors.black;
                  }),
                ),
                child: Text(
                  'Plans',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: pageButtonSelected == 'Plans'
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    pageButtonSelected = 'What\'s New';
                  });
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return const Color(0xFF737373);
                    }
                    return Colors.black;
                  }),
                ),
                child: Text(
                  'What\'s New',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: pageButtonSelected == 'What\'s New'
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              widget.logedIn
                  ? Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            foregroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return const Color(0xFF737373);
                              }
                              return Colors.black;
                            }),
                          ),
                          child: const Text(
                            'Feed',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            foregroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return const Color(0xFF737373);
                              }
                              return Colors.black;
                            }),
                          ),
                          child: const Text(
                            'Profile',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              foregroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                return Colors.white;
                              }),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              )),
                          child: const Text(
                            'Upgrade',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            widget.notifyParent();
                          },
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            foregroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return const Color(0xFF737373);
                              }
                              return Colors.black;
                            }),
                          ),
                          child: const Text(
                            'Sign in',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFF0000FF)),
                              foregroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                return Colors.white;
                              }),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              )),
                          child: const Text(
                            'Download VSCO',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                      ],
                    ),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return const Color(0xFF737373);
                    }
                    return Colors.black;
                  }),
                ),
                child: const Icon(Icons.search),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    return Colors.black;
                  }),
                ),
                child: const Icon(Icons.menu_outlined),
              ),
              const SizedBox(
                width: 40,
              ),
            ],
          )
        ],
      ),
    );
  }
}
