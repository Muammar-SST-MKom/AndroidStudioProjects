import 'package:flutter_app/models/barang_model.dart';
import 'package:flutter/material.dart';
import 'package:http_server/http_server.dart' as http;
import 'dart:convert';

class BarangProvider extends ChangeNotifier{
  //mendefinisikan variabel kedalam kelas model
  List<BarangModel> _data=[];

  //mengubah hak akses private kedalam publik untuk dapat di akses data
  Lis<BarangModel> get dataBarang => _data;

  //membuat fungsi untuk merequest ke api
  Future<List<BarangModel>> getBarang() async{
    final url ='http://kedol.epizy.com/api/barang.php';
    final response = await http.get(url);

    //jika statunya 200 berarti berhasil
    if(response.statusCode==200){
      //maka kita ubah datanya menjadi map dengan key string dan value dynamic
      final result = json.decode(response.body)['data'].cast<Map<String, dynamic>>();

      //kemudian data mapping di ubah sesuai model kedalam variabel data
      _data = result.map<BarangModel>((json) => BarangModel.fromJson(json)).toList();
      return _data;
    }else{
      throw Exception();
    }

  }












}