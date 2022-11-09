import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavbar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return MobileNavbar();
      } else {
        return MobileNavbar();
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Responsive Website",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 45),
            ),
            Row(
              children: [
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "About us",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(width: 30),
                Text(
                  "Profile",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(width: 30),
                MaterialButton(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {},
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: [
            Text(
              "Responsive Website",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "About us",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Profile",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(width: 30),
                  MaterialButton(
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () {},
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
