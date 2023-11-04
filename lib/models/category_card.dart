class CategoryCard {
  String tittle;
  String url;
  String query;

  CategoryCard(this.tittle, this.url, this.query);

  static final List<CategoryCard> categories = [
    CategoryCard(
        "Gaming",
        "https://img.freepik.com/free-vector/gradient-hexagonal-background_23-2148953142.jpg?w=1380&t=st=1699088580~exp=1699089180~hmac=270613081c8651576dba73cf4a664c497896c6f55440396cbe5d861420054340",
        "gaming"),
    CategoryCard(
        "Music",
        "https://img.freepik.com/free-photo/drums-bass-drum-hi-hat-cymbals-dark-background-with-beams-from-spotlight-copy-space_169016-14180.jpg?w=1380&t=st=1699088668~exp=1699089268~hmac=e77e449eccef7b5a7268dd1b014ce85a4e59081e10dc85efc170685ba78448a6",
        "music"),
    CategoryCard(
        "Sports",
        "https://img.freepik.com/free-photo/blue-soccer-ball-kicks-into-net-generative-ai_188544-46219.jpg?t=st=1699087838~exp=1699091438~hmac=8397828f7b8b5e72307abf3de909594173de4114ca369e8214bd51b726e1b359&w=1380",
        "sports"),
    CategoryCard(
        "Dark",
        "https://img.freepik.com/free-photo/man-silhouette-empty-road_23-2150914194.jpg?t=st=1699088815~exp=1699092415~hmac=97f5eab31bee2cf3f99f9a75bc3927de97220acd8ac2e6d0fc746d85b72f1bea&w=1380",
        "dark"),
    CategoryCard(
        "Asthetic",
        "https://img.freepik.com/free-photo/young-woman-holds-bouquet-fresh-daisies-generated-by-ai_188544-17576.jpg?t=st=1699088845~exp=1699092445~hmac=c3810d23db9f45470aba2cc485d834b5f5aa98718c98c75167bb5cbada69f89d&w=1380",
        "asthetic"),
    CategoryCard(
        "Art",
        "https://img.freepik.com/free-photo/colorful-male-lion-studio_23-2150813161.jpg?t=st=1699088868~exp=1699092468~hmac=502157e874352b8fbe6755c42a8cad1965ce415cf6f713ef2981b009b114df3b&w=826",
        "art"),
    CategoryCard(
        "Animals",
        "https://img.freepik.com/free-photo/cute-elephant-nature_23-2150895523.jpg?t=st=1699088894~exp=1699092494~hmac=62693d208b2c14ec1db9ce621a53c764565e378319348e50a3ff67bb15a12b41&w=740",
        "animal"),
    CategoryCard(
        "Anime",
        "https://img.freepik.com/premium-photo/anime-alone-boy-illustration_962635-750.jpg?w=740",
        "anime"),
  ];
}
