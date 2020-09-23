import 'package:flutter_getx/models/searchsuggestion.dart';

class SearchSuggestionConverter {
  SearchSuggestionModel convertMock() {
    var responsebody = {
      "brand": [
        {
          "code": "brand_k0300",
          "count": 11,
          "link": "/search?q=k031-k3%3Arelevance%3Abrand%3Abrand_k0300",
          "name": "Karcher"
        }
      ],
      "category": [
        {
          "code": "1",
          "count": 11,
          "link": "/search?q=k031-k3%3Arelevance%3Acategory%3A1",
          "name": "Open Catalogue"
        }
      ],
      "product": [
        {
          "code": "K031-K3.550",
          "link":
              "/Open-Catalogue/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%97%E0%B8%B3%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%AA%E0%B8%B0%E0%B8%AD%E0%B8%B2%E0%B8%94/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%94%E0%B8%B1%E0%B8%99%E0%B8%AA%E0%B8%B9%E0%B8%87/%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B9%83%E0%B8%8A%E0%B9%89%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B8%97%E0%B8%B1%E0%B9%88%E0%B8%A7%E0%B9%84%E0%B8%9B/K-3-550-%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%94%E0%B8%B1%E0%B8%99%E0%B8%AA%E0%B8%B9%E0%B8%87/p/K031-K3.550",
          "manufacturers": "KARCHER/คาร์เชอร์",
          "name": "K-3.550 เครื่องฉีดน้ำแรงดันสูง",
          "price": 8400.0,
          "stockstatus": "inStock",
          "summary": "K-3.550 เครื่องฉีดน้ำแรงดันสูง"
        },
        {
          "code": "K031-K3.450",
          "link":
              "/Open-Catalogue/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%97%E0%B8%B3%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%AA%E0%B8%B0%E0%B8%AD%E0%B8%B2%E0%B8%94/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%94%E0%B8%B1%E0%B8%99%E0%B8%AA%E0%B8%B9%E0%B8%87/%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B9%83%E0%B8%8A%E0%B9%89%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B8%97%E0%B8%B1%E0%B9%88%E0%B8%A7%E0%B9%84%E0%B8%9B/K-3-450-%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%94%E0%B8%B1%E0%B8%99%E0%B8%AA%E0%B8%B9%E0%B8%87/p/K031-K3.450",
          "manufacturers": "KARCHER/คาร์เชอร์",
          "name": "K-3.450 เครื่องฉีดน้ำแรงดันสูง",
          "price": 6100.0,
          "stockstatus": "inStock",
          "summary": "K-3.450 HIGH PRESSURE CLEANER"
        },
        {
          "code": "K031-K3.98MPLUS",
          "link":
              "/Open-Catalogue/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%97%E0%B8%B3%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%AA%E0%B8%B0%E0%B8%AD%E0%B8%B2%E0%B8%94/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%94%E0%B8%B1%E0%B8%99%E0%B8%AA%E0%B8%B9%E0%B8%87/%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B9%83%E0%B8%8A%E0%B9%89%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B8%97%E0%B8%B1%E0%B9%88%E0%B8%A7%E0%B9%84%E0%B8%9B/K3-98MPLUS-%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%94%E0%B8%B1%E0%B8%99%E0%B8%AA%E0%B8%B9%E0%B8%87/p/K031-K3.98MPLUS",
          "manufacturers": "KARCHER/คาร์เชอร์",
          "name": "K3.98MPLUS เครื่องฉีดน้ำแรงดันสูง",
          "price": 8800.0,
          "stockstatus": "lowStock",
          "summary": "K3.98MPLUS HIGH PRESSURE CLEANER"
        },
        {
          "code": "K031-K3.80",
          "link":
              "/Open-Catalogue/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%97%E0%B8%B3%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%AA%E0%B8%B0%E0%B8%AD%E0%B8%B2%E0%B8%94/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%94%E0%B8%B1%E0%B8%99%E0%B8%AA%E0%B8%B9%E0%B8%87/%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B9%83%E0%B8%8A%E0%B9%89%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B8%97%E0%B8%B1%E0%B9%88%E0%B8%A7%E0%B9%84%E0%B8%9B/K-3-80-%E0%B8%9B%E0%B8%B1%E0%B9%8A%E0%B8%A1%E0%B8%AD%E0%B8%B1%E0%B8%94%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%AA%E0%B8%B9%E0%B8%87-%E0%B9%80%E0%B8%A2%E0%B9%87%E0%B8%99/p/K031-K3.80",
          "manufacturers": "KARCHER/คาร์เชอร์",
          "name": "K-3.80 ปั๊มอัดฉีดแรงสูง-เย็น",
          "price": 0.0,
          "stockstatus": "outOfStock",
          "summary": "K-3.80 HIGH PRESSURE CLEANER"
        },
        {
          "code": "K031-K3.97M",
          "link":
              "/Open-Catalogue/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%97%E0%B8%B3%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%AA%E0%B8%B0%E0%B8%AD%E0%B8%B2%E0%B8%94/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%94%E0%B8%B1%E0%B8%99%E0%B8%AA%E0%B8%B9%E0%B8%87/%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B9%83%E0%B8%8A%E0%B9%89%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B8%97%E0%B8%B1%E0%B9%88%E0%B8%A7%E0%B9%84%E0%B8%9B/K-3-97M-%E0%B8%9B%E0%B8%B1%E0%B9%8A%E0%B8%A1%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%AA%E0%B8%B9%E0%B8%87/p/K031-K3.97M",
          "manufacturers": "KARCHER/คาร์เชอร์",
          "name": "K-3.97M ปั๊มแรงสูง",
          "price": 9000.0,
          "stockstatus": "outOfStock",
          "summary": "K-397M HIGH PRESSURE CLEANER"
        },
        {
          "code": "K031-K3001",
          "link":
              "/Open-Catalogue/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%97%E0%B8%B3%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%AA%E0%B8%B0%E0%B8%AD%E0%B8%B2%E0%B8%94/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%94%E0%B8%B1%E0%B8%99%E0%B8%AA%E0%B8%B9%E0%B8%87/%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B9%83%E0%B8%8A%E0%B9%89%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B8%97%E0%B8%B1%E0%B9%88%E0%B8%A7%E0%B9%84%E0%B8%9B/K-3001-2%E0%B8%AA%E0%B8%B2%E0%B8%A2-%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A5%E0%B9%89%E0%B8%B2%E0%B8%87%E0%B8%9E%E0%B8%A3%E0%B8%A1/p/K031-K3001",
          "manufacturers": "KARCHER/คาร์เชอร์",
          "name": "K-3001 2สาย เครื่องล้างพรม",
          "price": 0.0,
          "stockstatus": "outOfStock",
          "summary": "K-3001 HARD FLOOR AND CARPET CLEANERS"
        },
        {
          "code": "K031-K330MPLUS",
          "link":
              "/Open-Catalogue/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%97%E0%B8%B3%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%AA%E0%B8%B0%E0%B8%AD%E0%B8%B2%E0%B8%94/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%94%E0%B8%B1%E0%B8%99%E0%B8%AA%E0%B8%B9%E0%B8%87/%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B9%83%E0%B8%8A%E0%B9%89%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B8%97%E0%B8%B1%E0%B9%88%E0%B8%A7%E0%B9%84%E0%B8%9B/K-330M-PLUS-%E0%B8%9B%E0%B8%B1%E0%B9%8A%E0%B8%A1%E0%B8%AD%E0%B8%B1%E0%B8%94%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%AA%E0%B8%B9%E0%B8%87%28%E0%B8%A1%E0%B8%B5%E0%B8%A5%E0%B9%89%E0%B8%AD%29/p/K031-K330MPLUS",
          "manufacturers": "KARCHER/คาร์เชอร์",
          "name": "K-330M-PLUS ปั๊มอัดฉีดแรงสูง(มีล้อ)",
          "price": 0.0,
          "stockstatus": "outOfStock",
          "summary": "K-330M-PLUS HIGH PRESSURE CLEANE"
        },
        {
          "code": "K031-K310",
          "link":
              "/Open-Catalogue/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%97%E0%B8%B3%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%AA%E0%B8%B0%E0%B8%AD%E0%B8%B2%E0%B8%94/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%94%E0%B8%B1%E0%B8%99%E0%B8%AA%E0%B8%B9%E0%B8%87/%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B9%83%E0%B8%8A%E0%B9%89%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B8%97%E0%B8%B1%E0%B9%88%E0%B8%A7%E0%B9%84%E0%B8%9B/K-310-2%E0%B8%AA%E0%B8%B2%E0%B8%A2-%E0%B8%9B%E0%B8%B1%E0%B9%8A%E0%B8%A1%E0%B8%AD%E0%B8%B1%E0%B8%94%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%AA%E0%B8%B9%E0%B8%87-%E0%B9%80%E0%B8%A2%E0%B9%87%E0%B8%99/p/K031-K310",
          "manufacturers": "KARCHER/คาร์เชอร์",
          "name": "K-310 2สาย ปั๊มอัดฉีดแรงสูง เย็น",
          "price": 0.0,
          "stockstatus": "outOfStock",
          "summary": "K-310 HIGH PRESSURE CLEANER"
        },
        {
          "code": "K031-K3.90MPLUS",
          "link":
              "/Open-Catalogue/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%97%E0%B8%B3%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%AA%E0%B8%B0%E0%B8%AD%E0%B8%B2%E0%B8%94/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%94%E0%B8%B1%E0%B8%99%E0%B8%AA%E0%B8%B9%E0%B8%87/%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B9%83%E0%B8%8A%E0%B9%89%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B8%97%E0%B8%B1%E0%B9%88%E0%B8%A7%E0%B9%84%E0%B8%9B/K-3-90M-PLUS-%E0%B8%9B%E0%B8%B1%E0%B9%8A%E0%B8%A1%E0%B8%AD%E0%B8%B1%E0%B8%94%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%AA%E0%B8%B9%E0%B8%87/p/K031-K3.90MPLUS",
          "manufacturers": "KARCHER/คาร์เชอร์",
          "name": "K-3.90M-PLUS ปั๊มอัดฉีดแรงสูง",
          "price": 8750.0,
          "stockstatus": "outOfStock",
          "summary": "K-3.90M-PLUS HIGH PRESSURE CLEANER"
        },
        {
          "code": "K031-K3.97MFIFA",
          "link":
              "/Open-Catalogue/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%97%E0%B8%B3%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%AA%E0%B8%B0%E0%B8%AD%E0%B8%B2%E0%B8%94/%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%94%E0%B8%B1%E0%B8%99%E0%B8%AA%E0%B8%B9%E0%B8%87/%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B9%83%E0%B8%8A%E0%B9%89%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B8%97%E0%B8%B1%E0%B9%88%E0%B8%A7%E0%B9%84%E0%B8%9B/K-3-97M-FIFA-%E0%B8%9B%E0%B8%B1%E0%B9%8A%E0%B8%A1%E0%B8%AD%E0%B8%B1%E0%B8%94%E0%B8%89%E0%B8%B5%E0%B8%94%E0%B9%81%E0%B8%A3%E0%B8%87%E0%B8%AA%E0%B8%B9%E0%B8%87/p/K031-K3.97MFIFA",
          "manufacturers": "KARCHER/คาร์เชอร์",
          "name": "K-3.97M FIFA ปั๊มอัดฉีดแรงสูง",
          "price": 9000.0,
          "stockstatus": "outOfStock",
          "summary": "K-3.97M FIFA HIGH PRESSURE CLEANER"
        }
      ],
      "suggestion": []
    };

    return SearchSuggestionModel.fromJson(responsebody);
  }
}
