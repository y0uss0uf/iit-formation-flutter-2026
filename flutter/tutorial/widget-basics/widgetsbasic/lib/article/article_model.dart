class ArticleModel {
  final int id;
  final String title;
  final String description;
  final String urlToImage;
  final String content;
  final int nb_like;
  final int nb_share;
  final int nb_comment;
  final int nb_article_register;

  ArticleModel({
    required this.id,
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.content,
    required this.nb_like,
    required this.nb_share,
    required this.nb_comment,
    required this.nb_article_register,
  });
}

class DummyData {
  static List<ArticleModel> listArticles = [
    ArticleModel(
      id: 1,
      title: 'Glow naturel',
      description:
          'la routine skincare sublimée avec le Ginseng Cleansing Oil de Beauty of Joseon',
      urlToImage: 'images/articles/article_1.jpeg',
      content:
          "Ce visuel apaisant transmet une sensation de bien-être et de self-care grâce à l’huile nettoyante coréenne Beauty of Joseon. La pose douce, les yeux fermés et le glow maîtrisé en font une image parfaite pour illustrer une routine beauté sensorielle et bienveillante. #skincaremoment #rituelbeaute #cleanbeautyritual #softskin #peacefulglow #koreanbeauty #cosmeticsmood",
      nb_like: 10,
      nb_share: 51,
      nb_comment: 399,
      nb_article_register: 10,
    ),
    ArticleModel(
      id: 2,
      title: 'Oily Skin Skincare Routine',
      description: 'Oily Skin Skincare Routine + Must-Have Products ',
      urlToImage: 'images/articles/article_2.jpeg',
      content:
          "Perfect morning skincare routine for oily skin! 💧 This Kenyan beauty uses her sonic facial cleansing brush with a gentle gel cleanser, followed by niacinamide serum, oil-free moisturizer, and matte sunscreen. All products are clearly visible — lightweight formulas that control shine and keep skin fresh and balanced. Great for acne-prone and oily skin types! This pin contains affiliate links. As an Amazon Associate, I earn from qualifying purchases. #OilySkinRoutine #SkincareProducts",
      nb_like: 200,
      nb_share: 140,
      nb_comment: 51,
      nb_article_register: 30,
    ),

    ArticleModel(
      id: 3,
      title: 'Procure Produtos com Vitamina',
      description: 'Procure Produtos com Vitamina C ',
      urlToImage: 'images/articles/article_3.jpeg',
      content:
          "Cremes faciais com vitamina C podem ajudar a iluminar a pele e reduzir hiperpigmentação, promovendo um tom de pele uniforme.sh with a gentle gel cleanser, followed by niacinamide serum, oil-free moisturizer, and matte sunscreen. All products are clearly visible — lightweight formulas that control shine and keep skin fresh and balanced. Great for acne-prone and oily skin types! This pin contains affiliate links. As an Amazon Associate, I earn from qualifying purchases. #OilySkinRoutine #SkincareProducts",
      nb_like: 820,
      nb_share: 810,
      nb_comment: 35,
      nb_article_register: 90,
    ),

    ArticleModel(
      id: 1,
      title: 'Glow naturel',
      description:
          'la routine skincare sublimée avec le Ginseng Cleansing Oil de Beauty of Joseon',
      urlToImage: 'images/articles/article_1.jpeg',
      content:
          "Ce visuel apaisant transmet une sensation de bien-être et de self-care grâce à l’huile nettoyante coréenne Beauty of Joseon. La pose douce, les yeux fermés et le glow maîtrisé en font une image parfaite pour illustrer une routine beauté sensorielle et bienveillante. #skincaremoment #rituelbeaute #cleanbeautyritual #softskin #peacefulglow #koreanbeauty #cosmeticsmood",
      nb_like: 10,
      nb_share: 51,
      nb_comment: 399,
      nb_article_register: 10,
    ),
    ArticleModel(
      id: 2,
      title: 'Oily Skin Skincare Routine',
      description: 'Oily Skin Skincare Routine + Must-Have Products ',
      urlToImage: 'images/articles/article_2.jpeg',
      content:
          "Perfect morning skincare routine for oily skin! 💧 This Kenyan beauty uses her sonic facial cleansing brush with a gentle gel cleanser, followed by niacinamide serum, oil-free moisturizer, and matte sunscreen. All products are clearly visible — lightweight formulas that control shine and keep skin fresh and balanced. Great for acne-prone and oily skin types! This pin contains affiliate links. As an Amazon Associate, I earn from qualifying purchases. #OilySkinRoutine #SkincareProducts",
      nb_like: 200,
      nb_share: 140,
      nb_comment: 51,
      nb_article_register: 30,
    ),

    ArticleModel(
      id: 3,
      title: 'Procure Produtos com Vitamina',
      description: 'Procure Produtos com Vitamina C ',
      urlToImage: 'images/articles/article_3.jpeg',
      content:
          "Cremes faciais com vitamina C podem ajudar a iluminar a pele e reduzir hiperpigmentação, promovendo um tom de pele uniforme.sh with a gentle gel cleanser, followed by niacinamide serum, oil-free moisturizer, and matte sunscreen. All products are clearly visible — lightweight formulas that control shine and keep skin fresh and balanced. Great for acne-prone and oily skin types! This pin contains affiliate links. As an Amazon Associate, I earn from qualifying purchases. #OilySkinRoutine #SkincareProducts",
      nb_like: 820,
      nb_share: 810,
      nb_comment: 35,
      nb_article_register: 90,
    ),
  ];
}
