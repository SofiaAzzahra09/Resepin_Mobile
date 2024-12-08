import 'package:flutter/material.dart';
import 'package:resep_mobile/model/resep_model.dart';

class DetailResepPage extends StatelessWidget {
  final MenuMakanan resep;

  const DetailResepPage({Key? key, required this.resep}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Detail Resep',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar Resep
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  resep.image?[0] ?? '',
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              // Nama Resep
              Text(
                resep.namaMakanan,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 8.0),
              // Lokasi
              Row(
                children: [
                  const Icon(Icons.location_on, size: 18.0, color: Colors.grey),
                  const SizedBox(width: 4.0),
                  Text(
                    resep.lokasi.isNotEmpty
                        ? resep.lokasi
                        : "Lokasi tidak diketahui",
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              // Rating
              Row(
                children: [
                  Icon(Icons.star, size: 18.0, color: Colors.orange),
                  const SizedBox(width: 4.0),
                  Text(
                    '${resep.rateReview.toStringAsFixed(1)} / 5.0',
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const Divider(thickness: 1, height: 24.0),
              // Bahan
              const Text(
                'Bahan:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              Text(
                resep.bahan,
                style: const TextStyle(fontSize: 16.0),
              ),
              const Divider(thickness: 1, height: 24.0),
              // Alat
              const Text(
                'Alat:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              Text(
                resep.alat,
                style: const TextStyle(fontSize: 16.0),
              ),
              const Divider(thickness: 1, height: 24.0),
              // Cara Memasak
              const Text(
                'Cara Memasak:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              Text(
                resep.caraMasak,
                style: const TextStyle(fontSize: 16.0),
              ),
              const Divider(thickness: 1, height: 24.0),
              // Ulasan
              const Text(
                'Ulasan:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: const Icon(Icons.person, color: Colors.white),
                ),
                title: Text(resep.review.isNotEmpty ? resep.review : "Belum ada ulasan."),
                subtitle: Row(
                  children: List.generate(
                    5,
                    (index) => Icon(
                      index < resep.rateReview.round()
                          ? Icons.star
                          : Icons.star_border,
                      size: 18.0,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_sharp), label: 'List Resep'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorit'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}
