class CategoryCard {
  String tittle;
  String url;
  String query;

  CategoryCard(this.tittle, this.url, this.query);

  static final List<CategoryCard> categories = [
    CategoryCard(
        "Gaming",
        "https://images.pexels.com/photos/9072216/pexels-photo-9072216.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "gaming"),
    CategoryCard(
        "Music",
        "https://images.pexels.com/photos/894156/pexels-photo-894156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "music"),
    CategoryCard(
        "Sports",
        "https://images.pexels.com/photos/6295868/pexels-photo-6295868.jpeg?auto=compress&cs=tinysrgb&w=600",
        "sports"),
    CategoryCard(
        "Dark",
        "https://images.pexels.com/photos/1853542/pexels-photo-1853542.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "dark"),
    CategoryCard(
        "Asthetic",
        "https://images.pexels.com/photos/17243420/pexels-photo-17243420/free-photo-of-deco-city.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "asthetic"),
    CategoryCard(
        "Art",
        "https://img.freepik.com/free-photo/colorful-male-lion-studio_23-2150813161.jpg?t=st=1699088868~exp=1699092468~hmac=502157e874352b8fbe6755c42a8cad1965ce415cf6f713ef2981b009b114df3b&w=826",
        "art"),
    CategoryCard(
        "Animals",
        "https://images.pexels.com/photos/3608263/pexels-photo-3608263.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "animal"),
    CategoryCard(
        "Anime",
        "https://img.freepik.com/premium-photo/anime-alone-boy-illustration_962635-750.jpg?w=740",
        "anime"),
  ];
}
