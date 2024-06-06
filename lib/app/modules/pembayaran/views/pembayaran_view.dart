import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ppsi/app/routes/app_pages.dart';

import '../controllers/pembayaran_controller.dart';

class PembayaranView extends GetView<PembayaranController> {
  const PembayaranView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PembayaranView'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text("order summary"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("pesanan"),
                  Text("30.0k"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("biaya admin"),
                  Text("5.k"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("biaya pengiriman"),
                  Text("10.0k"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("total"),
                  Text("45.5k"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("perkiraan waktu pesanan"),
                  Text("15-30 min"),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text("Metode pembayaran"),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(() => InkWell(
                    onTap: () {
                      controller.selectMasterCard();
                    },
                    child: Card(
                      color: controller.isMasterCardSelected.value
                          ? Colors.grey
                          : Colors.white,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Checkbox(
                              value: controller.isMasterCardSelected.value,
                              onChanged: (value) {
                                controller.toggleSaveCardDetails(value!);
                              },
                            ),
                            Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/1280px-MasterCard_Logo.svg.png",
                              height: 100,
                              width: 100,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("kartu kredit"),
                                Text("5105 **** **** 0505"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Obx(() => InkWell(
                    onTap: () {
                      controller.selectVisaCard();
                    },
                    child: Card(
                      color: controller.isVisaSelected.value
                          ? Colors.grey
                          : Colors.white,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Checkbox(
                              value: controller.isVisaSelected.value,
                              onChanged: (value) {
                                controller.toggleSaveCardDetails(value!);
                              },
                            ),
                            Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Visa_Logo.png/640px-Visa_Logo.png",
                              height: 100,
                              width: 100,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("kartu kredit"),
                                Text("5105 **** **** 0505"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Obx(() => Row(
                    children: [
                      Checkbox(
                        value: controller.saveCardDetails.value,
                        onChanged: (value) {
                          controller.toggleSaveCardDetails(value!);
                        },
                      ),
                      Expanded(
                        child: Text(
                          "Simpan detail kartu untuk pembayaran di masa mendatang",
                          overflow: TextOverflow.clip, // Menghindari overflow
                        ),
                      ),
                    ],
                  )),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total harga"),
                        Text("45.5K"),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Berhasil !"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Pembayaran Anda berhasil."),
                                Text(
                                    "Tanda terima pembelian ini telah dikirimkan ke email Anda."),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Get.offAllNamed(Routes.HOME),
                                child: Text("Kembali"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text("bayar sekarang"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
