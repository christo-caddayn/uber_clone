import 'package:flutter/material.dart';
import 'package:uber/widgets/svg_image.dart';
import 'package:uber/widgets/title_bar/title_bar.dart';
import 'package:uber/ui/home/widget/search_bar_widget.dart';
import 'package:uber/ui/home/widget/location_tile.dart';
import 'package:uber/ui/home/widget/service_item.dart';
import 'package:uber/ui/home/widget/promo_card.dart';
import 'package:uber/utils/colors.dart';
import 'package:uber/gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback? onSuggestionsTap;
  const HomeScreen({super.key, this.onSuggestionsTap});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: SizedBox(height: 20)),

              const SliverToBoxAdapter(
                child: TitleBar(title: "Uber"),
              ),

              const SliverToBoxAdapter(child: SizedBox(height: 16)),

              // Search Bar
              SliverPersistentHeader(
                pinned: true,
                floating: false,
                delegate: SearchBarSliverDelegate(),
              ),

              const SliverToBoxAdapter(child: SizedBox(height: 8)),

              // Recent Locations
              SliverList(
                delegate: SliverChildListDelegate([
                  const LocationTile(
                    title: "DIE ZIMMEREI Apartments - Wien",
                    address: "Vorgartenstraße 204, Wien",
                  ),
                  const LocationTile(
                    title: "Deloitte Wien",
                    address: "Renngasse 1, Wien",
                  ),
                ]),
              ),

              const SliverToBoxAdapter(child: SizedBox(height: 8)),

              // Suggestions Title
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Suggestions",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.white),
                    ),
                    GestureDetector(
                      onTap: widget.onSuggestionsTap,
                      child: Container(
                        height: 36,
                        width: 36,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.grey,
                        ),
                        child: SvgImage(
                          image: Assets.icons.arrowRight,
                          height: 18,
                          width: 18,
                          color: AppColors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              const SliverToBoxAdapter(child: SizedBox(height: 20)),

              // Service Grid
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ServiceItem(
                        label: "Ride", icon: Image.asset("assets/images/top_bar_rides_3d.png", width: 64, height: 48)),
                    const Spacer(flex: 1),
                    ServiceItem(
                      label: "Reserve",
                      icon: Image.asset("assets/images/reserve_clock.png", width: 64, height: 48),
                    ),
                    const Spacer(flex: 1),
                    ServiceItem(
                        label: "2-Wheels",
                        icon: Transform.scale(
                            scale: .75,
                            child: Image.asset(
                              "assets/images/ub__ic_bike_default_map_marker.png",
                              width: 64,
                              height: 48,
                            ))),
                    const Spacer(flex: 1),
                    ServiceItem(
                        label: "Seniors",
                        icon: Transform.scale(
                            scale: 1.25, child: Image.asset("assets/images/intercity.png", width: 64, height: 48))),
                  ],
                ),
              ),

              const SliverToBoxAdapter(child: SizedBox(height: 24)),

              SliverToBoxAdapter(
                child: Text(
                  "Save every day",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.white),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),

              // Horizontal Scroll
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      PromoCard(
                        title: "Add a stop or 5",
                        subtitle: "Pick up something along the way",
                        imagePlaceholderColor: Transform.scale(
                            scale: 1.25,
                            child: Image.asset(
                              "assets/images/dropping.webp",
                              fit: BoxFit.cover,
                            )),
                      ),
                      PromoCard(
                        title: "Go on 2 wheels",
                        subtitle: "Take an electric bike",
                        imagePlaceholderColor: Image.asset(
                          "assets/images/bike.webp",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SliverToBoxAdapter(child: SizedBox(height: 8)),

              SliverToBoxAdapter(
                child: Text(
                  "Go on 2 wheels",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.white),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),

              SliverToBoxAdapter(
                child: SizedBox(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      PromoCard(
                        title: "Take an electric bike",
                        subtitle: "Help reduce emissions",
                        imagePlaceholderColor: Image.asset(
                          "assets/images/bike.webp",
                          fit: BoxFit.cover,
                        ),
                      ),
                      PromoCard(
                        title: "Go faster than traffic",
                        subtitle: "Skip the traffic jams",
                        imagePlaceholderColor: Image.asset(
                          "assets/images/car_highway.webp",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SliverToBoxAdapter(child: SizedBox(height: 8)),

              SliverToBoxAdapter(
                child: Text(
                  "Ride as you like it",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.white),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),

              SliverToBoxAdapter(
                child: SizedBox(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      PromoCard(
                        title: "Book Intercity",
                        subtitle: "Travel outstations with ease",
                        imagePlaceholderColor: Image.asset(
                          "assets/images/airport.webp",
                          fit: BoxFit.cover,
                        ),
                      ),
                      PromoCard(
                        title: "Book premier",
                        subtitle: "Extra options for special days",
                        imagePlaceholderColor: Image.asset(
                          "assets/images/start_journey.webp",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBarSliverDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.black,
        boxShadow: [
          BoxShadow(
            color: AppColors.black,
            blurRadius: 8,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: const SearchBarWidget(),
    );
  }

  @override
  double get maxExtent => 50.0;

  @override
  double get minExtent => 50.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
