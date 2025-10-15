import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  final Map<String, double> data;

  const ChartWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final sections = data.entries.map((e) {
      return PieChartSectionData(
        value: e.value,
        title: '${e.key}\n${e.value.toStringAsFixed(0)}k',
        radius: 60,
      );
    }).toList();

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text("Thống kê chi tiêu", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            SizedBox(
              height: 200,
              child: PieChart(PieChartData(sections: sections)),
            ),
          ],
        ),
      ),
    );
  }
}
