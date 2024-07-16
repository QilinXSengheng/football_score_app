import 'package:flutter/material.dart';
import 'package:soccer_app/views/results_view/widgets/custom_match_laliga_result.dart';

class ResultLaligaView extends StatelessWidget {
  const ResultLaligaView({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample match data (replace with your actual data fetching)
    final List<Map<String, String>> matchData = [
      {
        'firstTeamLogo': 'assets/images/FCBarcelona.png',
        'firstTeamName': 'FC Barcelona',
        'result': '8-2',
        'secondTeamLogo': 'assets/images/RealMadrid.png',
        'secondTeamName': 'Real Madrid',
      },
      {
        'firstTeamLogo': 'assets/images/celtavigo.png',
        'firstTeamName': 'Celta Vigo',
        'result': '2-2',
        'secondTeamLogo': 'assets/images/valencia.png',
        'secondTeamName': 'Valencia',
      },
      {
        'firstTeamLogo': 'assets/images/realbetis.png',
        'firstTeamName': 'Real Betis',
        'result': '1-2',
        'secondTeamLogo': 'assets/images/villareal.png',
        'secondTeamName': 'Villareal',
      },
      {
        'firstTeamLogo': 'assets/images/lasplamas.png',
        'firstTeamName': 'Las Palmas',
        'result': '2-2',
        'secondTeamLogo': 'assets/images/deportivoalaves.png',
        'secondTeamName': 'D. Alaves',
      },
      {
        'firstTeamLogo': 'assets/images/Atmadrid.png',
        'firstTeamName': 'AT. Madrid',
        'result': '3-1',
        'secondTeamLogo': 'assets/images/granada.png',
        'secondTeamName': 'Granada',
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
                Image.asset('assets/images/la_liga.png', width: 55),
                const SizedBox(height: 15),
                const Text(
                  'Spanish League',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Spanish Championship',
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
                      child: CustomMatchLaligaResult(
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
