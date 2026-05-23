import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../core/constants/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 18,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              /// TOP BAR
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  const Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.all(12),

                    decoration: BoxDecoration(
                      color: AppColors.cardColor,
                      borderRadius: BorderRadius.circular(14),
                    ),

                    child: const Icon(
                      Iconsax.setting_2,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 34),

              /// PROFILE SECTION
              Center(
                child: Column(
                  children: [

                    Stack(
                      children: [

                        Container(
                          padding: const EdgeInsets.all(4),

                          decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            border: Border.all(
                              color: Colors.white.withOpacity(0.1),
                            ),
                          ),

                          child: const CircleAvatar(
                            radius: 52,
                            backgroundImage: AssetImage(
                              "assets/friends/boy1.jpg",
                            ),
                          ),
                        ),

                        Positioned(
                          bottom: 0,
                          right: 0,

                          child: Container(
                            padding: const EdgeInsets.all(10),

                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  blurRadius: 10,
                                ),
                              ],
                            ),

                            child: const Icon(
                              Iconsax.edit_2,
                              size: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    const Text(
                      "Ashirwad",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      "Designer • Developer • Explorer",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 36),

              /// STATS
              Row(
                children: [

                  Expanded(
                    child: statCard(
                      value: "12",
                      label: "Plans",
                    ),
                  ),

                  const SizedBox(width: 14),

                  Expanded(
                    child: statCard(
                      value: "48",
                      label: "Connections",
                    ),
                  ),

                  const SizedBox(width: 14),

                  Expanded(
                    child: statCard(
                      value: "4.8",
                      label: "Rating",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 34),

              /// ABOUT
              sectionTitle("About"),

              const SizedBox(height: 14),

              Container(
                width: double.infinity,

                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: AppColors.cardColor,
                  borderRadius: BorderRadius.circular(22),

                  border: Border.all(
                    color: Colors.white.withOpacity(0.05),
                  ),
                ),

                child: Text(
                  "Finance and tech enthusiast. Computer engineer by profession, artist by passion.",
                  style: TextStyle(
                    height: 1.6,
                    color: Colors.grey.shade300,
                  ),
                ),
              ),

              const SizedBox(height: 34),

              /// INTERESTS
              sectionTitle("Interests"),

              const SizedBox(height: 18),

              Wrap(
                spacing: 12,
                runSpacing: 12,

                children: [

                  interestChip("☕ Cafe Hopping"),
                  interestChip("🎤 Karaoke"),
                  interestChip("🏖 Beaches"),
                  interestChip("🎨 Art"),
                  interestChip("🎬 Movies"),
                  interestChip("🏔 Hiking"),
                ],
              ),

              const SizedBox(height: 34),

              /// UPCOMING PLANS
              sectionTitle("Upcoming Plans"),

              const SizedBox(height: 18),

              upcomingPlanCard(),

              const SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }

  /// SECTION TITLE
  Widget sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  /// STAT CARD
  Widget statCard({
    required String value,
    required String label,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 18,
      ),

      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(20),

        border: Border.all(
          color: Colors.white.withOpacity(0.05),
        ),
      ),

      child: Column(
        children: [

          Text(
            value,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),

          const SizedBox(height: 6),

          Text(
            label,
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  /// INTEREST CHIP
  Widget interestChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 10,
      ),

      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.03),
        borderRadius: BorderRadius.circular(16),

        border: Border.all(
          color: Colors.white.withOpacity(0.05),
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

  /// UPCOMING PLAN CARD
  Widget upcomingPlanCard() {
    return Container(
      height: 180,
      width: double.infinity,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),

        image: const DecorationImage(
          image: AssetImage(
            "assets/outing_card/beach.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),

      child: Container(
        padding: const EdgeInsets.all(20),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),

          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,

            colors: [
              Colors.black.withOpacity(0.1),
              Colors.black.withOpacity(0.75),
            ],
          ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,

          children: [

            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),

              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(30),
              ),

              child: const Text(
                "Beach Meetup 🏖",
              ),
            ),

            const SizedBox(height: 14),

            const Text(
              "Goa Sunset Party",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              "24 March • 8 People Joined",
              style: TextStyle(
                color: Colors.grey.shade300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}