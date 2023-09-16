void main() {
  var restaurants = [
    {
      'name' :'Pizza Mario',
      'cuisine' : 'Italian',
      'ratings' : [5.0, 3.5, 4.5],
    },
    {
      'name' :'Chez Anne',
      'cuisine' : 'French',
      'ratings' : [5.0, 4.5, 4.0],
    },
    {
      'name' :'Navaration',
      'cuisine' : 'Indian',
      'ratings' : [4.0, 4.5, 4.0],
    },
  ];
  for (var restaurants in restaurants) {
    final ratings = restaurants['ratings'] as List<double>;
    var total = 0.0;
    for (var rating in ratings) {
      total += rating;
    }
    final avgRating = total / ratings.length;
    restaurants['avgRating'] = avgRating;
    print(restaurants);
  }
}