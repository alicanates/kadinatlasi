import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';
import '../../app_config/app_constants.dart';
import '../../app_config/logger.dart';

part 'app_database.g.dart';

// Tables for cached content
class Articles extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get slug => text()();
  TextColumn get authorName => text().nullable()();
  DateTimeColumn get publishDate => dateTime()();
  TextColumn get imageUrl => text().nullable()();
  TextColumn get contentHtml => text()();
  TextColumn get excerpt => text().nullable()();
  IntColumn get readTimeMinutes => integer().nullable()();
  TextColumn get categoryIds => text()(); // JSON array as string
  TextColumn get tagIds => text()(); // JSON array as string
  DateTimeColumn get cachedAt => dateTime()();
  TextColumn get etag => text().nullable()();
  DateTimeColumn get lastModified => dateTime().nullable()();
  
  @override
  Set<Column> get primaryKey => {id};
}

class Categories extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get slug => text()();
  TextColumn get parentCategoryId => text().nullable()();
  DateTimeColumn get cachedAt => dateTime()();
  
  @override
  Set<Column> get primaryKey => {id};
}

class Tags extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get slug => text()();
  DateTimeColumn get cachedAt => dateTime()();
  
  @override
  Set<Column> get primaryKey => {id};
}

// User-generated content tables
class UserSessions extends Table {
  TextColumn get id => text()();
  TextColumn get backendUserId => text()();
  TextColumn get email => text().nullable()();
  TextColumn get displayName => text()();
  TextColumn get avatarUrl => text().nullable()();
  BoolColumn get isLoggedIn => boolean().withDefault(const Constant(false))();
  DateTimeColumn get lastLoginAt => dateTime().nullable()();
  DateTimeColumn get sessionTokenExpiry => dateTime().nullable()();
  DateTimeColumn get refreshTokenExpiry => dateTime().nullable()();
  
  @override
  Set<Column> get primaryKey => {id};
}

class Favorites extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  TextColumn get targetType => text()(); // 'article' or 'topic'
  TextColumn get targetId => text()();
  DateTimeColumn get favoritedAt => dateTime()();
  
  @override
  Set<Column> get primaryKey => {id};
}

class Drafts extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  TextColumn get type => text()(); // 'topic', 'post', 'support_form'
  TextColumn get targetForumId => text().nullable()();
  TextColumn get targetTopicId => text().nullable()();
  TextColumn get title => text().nullable()();
  BlobColumn get contentHtml => blob()(); // Encrypted content
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get lastSavedAt => dateTime()();
  TextColumn get status => text().withDefault(const Constant('draft'))();
  TextColumn get errorMessage => text().nullable()();
  
  @override
  Set<Column> get primaryKey => {id};
}

class QueuedActions extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  TextColumn get actionType => text()();
  TextColumn get targetType => text().nullable()();
  TextColumn get targetId => text().nullable()();
  BlobColumn get payload => blob()(); // Encrypted JSON payload
  DateTimeColumn get createdAt => dateTime()();
  TextColumn get status => text().withDefault(const Constant('pending'))();
  IntColumn get retryCount => integer().withDefault(const Constant(0))();
  DateTimeColumn get lastAttemptAt => dateTime().nullable()();
  TextColumn get errorMessage => text().nullable()();
  
  @override
  Set<Column> get primaryKey => {id};
}

// Calculator result tables
class MenstrualCycleResults extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  DateTimeColumn get lmpDate => dateTime()();
  IntColumn get avgCycleLengthDays => integer()();
  IntColumn get periodLengthDays => integer().nullable()();
  IntColumn get variabilityDays => integer().nullable()();
  BlobColumn get resultJson => blob()(); // Encrypted result data
  DateTimeColumn get savedAt => dateTime()();
  IntColumn get schemaVersion => integer().withDefault(const Constant(1))();
  
  @override
  Set<Column> get primaryKey => {id};
}

class PregnancyResults extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  DateTimeColumn get lmpDate => dateTime().nullable()();
  DateTimeColumn get usgDate => dateTime().nullable()();
  IntColumn get usgGaWeeks => integer().nullable()();
  IntColumn get usgGaDays => integer().nullable()();
  TextColumn get conceptionMethod => text().nullable()();
  BlobColumn get resultJson => blob()(); // Encrypted result data
  DateTimeColumn get savedAt => dateTime()();
  IntColumn get schemaVersion => integer().withDefault(const Constant(1))();
  
  @override
  Set<Column> get primaryKey => {id};
}

class BmiResults extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  RealColumn get heightCm => real()();
  RealColumn get weightKg => real()();
  BlobColumn get resultJson => blob()(); // Encrypted result data
  DateTimeColumn get savedAt => dateTime()();
  IntColumn get schemaVersion => integer().withDefault(const Constant(1))();
  
  @override
  Set<Column> get primaryKey => {id};
}

class SearchHistory extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  TextColumn get query => text()();
  DateTimeColumn get searchedAt => dateTime()();
  
  @override
  Set<Column> get primaryKey => {id};
}

class ConsentRecords extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  TextColumn get consentType => text()();
  TextColumn get status => text()(); // 'given' or 'withdrawn'
  DateTimeColumn get givenAt => dateTime()();
  DateTimeColumn get withdrawnAt => dateTime().nullable()();
  TextColumn get policyVersion => text().nullable()();
  
  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [
  Articles,
  Categories,
  Tags,
  UserSessions,
  Favorites,
  Drafts,
  QueuedActions,
  MenstrualCycleResults,
  PregnancyResults,
  BmiResults,
  SearchHistory,
  ConsentRecords,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => AppConstants.databaseVersion;

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, AppConstants.databaseName));
      
      Logger.database('Opening database', AppConstants.databaseName, {
        'path': file.path,
      });
      
      return NativeDatabase.createInBackground(file);
    });
  }
  
  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        Logger.database('Creating database tables', AppConstants.databaseName);
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        Logger.database('Upgrading database', AppConstants.databaseName, {
          'from': from,
          'to': to,
        });
        
        // Add migration logic here when schema changes
        if (from < 2) {
          // Example: await m.addColumn(articles, articles.newColumn);
        }
      },
    );
  }
}
