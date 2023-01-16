class Book {
  String name;
  String author;
  String language;
  String publisher;
  String images;
  int pageNumber;

  Book(this.name, this.author, this.language, this.publisher, this.images,
      this.pageNumber);

  @override
  String toString() {
    return '{ ${this.name}, ${this.pageNumber} }';
  }
}
