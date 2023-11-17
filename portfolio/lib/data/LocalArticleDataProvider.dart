
import 'model/Article.dart';

class LocalArticleDataProvider {
  static LocalArticleDataProvider? _instance;
  late List<Article> values;

  // Private constructor
  LocalArticleDataProvider._();

  static LocalArticleDataProvider getInstance() {
    // Buat instance jika null
    _instance ??= LocalArticleDataProvider._();
    _instance?.values = [
      Article(
          name: "Creating a Python Counter-Like in Java and Kotlin",
          imgPath: "https://miro.medium.com/v2/resize:fit:720/format:webp/0*065qdsGZctvOqrMz",
          url: "https://medium.com/@anafthdev_/3facf2cad2fd",
          date: "29 September 2023"
      ),
      Article(
          name: "Mengatasi UI State yang hilang akibat Process Death di Android",
          imgPath: "https://miro.medium.com/v2/resize:fit:720/format:webp/0*vlXjxG5Z7VXIC1Jt",
          url: "https://medium.com/@anafthdev_/d4b0b6c026da",
          date: "15 September 2023",
      ),
      Article(
          name: "Penjelasan algoritma Bubble Sort",
          imgPath: "https://miro.medium.com/v2/resize:fit:720/format:webp/0*PlzLXS1Wj7rYb1rq",
          url: "https://medium.com/@anafthdev_/3a51cdfd255f",
          date: "05 September 2023"
      ),
      Article(
          name: "Create MediaStyle Notification in Android",
          imgPath: "https://miro.medium.com/v2/resize:fit:720/format:webp/0*B4rW5wkZAb8tcwqf",
          url: "https://medium.com/@anafthdev_/70fe7df3397e",
          date: "19 March 2023"
      ),
      Article(
          name: "Create Biometric Authentication in Android",
          imgPath: "https://miro.medium.com/v2/resize:fit:720/format:webp/0*qM8rnAt_7It11D-p",
          url: "https://medium.com/@anafthdev_/fbfbe77db7c6",
          date: "18 March 2023"
      ),
    ];

    return _instance!;
  }

}