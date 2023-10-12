// 영화 관련된 임시 데이터 파일, 순위, 이미지 파일 경로
class Movie {
  final int rank;
  final String rating;
  final String title;
  final String subTitle;
  final String imgUrl;
  final String runTime;

  Movie({
    required this.rank,
    required this.rating,
    required this.title,
    required this.subTitle,
    required this.imgUrl,
    required this.runTime,
  });
}

List<Movie> movieList = [
  Movie(
    rank: 1, 
    rating: "59.5%", 
    title: "공조2-인터내셔날", 
    subTitle: "공조 이즈 백!", 
    imgUrl: "", 
    runTime: "2시간 9분"),
  Movie(
    rank: 2, 
    rating: "8.7%", 
    title: "알라딘", 
    subTitle: "신비의 아그라바 왕국의 시대", 
    imgUrl: "", 
    runTime: "2시간 8분"),
  Movie(
    rank: 3, 
    rating: "7.8%", 
    title: "육사오", 
    subTitle: "남북 군인들간의 코믹 접선극", 
    imgUrl: "", 
    runTime: "1시간 53분"),
  Movie(
    rank: 4, 
    rating: "5.2%", 
    title: "탑건-매버릭", 
    subTitle: "가장 압도적인 비행이 시작된다!", 
    imgUrl: "", 
    runTime: "2시간10분"),
];