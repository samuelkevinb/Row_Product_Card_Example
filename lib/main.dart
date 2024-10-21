import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Card'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column( // Mengganti Row dengan Column
              mainAxisAlignment: MainAxisAlignment.start, // Memindahkan semua elemen ke atas
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(8.0), // Menambahkan sudut melengkung
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0), // Sudut melengkung pada gambar
                        child: Container(
                          width: 80,
                          height: 80,
                          child: Image.network(
                            "https://via.placeholder.com/80", // URL gambar yang bisa diakses
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 8), // Memberikan jarak antara gambar dan teks
                      Expanded( // Memastikan teks mengambil ruang yang tersedia
                        child: Container(
                          child: Text(
                            "Umbrella For Sale", // Memperbaiki ejaan "Umberla" menjadi "Umbrella"
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8), // Memberikan jarak antara teks dan harga
                      Text(
                        "5 USD",
                        style: TextStyle(fontSize: 18), // Menambahkan ukuran font untuk harga
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
