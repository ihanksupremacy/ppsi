import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'package:ppsi/app/routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "aa durian",
                      style: TextStyle(
                        fontSize: 35.0,
                      ),
                    ),
                    Text(
                      "order your favorite durian",
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.network(
                    'https://awsimages.detik.net.id/community/media/visual/2023/04/14/gambar-pemandangan-6.jpeg?w=3000',
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: Color(0xffef2a39)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: Color(0xffef2a39)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: Color(0xffef2a39)),
                      ),
                      filled: true,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: () {
                    // Implement your filter action here
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 16.0, right: 16.0),
            height: 50.0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryChip(label: 'All'),
                  CategoryChip(label: 'Combis'),
                  CategoryChip(label: ' Slider'),
                  CategoryChip(label: 'Category 4'),
                  CategoryChip(label: 'Category 5'),
                  CategoryChip(label: 'Category 6'),
                ],
              ),
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              _durianCard(
                nama: "Durian Musang Medan",
                gambar:
                    "https://images.tokopedia.net/img/cache/700/VqbcmM/2022/12/28/3499e2dd-3202-4621-8b4c-bbe8f8189d5e.png",
                detail:
                    "Durian Medan memiliki karakter yang lebih unik. Daging buahnya tidak berwarna kuning terang melainkan kuning kehijauan.",
              ),
              _durianCard(
                nama: "Durian Durian Bawor",
                gambar:
                    "https://images.tokopedia.net/img/cache/700/VqbcmM/2022/12/28/3499e2dd-3202-4621-8b4c-bbe8f8189d5e.png",
                detail:
                    "Durian Bawor asal Banyumas menjadi durian yang paling banyak persediaannya. Durian jenis ini tidak hanya dipanen pada musimnya saja tetapi terus berbuah sepanjang tahun.",
              ),
              _durianCard(
                nama: "Durian Monthong",
                gambar:
                    "https://images.tokopedia.net/img/cache/700/VqbcmM/2022/12/28/3499e2dd-3202-4621-8b4c-bbe8f8189d5e.png",
                detail:
                    "Durian monthong menjadi varietas durian lokal yang paling populer dan diminati. Durian monthong tak hanya tumbuh di satu daerah tetapi beberapa kawasan juga memiliki produksi durian monthongnya sendiri.",
              ),
              _durianCard(
                nama: "Durian Petruk",
                gambar:
                    "https://images.tokopedia.net/img/cache/700/VqbcmM/2022/12/28/3499e2dd-3202-4621-8b4c-bbe8f8189d5e.png",
                detail:
                    "Durian petruk pertama kali ditanam di Dukuh Randusari, Tahunan, Jepara, Jawa Tengah. Sosok penanam pertamanya adalah Mbah Kasmodiharjo yang konon juga secara tak sengaja memberikan nama pada duriannya.",
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        elevation:
            10, // Tambahkan elevasi untuk membuat efek tebal di belakang FAB
        shape:
            CircularNotchedRectangle(), // Bentuk bottom navigation bar menjadi bulat
        child: Container(
          height: 60.0, // Tinggi bottom navigation bar
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
                color: Colors.white,
              ),
              SizedBox(
                  width:
                      40), // Tambahkan ruang kosong di sini untuk garis lengkung
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.chat),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(30), // Bentuk FAB menjadi bulat
        child: FloatingActionButton(
          onPressed: () {
            // Action for the central button
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white, // Ubah warna tombol menjadi merah
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;

  const CategoryChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Chip(
        label: Text(label),
        backgroundColor: Color(0xffef2a39),
        labelStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}

Widget _durianCard({
  required String nama,
  required String gambar,
  required String detail,
}) {
  return GestureDetector(
    onTap: () {
      Get.toNamed(Routes.DETAIL_DURIAN,
          arguments: {'detail': detail, 'gambar': gambar, 'nama': nama});
    },
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              gambar,
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8.0),
            Text(
              "Durian",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4.0),
            Text(
              nama,
              style: TextStyle(fontSize: 12.0),
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  size: 24.0,
                  color: Color(0xffFFD700),
                ),
                Text("4.9"),
                Spacer(),
                const Icon(
                  Icons.favorite_outline,
                  size: 24.0,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
