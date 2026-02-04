import 'dart:convert';

import 'package:flutter_aparcamiento_bicicletaas/core/interfaces/bicicleta_interfaces.dart';
import 'package:flutter_aparcamiento_bicicletaas/core/models/bicicleta_list_response.dart';
import 'package:http/http.dart' as http;


class BicicletaService implements BicicletaInterfaces{
  @override
  Future<List<ValenbisiStation>> getAllBicicletas() async {
    var url = Uri.parse('https://valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/valenbisi-disponibilitat-valenbisi-dsiponibilidad/records?limit=30') ;
    try {
      var response = await http.get(url);

        if (response.statusCode == 200){
          var bicicletaListResponse = ValenbisiResponse.fromJson(jsonDecode(response.body));
          
          return bicicletaListResponse.results;

        }else{
          return [];
        }
    } catch (e) {
      return [];
      
    }

  }

  
}