abstract class  SqlQuerys {
  static const String searchTable='''
CREATE TABLE IF NOT EXISTS search(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  search TEXT
)
''';
  
}