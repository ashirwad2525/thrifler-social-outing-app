import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../core/constants/app_colors.dart';

class OutingDetailsScreen extends StatelessWidget {
  final String image;
  final String title;
  final String category;
  final String price;

  const OutingDetailsScreen({
    super.key,
    required this.image,
    required this.title,
    required this.category,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: Stack(
        children: [

          /// HERO IMAGE
          Hero(
            tag: image,

            child: SizedBox(
              height: 360,
              width: double.infinity,

              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// OVERLAY
          Container(
            height: 360,

            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,

                colors: [
                  Colors.black.withOpacity(0.15),
                  Colors.black.withOpacity(0.72),
                ],
              ),
            ),
          ),

          /// CONTENT
          SafeArea(
            child: Column(
              children: [

                /// TOP BAR
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),

                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                    children: [

                      glassButton(
                        icon: Iconsax.arrow_left_2,

                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),

                      Row(
                        children: [

                          glassButton(
                            icon: Iconsax.heart,
                            onTap: () {},
                          ),

                          const SizedBox(width: 12),

                          glassButton(
                            icon: Iconsax.share,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const Spacer(),

                /// MAIN CONTENT
                Expanded(
                  flex: 2,

                  child: Container(
                    width: double.infinity,

                    padding: const EdgeInsets.all(24),

                    decoration: const BoxDecoration(
                      color: AppColors.background,

                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(34),
                        topRight: Radius.circular(34),
                      ),
                    ),

                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,

                        children: [

                          /// CATEGORY
                          Container(
                            padding:
                            const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 8,
                            ),

                            decoration: BoxDecoration(
                              color:
                              Colors.white.withOpacity(0.06),

                              borderRadius:
                              BorderRadius.circular(14),
                            ),

                            child: Text(
                              category,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          const SizedBox(height: 18),

                          /// TITLE
                          Text(
                            title,

                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                            ),
                          ),

                          const SizedBox(height: 18),

                          /// LOCATION
                          Row(
                            children: [

                              const Icon(
                                Iconsax.location,
                                size: 18,
                                color: Colors.white70,
                              ),

                              const SizedBox(width: 8),

                              Text(
                                "Mumbai, Maharashtra",

                                style: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 30),

                          /// PEOPLE
                          const Text(
                            "People Joined",

                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                          const SizedBox(height: 18),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,

                            child: Row(
                              children: [

                                attendee(
                                    "assets/friends/girl1.jpg"),

                                attendee(
                                    "assets/friends/girl2.jpg"),

                                attendee(
                                    "assets/friends/boy1.jpg"),

                                attendee(
                                    "assets/friends/girl3.jpg"),

                                const SizedBox(width: 8),

                                Container(
                                  padding:
                                  const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),

                                  decoration: BoxDecoration(
                                    color: Colors.white
                                        .withOpacity(0.05),

                                    borderRadius:
                                    BorderRadius.circular(
                                        14),
                                  ),

                                  child: Text(
                                    "+12",
                                    style: TextStyle(
                                      color:
                                      Colors.grey.shade300,
                                      fontWeight:
                                      FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 34),

                          /// ABOUT
                          const Text(
                            "About Event",

                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                          const SizedBox(height: 16),

                          Text(
                            "Experience a relaxing evening with amazing people, conversations, music, and unforgettable vibes. Perfect place to meet new people and create memories together.",

                            style: TextStyle(
                              color: Colors.grey.shade400,
                              height: 1.7,
                            ),
                          ),

                          const SizedBox(height: 34),

                          /// TAGS
                          Wrap(
                            spacing: 12,
                            runSpacing: 12,

                            children: [

                              tag("☕ Coffee"),
                              tag("🎵 Music"),
                              tag("📸 Photos"),
                              tag("🍽 Food"),
                            ],
                          ),

                          const SizedBox(height: 120),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// BOTTOM CTA
          Positioned(
            bottom: 24,
            left: 20,
            right: 20,

            child: Container(
              padding: const EdgeInsets.all(18),

              decoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.circular(24),

                border: Border.all(
                  color: Colors.white.withOpacity(0.03),
                ),
              ),

              child: Row(
                children: [

                  /// PRICE
                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,

                      children: [

                        Text(
                          "Split Amount",

                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 13,
                          ),
                        ),

                        const SizedBox(height: 4),

                        Text(
                          price,
                          overflow: TextOverflow.ellipsis,

                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 14),

                  /// JOIN BUTTON
                  Container(
                    padding:
                    const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 13,
                    ),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.circular(16),
                    ),

                    child: const Row(
                      mainAxisSize: MainAxisSize.min,

                      children: [

                        Text(
                          "Join Event",

                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                          ),
                        ),

                        SizedBox(width: 6),

                        Icon(
                          Iconsax.arrow_right_3,
                          size: 16,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// GLASS BUTTON
  Widget glassButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        padding: const EdgeInsets.all(12),

        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.25),

          borderRadius: BorderRadius.circular(16),

          border: Border.all(
            color: Colors.white.withOpacity(0.08),
          ),
        ),

        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }

  /// ATTENDEE
  Widget attendee(String image) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),

      child: CircleAvatar(
        radius: 24,
        backgroundImage: AssetImage(image),
      ),
    );
  }

  /// TAG
  Widget tag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),

      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),

        borderRadius: BorderRadius.circular(14),

        border: Border.all(
          color: Colors.white.withOpacity(0.03),
        ),
      ),

      child: Text(
        text,

        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}