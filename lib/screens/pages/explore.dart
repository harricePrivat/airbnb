import 'package:airbnb/screens/widgets/propositions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: Column(
              spacing: 8,
              children: [
                InkWell(
                  onTap: () {
                       context.push("/recherche-page");
                  },
                  child: Hero(
                    tag: "container",
                    child: Material(
                      borderRadius: BorderRadius.circular(50),
                      elevation: 0.8,
                      child: Container(
                        padding: EdgeInsetsGeometry.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 4,
                          children: [
                            Icon(Icons.search_outlined),
                            Text("Commencer ma recherhce"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                TabBar(
                  isScrollable: false,
                  tabs: [
                    Tab(text: "Logements", icon: Icon(Icons.house_outlined)),
                    Tab(
                      text: "Expériences",
                      icon: Icon(Icons.explore_outlined),
                    ),
                    Tab(
                      text: "Services",
                      icon: Icon(Icons.room_service_outlined),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SingleChildScrollView(
                        child: SizedBox(
                          // height: MediaQuery.of(context).size.width,
                          //   width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 8,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                child: Row(
                                  spacing: 4,
                                  children: [
                                    Text(
                                      "Vacances . Paris",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        context.push("/details");
                                      },
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 200,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.separated(
                                  itemCount: 5,
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, i) {
                                    return SizedBox(width: 8);
                                  },
                                  itemBuilder: (context, i) {
                                    return Propositions(
                                      title: "Chambre . Paris",
                                      price: "5ariary",
                                      imagePath: "assets/paris.png",
                                      rating: 4.8,
                                    );
                                  },
                                ),
                              ),
                              SizedBox(height: 16),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                child: Row(
                                  spacing: 4,
                                  children: [
                                    Text(
                                      "Vacances . Madagascar",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        context.push("/details");
                                      },
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 200,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.separated(
                                  itemCount: 5,
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, i) {
                                    return SizedBox(width: 8);
                                  },
                                  itemBuilder: (context, i) {
                                    return Propositions(
                                      title: "Chambre . Paris",
                                      price: "5ariary",
                                      imagePath: "assets/paris.png",
                                      rating: 4.8,
                                    );
                                  },
                                ),
                              ),
                              SizedBox(height: 16),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                child: Row(
                                  spacing: 4,
                                  children: [
                                    Text(
                                      "Vacances . Espagne",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        context.push("/details");
                                      },
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 200,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.separated(
                                  itemCount: 5,
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, i) {
                                    return SizedBox(width: 8);
                                  },
                                  itemBuilder: (context, i) {
                                    return Propositions(
                                      title: "Chambre . Paris",
                                      price: "5ariary",
                                      imagePath: "assets/paris.png",
                                      rating: 4.8,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(child: Text("Experiences")),
                      Center(child: Text("Servuces")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
