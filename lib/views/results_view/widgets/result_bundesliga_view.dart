import 'package:flutter/material.dart';
import 'package:soccer_app/views/results_view/widgets/custom_match_bundesliga_result.dart';

class ResultBundesligaView extends StatelessWidget {
  const ResultBundesligaView({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample match data (replace with your actual data fetching)
    final List<Map<String, String>> matchData = [
      {
        'firstTeamLogo': 'assets/images/leverkusen.png',
        'firstTeamName': 'Bayer 04 Leverkusen',
        'result': '2-1',
        'secondTeamLogo': 'assets/images/FBAugsburg.png',
        'secondTeamName': 'FB Augsburg',
      },
      {
        'firstTeamLogo': 'assets/images/gladbach.png',
        'firstTeamName': 'Monchengladbach',
        'result': '0-4',
        'secondTeamLogo': 'assets/images/stuttgart.png',
        'secondTeamName': 'VfB Stuttgart',
      },
      {
        'firstTeamLogo': 'assets/images/Union Berlin.png',
        'firstTeamName': 'Union Berlin',
        'result': '2-1',
        'secondTeamLogo': 'assets/images/freiburg.png',
        'secondTeamName': 'SC Freiburg',
      },
      {
        'firstTeamLogo': 'assets/images/bayernmunech.png',
        'firstTeamName': 'FC Bayern Munech',
        'result': '2-0',
        'secondTeamLogo': 'assets/images/cologne.png',
        'secondTeamName': 'FC Cologne',
      },
      {
        'firstTeamLogo': 'assets/images/mainz.png',
        'firstTeamName': '1.FSV Mainz 05',
        'result': '2-0',
        'secondTeamLogo': 'assets/images/bochum.png',
        'secondTeamName': 'VfL Bochum',
      },
    ];

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 30),
            child: Column(
              children: [
                Image.asset('assets/images/bundes_liga.png', width: 55),
                const SizedBox(height: 15),
                const Text(
                  'German League',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                const Text(
                  'German Championship',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
            ),
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        'Results',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      'Table',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text(
                        'Goals',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: matchData.length,
                  itemBuilder: (context, index) {
                    final match = matchData[index];
                    return Padding(
                      // Add padding between match results
                      padding: const EdgeInsets.only(top: 30),
                      child: CustomMatchBundesligaResult(
                        firstTeamLogo: match['firstTeamLogo']!,
                        firstTeamName: match['firstTeamName']!,
                        result: match['result']!,
                        secondTeamLogo: match['secondTeamLogo']!,
                        secondTeamName: match['secondTeamName']!,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
