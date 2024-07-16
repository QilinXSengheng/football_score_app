import 'package:flutter/material.dart';
import 'package:soccer_app/views/results_view/widgets/custom_match_L1_result.dart';

class ResultL1View extends StatelessWidget {
  const ResultL1View({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample match data (replace with your actual data fetching)
    final List<Map<String, String>> matchData = [
      {
        'firstTeamLogo': 'assets/images/brest.png',
        'firstTeamName': 'Brest',
        'result': '1-2',
        'secondTeamLogo': 'assets/images/rennais.png',
        'secondTeamName': 'Stade Rennais',
      },
      {
        'firstTeamLogo': 'assets/images/lens.png',
        'firstTeamName': 'Lens',
        'result': '3-1',
        'secondTeamLogo': 'assets/images/auxerre.png',
        'secondTeamName': 'Auxerre',
      },
      {
        'firstTeamLogo': 'assets/images/lorient.png',
        'firstTeamName': 'Lorient',
        'result': '1-2',
        'secondTeamLogo': 'assets/images/strasbourg.png',
        'secondTeamName': 'RC Strasbourg',
      },
      {
        'firstTeamLogo': 'assets/images/losc.png',
        'firstTeamName': 'LOSC',
        'result': '2-2',
        'secondTeamLogo': 'assets/images/tra.png',
        'secondTeamName': 'Tra Group',
      },
      {
        'firstTeamLogo': 'assets/images/monaco.png',
        'firstTeamName': 'AS Monaco',
        'result': '1-1',
        'secondTeamLogo': 'assets/images/toulouse.png',
        'secondTeamName': 'Toulouse',
      },
      {
        'firstTeamLogo': 'assets/images/ajaccio.png',
        'firstTeamName': 'AC Ajaccio',
        'result': '2-0',
        'secondTeamLogo': 'assets/images/marx.png',
        'secondTeamName': 'Marx',
      },
      {
        'firstTeamLogo': 'assets/images/psg.png',
        'firstTeamName': 'PSG',
        'result': '3-1',
        'secondTeamLogo': 'assets/images/havre.png',
        'secondTeamName': 'Le Havre',
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
                Image.asset('assets/images/league_1.jpg', width: 55),
                const SizedBox(height: 15),
                const Text(
                  'Franch League',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Franch Championship',
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
                      child: CustomMatchL1Result(
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
