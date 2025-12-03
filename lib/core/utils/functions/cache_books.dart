import 'package:bookverse/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void cacheBoxData (List<BookEntity> books, String boxName)
{
  Hive.box(boxName).addAll(books);
}