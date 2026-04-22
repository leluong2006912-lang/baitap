import 'package:flutter/material.dart';



// Bài 6: Đổi từ in ra màn hình thành trả về chuỗi (String)
String hello() {
  return "Hello Dart";
}

// Bài 7: Hàm có tham số và trả về
int tinhTong(int a, int b) {
  return a + b;
}

// Bài 8: Arrow function
int tinhTongArrow(int a, int b) => a + b;

// Bài 9: Hàm xử lý danh sách
int tinhTongList(List<int> list) {
  int tong = 0;
  for (int so in list) {
    tong += so;
  }
  return tong;
}

// Bài 10: Xây dựng lớp SinhVien
class SinhVien {
  String name;
  int age;
  double gpa;

  SinhVien(this.name, this.age, this.gpa);

  // Đổi từ in ra màn hình thành trả về chuỗi (String)
  String hienThiThongTin() {
    return "- Tên: $name | Tuổi: $age | GPA: $gpa";
  }
}


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kết quả bài tập',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF0F4F8),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kết Quả 10 Bài Tập Dart'),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(20),
              constraints: const BoxConstraints(maxWidth: 700),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 10)
                ],
              ),
              // Nơi hiển thị toàn bộ kết quả của hàm chayCacBaiTap()
              child: Text(
                chayCacBaiTap(),
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


String chayCacBaiTap() {
  // Thay vì dùng print(), ta dùng out.writeln() để gom chữ lại dán lên web
  StringBuffer out = StringBuffer();

  out.writeln('--- BÀI 1: KHAI BÁO VÀ SỬ DỤNG BIẾN ---');
  var tenSinhVien = "Nguyễn Văn A";
  final int tuoi = 20;
  const double diemTrungBinh = 8.5;
  bool trangThaiTotNghiep = false;

  out.writeln("Tên sinh viên: $tenSinhVien");
  out.writeln("Tuổi: $tuoi");
  out.writeln("Điểm trung bình: $diemTrungBinh");
  out.writeln("Trạng thái tốt nghiệp: $trangThaiTotNghiep\n");

  out.writeln('--- BÀI 2: THỰC HIỆN PHÉP TOÁN VỚI SỐ ---');
  int soA = 15;
  double soB = 4.5;
  out.writeln("Số nguyên a = $soA, Số thực b = $soB");
  out.writeln("Cộng: ${soA + soB}");
  out.writeln("Trừ: ${soA - soB}");
  out.writeln("Nhân: ${soA * soB}");
  out.writeln("Chia: ${soA / soB}\n");

  out.writeln('--- BÀI 3: KIỂM TRA ĐIỀU KIỆN VỚI BOOL ---');
  String hoTen = "Trần Thị B";
  double diem = 4.8;
  bool isPassed = diem >= 5;

  out.writeln("Họ tên: $hoTen, Điểm: $diem");
  if (isPassed) {
    out.writeln("Kết quả: Sinh viên đậu\n");
  } else {
    out.writeln("Kết quả: Sinh viên rớt\n");
  }

  out.writeln('--- BÀI 4: LÀM VIỆC VỚI LIST ---');
  List<int> danhSachSo = [10, 20, 30, 40, 50];
  out.writeln("Toàn bộ danh sách: $danhSachSo");
  out.writeln("Phần tử đầu tiên: ${danhSachSo.first}");
  out.writeln("Phần tử cuối cùng: ${danhSachSo.last}");

  int tongList = 0;
  for (int so in danhSachSo) {
    tongList += so;
  }
  out.writeln("Tổng các phần tử trong danh sách: $tongList\n");

  out.writeln('--- BÀI 5: LÀM VIỆC VỚI MAP ---');
  Map<String, dynamic> thongTinSV = {
    "name": "Lê Văn C",
    "age": 21,
    "gpa": 7.9
  };
  out.writeln("Toàn bộ Map: $thongTinSV");
  out.writeln("Tên sinh viên (name): ${thongTinSV['name']}");
  out.writeln("Tuổi (age): ${thongTinSV['age']}");
  out.writeln("Điểm trung bình (gpa): ${thongTinSV['gpa']}\n");

  out.writeln('--- BÀI 6: GỌI HÀM KHÔNG THAM SỐ ---');
  out.writeln(hello());
  out.writeln("");

  out.writeln('--- BÀI 7 & 8: HÀM CÓ THAM SỐ & ARROW FUNCTION ---');
  int x = 5;
  int y = 9;
  out.writeln("Tổng (hàm thường) của $x và $y là: ${tinhTong(x, y)}");
  out.writeln("Tổng (arrow function) của $x và $y là: ${tinhTongArrow(x, y)}\n");

  out.writeln('--- BÀI 9: HÀM XỬ LÝ DANH SÁCH ---');
  List<int> listMau = [2, 4, 6, 8, 10];
  int ketQuaTongList = tinhTongList(listMau);
  out.writeln("Danh sách truyền vào: $listMau");
  out.writeln("Tổng danh sách tính qua hàm là: $ketQuaTongList\n");

  out.writeln('--- BÀI 10: LỚP SINH VIÊN ---');
  SinhVien sv1 = SinhVien("Phạm Hoàng D", 22, 8.2);
  SinhVien sv2 = SinhVien("Vũ Thị E", 19, 9.5);

  out.writeln("Thông tin SV1:");
  out.writeln(sv1.hienThiThongTin());
  out.writeln("Thông tin SV2:");
  out.writeln(sv2.hienThiThongTin());


  return out.toString();
}