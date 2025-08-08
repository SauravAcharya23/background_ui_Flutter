import 'package:background_ui/custom_clipper.dart';
import 'package:flutter/material.dart';

class OrangeCurvedBackground extends StatefulWidget {
  const OrangeCurvedBackground({super.key});

  @override
  State<OrangeCurvedBackground> createState() => _OrangeCurvedBackgroundState();
}

class _OrangeCurvedBackgroundState extends State<OrangeCurvedBackground> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ClipPath(
              clipper: OrangeCurveClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * .5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF6B35), // Bright orange
                      Color(0xFFFF8C42), // Lighter orange
                    ],
                  ),
                ),
              ),
            ),

            // Content area
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top bar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Boston (BOS)',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.settings, color: Colors.white, size: 20),
                      ],
                    ),
                    SizedBox(height: 40),
                    
                    // Main heading
                    Text(
                      'Where would\nyou want to go ?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    
                    SizedBox(height: 30),
                    // Search bar
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'New york (JFK)',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.grey[600],
                          ),
                        ],
                      ),
                    ),
                    
                    SizedBox(height: 30),
                    // Bottom icons
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha((.2 * 255).toInt()),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.flight, color: Colors.white, size: 16),
                              SizedBox(width: 8),
                              Text(
                                'Flights',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha((.2 * 255).toInt()),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Icon(
                            Icons.hotel,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    ),

                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 90),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Currently Watched Items',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'VIEW ALL (12)',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            // Placeholder for image cards
                            SizedBox(
                              height: 120,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [Colors.blue[300]!, Colors.blue[500]!],
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 4),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [Colors.green[300]!, Colors.green[500]!],
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 8),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [Colors.purple[300]!, Colors.purple[500]!],
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
