import 'package:hive/hive.dart';
part 'book_entity.g.dart';
@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String description;
  @HiveField(2)
  final String thumbnailUrl;
  @HiveField(3)
  final String author;
  @HiveField(4)
  final String previewUrl;
  @HiveField(5)
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
