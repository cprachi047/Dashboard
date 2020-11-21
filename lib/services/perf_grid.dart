import 'package:flutter/material.dart';

class PerformanceGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      color: Colors.white,

      child: Column(
        children: <Widget>[
          Row(
            children: <Widget> [
              _buildStatCard('Top Performing Campaign', 'Swiggy', '32%', Colors.green),
              _buildStatCard('Top Performing Region', 'Panjim', '12%', Colors.green),

            ],
          ),
          Row(
            children: <Widget> [
              _buildStatCard('Top Performing Campaign', 'Swiggy', '32%', Colors.green),
              _buildStatCard('Top Performing Region', 'Panjim', '12%', Colors.green),
              ],
           ),
       ],
      ),
    );

  }

  Expanded _buildStatCard(String text, String title, String count, MaterialColor color){
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Text(
              text,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),

            ),

            Text(
              count,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
