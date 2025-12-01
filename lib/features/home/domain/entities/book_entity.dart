class BookEntity {
  final String title;
  final String description;
  final String thumbnailUrl;
  final String author;
  final String previewUrl;
  final num pageCount;

  BookEntity({
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.author,
    required this.previewUrl,
    required this.pageCount,
  });
}
