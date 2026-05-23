import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../core/constants/app_colors.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../profile/profile_screen.dart';
import 'outing_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
      extendBody: true,

      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),

          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              /// TOP BAR
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Text(
                        "Good Evening",
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 15,
                        ),
                      ),

                      const SizedBox(height: 4),

                      const Text(
                        "Ashirwad",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -1,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: const EdgeInsets.all(15),

                    decoration: BoxDecoration(
                      color: AppColors.cardColor,
                      shape: BoxShape.circle,

                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 18,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),

                    child: const Icon(
                      Iconsax.notification,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              /// SEARCH BAR
              Container(
                height: 52,

                decoration: BoxDecoration(
                  color: AppColors.cardColor,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.04),
                    ),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 18,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),

                child: TextField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),

                  decoration: InputDecoration(
                    border: InputBorder.none,

                    hintText: "Find cafes, movies, events...",
                    hintStyle: TextStyle(
                      color: AppColors.grey,
                    ),

                    prefixIcon: const Icon(
                      Iconsax.search_normal,
                      color: Colors.white,
                    ),

                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 17,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              /// STORIES
              SizedBox(
                height: 98,

                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: [

                    storyCard(
                      image: "assets/friends/girl1.jpg",
                      name: "Riya",
                    ),

                    storyCard(
                      image: "assets/friends/girl2.jpg",
                      name: "Sneha",
                    ),

                    storyCard(
                      image: "assets/friends/boy1.jpg",
                      name: "Aman",
                    ),

                    storyCard(
                      image: "assets/friends/girl3.jpg",
                      name: "Kriti",
                    ),

                    storyCard(
                      image: "assets/friends/boy2.jpg",
                      name: "Rahul",
                    ),

                    storyCard(
                      image: "assets/friends/girl4.jpg",
                      name: "Sara",
                    ),
                  ],
                ),
              )
                  .animate()
                  .fadeIn(
                duration: 700.ms,
              )
                  .slideY(
                begin: 0.2,
                duration: 700.ms,
              ),

              const SizedBox(height: 15),

              /// CATEGORY CHIPS
              SizedBox(
                height: 46,

                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: [

                    categoryChip(
                      title: "☕ Cafe",
                      active: true,
                    ),

                    categoryChip(
                      title: "🎤 Karaoke",
                    ),

                    categoryChip(
                      title: "🍽 Dinner",
                    ),

                    categoryChip(
                      title: "🏖 Beach",
                    ),

                    categoryChip(
                      title: "🎳 Bowling",
                    ),
                  ],
                ),
              )
                  .animate()
                  .fadeIn(
                delay: 200.ms,
                duration: 700.ms,
              )
                  .slideX(
                begin: -0.1,
                duration: 700.ms,
              ),

              const SizedBox(height: 15),

              /// SECTION TITLE
              const Text(
                "Popular Near You",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              Text(
                "Discover people with similar interests",
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 24),

              /// MAIN CARD
              outingCard()
                  .animate()
                  .fadeIn(
                delay: 350.ms,
                duration: 800.ms,
              )
                  .slideY(
                begin: 0.15,
                duration: 800.ms,
              ),

              const SizedBox(height: 24),

              outingCard(
                image: "assets/outing_card/bowling.jpg",
                title: "Bowling Night",
                category: "Sports 🎳",
                distance: "4 km away",
                price: "₹500 Split",
              )
                  .animate()
                  .fadeIn(
                delay: 500.ms,
                duration: 800.ms,
              )
                  .slideY(
                begin: 0.15,
                duration: 800.ms,
              ),

              const SizedBox(height: 24),

              outingCard(
                image: "assets/outing_card/beach.jpg",
                title: "Beach Party",
                category: "Party 🎉",
                distance: "14 km away",
                price: "₹999 Split",
              )
                  .animate()
                  .fadeIn(
                delay: 500.ms,
                duration: 800.ms,
              )
                  .slideY(
                begin: 0.15,
                duration: 800.ms,
              ),

              const SizedBox(height: 120),
            ],
          ),
        ),
      ),



    );

  }

  /// STORY CARD
  Widget storyCard({
    required String image,
    required String name,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),

      child: Column(
        children: [

          Container(
            padding: const EdgeInsets.all(2.5),

            decoration: BoxDecoration(
              shape: BoxShape.circle,

              gradient: const LinearGradient(
                colors: [
                  AppColors.secondary,
                  AppColors.primary,
                ],
              ),
            ),

            child: CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(image),
            ),
          ),

          const SizedBox(height: 8),

          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  /// CATEGORY CHIP
  Widget categoryChip({
    required String title,
    bool active = false,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),

      margin: const EdgeInsets.only(right: 12),

      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),

      decoration: BoxDecoration(
        color: active
            ? Colors.white
            : Colors.white.withOpacity(0.05),

        borderRadius: BorderRadius.circular(14),

        border: Border.all(
          color: active
              ? Colors.transparent
              : Colors.white.withOpacity(0.06),
        ),

        boxShadow: active
            ? [
          BoxShadow(
            color: Colors.white.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ]
            : [],
      ),

      child: Row(
        mainAxisSize: MainAxisSize.min,

        children: [

          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12.5,

              color: active
                  ? Colors.black
                  : Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  /// OUTING CARD
  Widget outingCard({
    String image = "assets/outing_card/cafe.jpg",
    String category = "Cafe Meetup ☕",
    String title = "Coffee Evening at Starbucks",
    String distance = "2.3 km away",
    String price = "₹300 Split",
  }) {

    return GestureDetector(

      onTap: () {

        Navigator.push(
          context,

          PageRouteBuilder(

            transitionDuration:
            const Duration(milliseconds: 500),

            reverseTransitionDuration:
            const Duration(milliseconds: 400),

            pageBuilder: (_, animation, __) {

              return FadeTransition(
                opacity: animation,

                child: OutingDetailsScreen(
                  image: image,
                  title: title,
                  category: category,
                  price: price,
                ),
              );
            },
          ),
        );
      },

      child: Hero(
        tag: image,

        child: Material(
          color: Colors.transparent,

          child: Container(
            height: 230,
            width: double.infinity,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),

              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.22),
                  blurRadius: 10,
                  offset: const Offset(0, 8),
                ),
              ],
            ),

            child: Container(
              padding: const EdgeInsets.all(18),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),

                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,

                  colors: [
                    Colors.black.withOpacity(0.12),
                    Colors.black.withOpacity(0.82),
                  ],
                ),
              ),

              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                mainAxisAlignment:
                MainAxisAlignment.end,

                children: [

                  /// CATEGORY
                  Container(
                    padding:
                    const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 7,
                    ),

                    decoration: BoxDecoration(
                      color:
                      Colors.white.withOpacity(0.12),

                      borderRadius:
                      BorderRadius.circular(14),

                      border: Border.all(
                        color: Colors.white
                            .withOpacity(0.05),
                      ),
                    ),

                    child: Text(
                      category,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),

                  /// TITLE
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,

                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      height: 1.15,
                    ),
                  ),

                  const SizedBox(height: 14),

                  /// DETAILS
                  Row(
                    children: [

                      const Icon(
                        Iconsax.location,
                        size: 16,
                        color: Colors.white70,
                      ),

                      const SizedBox(width: 6),

                      Text(
                        distance,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                        ),
                      ),

                      const Spacer(),

                      SizedBox(
                        width: 70,

                        child: Stack(
                          children: [

                            const CircleAvatar(
                              radius: 12,
                              backgroundImage:
                              AssetImage(
                                "assets/friends/girl1.jpg",
                              ),
                            ),

                            Positioned(
                              left: 18,

                              child:
                              const CircleAvatar(
                                radius: 12,
                                backgroundImage:
                                AssetImage(
                                  "assets/friends/boy1.jpg",
                                ),
                              ),
                            ),

                            Positioned(
                              left: 36,

                              child: Container(
                                width: 24,
                                height: 24,

                                decoration:
                                BoxDecoration(
                                  color:
                                  AppColors.primary,
                                  shape:
                                  BoxShape.circle,
                                ),

                                child: const Center(
                                  child: Text(
                                    "+2",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight:
                                      FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  /// PRICE + BUTTON
                  Row(
                    children: [

                      Text(
                        price,
                        style: const TextStyle(
                          fontSize: 21,
                          fontWeight:
                          FontWeight.w700,
                        ),
                      ),

                      const Spacer(),

                      Container(
                        padding:
                        const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 9,
                        ),

                        decoration: BoxDecoration(
                          color: Colors.white,

                          borderRadius:
                          BorderRadius.circular(
                              14),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withOpacity(0.16),

                              blurRadius: 8,
                              offset:
                              const Offset(0, 4),
                            ),
                          ],
                        ),

                        child: Row(
                          mainAxisSize:
                          MainAxisSize.min,

                          children: const [

                            Text(
                              "Join",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight:
                                FontWeight.w700,
                                fontSize: 13,
                              ),
                            ),

                            SizedBox(width: 4),

                            Icon(
                              Iconsax.arrow_right_3,
                              size: 14,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  }
