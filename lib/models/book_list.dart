import 'package:fsc_book_app/models/book.dart';

List booklist = [
  {
    "author": "Chinua Achebe",
    "country": "Nigeria",
    "imageLink":
        "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/a-Dolls-house.jpg",
    "language": "English",
    "link": "https://en.wikipedia.org/wiki/Things_Fall_Apart\n",
    "pages": 209,
    "title": "Things Fall",
    "year": 1958
  },
  {
    "author": "Hans Christian",
    "country": "Denmark",
    "imageLink":
        "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/a-la-recherche-du-temps-perdu.jpg",
    "language": "Danish",
    "link":
        "https://en.wikipedia.org/wiki/Fairy_Tales_Told_for_Children._First_Collection.\n",
    "pages": 784,
    "title": "Fairy tales",
    "year": 1836
  },
  {
    "author": "Dante Alighieri",
    "country": "Italy",
    "imageLink":
        "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/moby-dick.jpg",
    "language": "Italian",
    "link": "https://en.wikipedia.org/wiki/Divine_Comedy\n",
    "pages": 928,
    "title": "The Divine",
    "year": 1315
  },
  {
    "author": "Unknown",
    "country": "Sumer and Akkadian Empire",
    "imageLink":
        "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/mrs-dalloway.jpg",
    "language": "Akkadian",
    "link": "https://en.wikipedia.org/wiki/Epic_of_Gilgamesh\n",
    "pages": 160,
    "title": "The Epic Of Gil",
    "year": -1700
  }
];

List<Book> booklistmodel = [
  Book(
      author: "Chinua Achebe",
      imageLink:
          "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/a-Dolls-house.jpg",
      title: "Things Fall"),
  Book(
      author: "Hans Christian",
      imageLink:
          "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/a-la-recherche-du-temps-perdu.jpg",
      title: "Fairy tales"),
  Book(
      author: "Dante Alighieri",
      imageLink:
          "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/moby-dick.jpg",
      title: "The Divine"),
  Book(
      author: "Unknown",
      imageLink:
          "https://raw.githubusercontent.com/benoitvallon/100-best-books/master/static/images/mrs-dalloway.jpg",
      title: "The Epic Of Gil")
];
