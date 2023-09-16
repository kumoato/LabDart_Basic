class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuising,
    required this.ratings,
  });
  final String name;
  final String cuising;
  final String ratings;

  int get numRatings => ratings.length;
  double? avgRatings() {
    if (ratings.isEmpty){
      return null;
    }
    return ratings.reduce((value, element) => value + element) / ratings.length;
  }
}

void main() {
  // สร้างออบเจกต์ร้านอาหาร
  var restaurant = Restaurant(
    name: "ร้านอาหารอร่อยมาก", 
    cuising: "อาหารไทย", 
    ratings: [4.5,3.8,4.2,4.7,5.0],
    );

  // แสดงผลลัพท์
  print("ชื่อร้าน: ${restaurant.name}");
  print("ร้านอาหาร: ${restaurant.cuising}");
  print("จำนวนรีวิว: ${restaurant.ratings}");

  var avg = restaurant.avgRatings();
  if (avg != null) {
    print("คะแนนเฉลี่ย: ${avg.toStringAsFixed(1)}");
  }else{
    print("ยังไม่มีรีวิว");
  }
}