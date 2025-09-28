// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ArticlesTable extends Articles with TableInfo<$ArticlesTable, Article> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticlesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _slugMeta = const VerificationMeta('slug');
  @override
  late final GeneratedColumn<String> slug = GeneratedColumn<String>(
      'slug', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _authorNameMeta =
      const VerificationMeta('authorName');
  @override
  late final GeneratedColumn<String> authorName = GeneratedColumn<String>(
      'author_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _publishDateMeta =
      const VerificationMeta('publishDate');
  @override
  late final GeneratedColumn<DateTime> publishDate = GeneratedColumn<DateTime>(
      'publish_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _imageUrlMeta =
      const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _contentHtmlMeta =
      const VerificationMeta('contentHtml');
  @override
  late final GeneratedColumn<String> contentHtml = GeneratedColumn<String>(
      'content_html', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _excerptMeta =
      const VerificationMeta('excerpt');
  @override
  late final GeneratedColumn<String> excerpt = GeneratedColumn<String>(
      'excerpt', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _readTimeMinutesMeta =
      const VerificationMeta('readTimeMinutes');
  @override
  late final GeneratedColumn<int> readTimeMinutes = GeneratedColumn<int>(
      'read_time_minutes', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _categoryIdsMeta =
      const VerificationMeta('categoryIds');
  @override
  late final GeneratedColumn<String> categoryIds = GeneratedColumn<String>(
      'category_ids', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tagIdsMeta = const VerificationMeta('tagIds');
  @override
  late final GeneratedColumn<String> tagIds = GeneratedColumn<String>(
      'tag_ids', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cachedAtMeta =
      const VerificationMeta('cachedAt');
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
      'cached_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _etagMeta = const VerificationMeta('etag');
  @override
  late final GeneratedColumn<String> etag = GeneratedColumn<String>(
      'etag', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastModifiedMeta =
      const VerificationMeta('lastModified');
  @override
  late final GeneratedColumn<DateTime> lastModified = GeneratedColumn<DateTime>(
      'last_modified', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        slug,
        authorName,
        publishDate,
        imageUrl,
        contentHtml,
        excerpt,
        readTimeMinutes,
        categoryIds,
        tagIds,
        cachedAt,
        etag,
        lastModified
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'articles';
  @override
  VerificationContext validateIntegrity(Insertable<Article> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('slug')) {
      context.handle(
          _slugMeta, slug.isAcceptableOrUnknown(data['slug']!, _slugMeta));
    } else if (isInserting) {
      context.missing(_slugMeta);
    }
    if (data.containsKey('author_name')) {
      context.handle(
          _authorNameMeta,
          authorName.isAcceptableOrUnknown(
              data['author_name']!, _authorNameMeta));
    }
    if (data.containsKey('publish_date')) {
      context.handle(
          _publishDateMeta,
          publishDate.isAcceptableOrUnknown(
              data['publish_date']!, _publishDateMeta));
    } else if (isInserting) {
      context.missing(_publishDateMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    }
    if (data.containsKey('content_html')) {
      context.handle(
          _contentHtmlMeta,
          contentHtml.isAcceptableOrUnknown(
              data['content_html']!, _contentHtmlMeta));
    } else if (isInserting) {
      context.missing(_contentHtmlMeta);
    }
    if (data.containsKey('excerpt')) {
      context.handle(_excerptMeta,
          excerpt.isAcceptableOrUnknown(data['excerpt']!, _excerptMeta));
    }
    if (data.containsKey('read_time_minutes')) {
      context.handle(
          _readTimeMinutesMeta,
          readTimeMinutes.isAcceptableOrUnknown(
              data['read_time_minutes']!, _readTimeMinutesMeta));
    }
    if (data.containsKey('category_ids')) {
      context.handle(
          _categoryIdsMeta,
          categoryIds.isAcceptableOrUnknown(
              data['category_ids']!, _categoryIdsMeta));
    } else if (isInserting) {
      context.missing(_categoryIdsMeta);
    }
    if (data.containsKey('tag_ids')) {
      context.handle(_tagIdsMeta,
          tagIds.isAcceptableOrUnknown(data['tag_ids']!, _tagIdsMeta));
    } else if (isInserting) {
      context.missing(_tagIdsMeta);
    }
    if (data.containsKey('cached_at')) {
      context.handle(_cachedAtMeta,
          cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta));
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    if (data.containsKey('etag')) {
      context.handle(
          _etagMeta, etag.isAcceptableOrUnknown(data['etag']!, _etagMeta));
    }
    if (data.containsKey('last_modified')) {
      context.handle(
          _lastModifiedMeta,
          lastModified.isAcceptableOrUnknown(
              data['last_modified']!, _lastModifiedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Article map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Article(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      slug: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}slug'])!,
      authorName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author_name']),
      publishDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}publish_date'])!,
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url']),
      contentHtml: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content_html'])!,
      excerpt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}excerpt']),
      readTimeMinutes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}read_time_minutes']),
      categoryIds: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_ids'])!,
      tagIds: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tag_ids'])!,
      cachedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}cached_at'])!,
      etag: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}etag']),
      lastModified: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_modified']),
    );
  }

  @override
  $ArticlesTable createAlias(String alias) {
    return $ArticlesTable(attachedDatabase, alias);
  }
}

class Article extends DataClass implements Insertable<Article> {
  final String id;
  final String title;
  final String slug;
  final String? authorName;
  final DateTime publishDate;
  final String? imageUrl;
  final String contentHtml;
  final String? excerpt;
  final int? readTimeMinutes;
  final String categoryIds;
  final String tagIds;
  final DateTime cachedAt;
  final String? etag;
  final DateTime? lastModified;
  const Article(
      {required this.id,
      required this.title,
      required this.slug,
      this.authorName,
      required this.publishDate,
      this.imageUrl,
      required this.contentHtml,
      this.excerpt,
      this.readTimeMinutes,
      required this.categoryIds,
      required this.tagIds,
      required this.cachedAt,
      this.etag,
      this.lastModified});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['slug'] = Variable<String>(slug);
    if (!nullToAbsent || authorName != null) {
      map['author_name'] = Variable<String>(authorName);
    }
    map['publish_date'] = Variable<DateTime>(publishDate);
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    map['content_html'] = Variable<String>(contentHtml);
    if (!nullToAbsent || excerpt != null) {
      map['excerpt'] = Variable<String>(excerpt);
    }
    if (!nullToAbsent || readTimeMinutes != null) {
      map['read_time_minutes'] = Variable<int>(readTimeMinutes);
    }
    map['category_ids'] = Variable<String>(categoryIds);
    map['tag_ids'] = Variable<String>(tagIds);
    map['cached_at'] = Variable<DateTime>(cachedAt);
    if (!nullToAbsent || etag != null) {
      map['etag'] = Variable<String>(etag);
    }
    if (!nullToAbsent || lastModified != null) {
      map['last_modified'] = Variable<DateTime>(lastModified);
    }
    return map;
  }

  ArticlesCompanion toCompanion(bool nullToAbsent) {
    return ArticlesCompanion(
      id: Value(id),
      title: Value(title),
      slug: Value(slug),
      authorName: authorName == null && nullToAbsent
          ? const Value.absent()
          : Value(authorName),
      publishDate: Value(publishDate),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      contentHtml: Value(contentHtml),
      excerpt: excerpt == null && nullToAbsent
          ? const Value.absent()
          : Value(excerpt),
      readTimeMinutes: readTimeMinutes == null && nullToAbsent
          ? const Value.absent()
          : Value(readTimeMinutes),
      categoryIds: Value(categoryIds),
      tagIds: Value(tagIds),
      cachedAt: Value(cachedAt),
      etag: etag == null && nullToAbsent ? const Value.absent() : Value(etag),
      lastModified: lastModified == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModified),
    );
  }

  factory Article.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Article(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      slug: serializer.fromJson<String>(json['slug']),
      authorName: serializer.fromJson<String?>(json['authorName']),
      publishDate: serializer.fromJson<DateTime>(json['publishDate']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      contentHtml: serializer.fromJson<String>(json['contentHtml']),
      excerpt: serializer.fromJson<String?>(json['excerpt']),
      readTimeMinutes: serializer.fromJson<int?>(json['readTimeMinutes']),
      categoryIds: serializer.fromJson<String>(json['categoryIds']),
      tagIds: serializer.fromJson<String>(json['tagIds']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
      etag: serializer.fromJson<String?>(json['etag']),
      lastModified: serializer.fromJson<DateTime?>(json['lastModified']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'slug': serializer.toJson<String>(slug),
      'authorName': serializer.toJson<String?>(authorName),
      'publishDate': serializer.toJson<DateTime>(publishDate),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'contentHtml': serializer.toJson<String>(contentHtml),
      'excerpt': serializer.toJson<String?>(excerpt),
      'readTimeMinutes': serializer.toJson<int?>(readTimeMinutes),
      'categoryIds': serializer.toJson<String>(categoryIds),
      'tagIds': serializer.toJson<String>(tagIds),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
      'etag': serializer.toJson<String?>(etag),
      'lastModified': serializer.toJson<DateTime?>(lastModified),
    };
  }

  Article copyWith(
          {String? id,
          String? title,
          String? slug,
          Value<String?> authorName = const Value.absent(),
          DateTime? publishDate,
          Value<String?> imageUrl = const Value.absent(),
          String? contentHtml,
          Value<String?> excerpt = const Value.absent(),
          Value<int?> readTimeMinutes = const Value.absent(),
          String? categoryIds,
          String? tagIds,
          DateTime? cachedAt,
          Value<String?> etag = const Value.absent(),
          Value<DateTime?> lastModified = const Value.absent()}) =>
      Article(
        id: id ?? this.id,
        title: title ?? this.title,
        slug: slug ?? this.slug,
        authorName: authorName.present ? authorName.value : this.authorName,
        publishDate: publishDate ?? this.publishDate,
        imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
        contentHtml: contentHtml ?? this.contentHtml,
        excerpt: excerpt.present ? excerpt.value : this.excerpt,
        readTimeMinutes: readTimeMinutes.present
            ? readTimeMinutes.value
            : this.readTimeMinutes,
        categoryIds: categoryIds ?? this.categoryIds,
        tagIds: tagIds ?? this.tagIds,
        cachedAt: cachedAt ?? this.cachedAt,
        etag: etag.present ? etag.value : this.etag,
        lastModified:
            lastModified.present ? lastModified.value : this.lastModified,
      );
  Article copyWithCompanion(ArticlesCompanion data) {
    return Article(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      slug: data.slug.present ? data.slug.value : this.slug,
      authorName:
          data.authorName.present ? data.authorName.value : this.authorName,
      publishDate:
          data.publishDate.present ? data.publishDate.value : this.publishDate,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      contentHtml:
          data.contentHtml.present ? data.contentHtml.value : this.contentHtml,
      excerpt: data.excerpt.present ? data.excerpt.value : this.excerpt,
      readTimeMinutes: data.readTimeMinutes.present
          ? data.readTimeMinutes.value
          : this.readTimeMinutes,
      categoryIds:
          data.categoryIds.present ? data.categoryIds.value : this.categoryIds,
      tagIds: data.tagIds.present ? data.tagIds.value : this.tagIds,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
      etag: data.etag.present ? data.etag.value : this.etag,
      lastModified: data.lastModified.present
          ? data.lastModified.value
          : this.lastModified,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Article(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('slug: $slug, ')
          ..write('authorName: $authorName, ')
          ..write('publishDate: $publishDate, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('contentHtml: $contentHtml, ')
          ..write('excerpt: $excerpt, ')
          ..write('readTimeMinutes: $readTimeMinutes, ')
          ..write('categoryIds: $categoryIds, ')
          ..write('tagIds: $tagIds, ')
          ..write('cachedAt: $cachedAt, ')
          ..write('etag: $etag, ')
          ..write('lastModified: $lastModified')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      title,
      slug,
      authorName,
      publishDate,
      imageUrl,
      contentHtml,
      excerpt,
      readTimeMinutes,
      categoryIds,
      tagIds,
      cachedAt,
      etag,
      lastModified);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Article &&
          other.id == this.id &&
          other.title == this.title &&
          other.slug == this.slug &&
          other.authorName == this.authorName &&
          other.publishDate == this.publishDate &&
          other.imageUrl == this.imageUrl &&
          other.contentHtml == this.contentHtml &&
          other.excerpt == this.excerpt &&
          other.readTimeMinutes == this.readTimeMinutes &&
          other.categoryIds == this.categoryIds &&
          other.tagIds == this.tagIds &&
          other.cachedAt == this.cachedAt &&
          other.etag == this.etag &&
          other.lastModified == this.lastModified);
}

class ArticlesCompanion extends UpdateCompanion<Article> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> slug;
  final Value<String?> authorName;
  final Value<DateTime> publishDate;
  final Value<String?> imageUrl;
  final Value<String> contentHtml;
  final Value<String?> excerpt;
  final Value<int?> readTimeMinutes;
  final Value<String> categoryIds;
  final Value<String> tagIds;
  final Value<DateTime> cachedAt;
  final Value<String?> etag;
  final Value<DateTime?> lastModified;
  final Value<int> rowid;
  const ArticlesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.slug = const Value.absent(),
    this.authorName = const Value.absent(),
    this.publishDate = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.contentHtml = const Value.absent(),
    this.excerpt = const Value.absent(),
    this.readTimeMinutes = const Value.absent(),
    this.categoryIds = const Value.absent(),
    this.tagIds = const Value.absent(),
    this.cachedAt = const Value.absent(),
    this.etag = const Value.absent(),
    this.lastModified = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ArticlesCompanion.insert({
    required String id,
    required String title,
    required String slug,
    this.authorName = const Value.absent(),
    required DateTime publishDate,
    this.imageUrl = const Value.absent(),
    required String contentHtml,
    this.excerpt = const Value.absent(),
    this.readTimeMinutes = const Value.absent(),
    required String categoryIds,
    required String tagIds,
    required DateTime cachedAt,
    this.etag = const Value.absent(),
    this.lastModified = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        title = Value(title),
        slug = Value(slug),
        publishDate = Value(publishDate),
        contentHtml = Value(contentHtml),
        categoryIds = Value(categoryIds),
        tagIds = Value(tagIds),
        cachedAt = Value(cachedAt);
  static Insertable<Article> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? slug,
    Expression<String>? authorName,
    Expression<DateTime>? publishDate,
    Expression<String>? imageUrl,
    Expression<String>? contentHtml,
    Expression<String>? excerpt,
    Expression<int>? readTimeMinutes,
    Expression<String>? categoryIds,
    Expression<String>? tagIds,
    Expression<DateTime>? cachedAt,
    Expression<String>? etag,
    Expression<DateTime>? lastModified,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (slug != null) 'slug': slug,
      if (authorName != null) 'author_name': authorName,
      if (publishDate != null) 'publish_date': publishDate,
      if (imageUrl != null) 'image_url': imageUrl,
      if (contentHtml != null) 'content_html': contentHtml,
      if (excerpt != null) 'excerpt': excerpt,
      if (readTimeMinutes != null) 'read_time_minutes': readTimeMinutes,
      if (categoryIds != null) 'category_ids': categoryIds,
      if (tagIds != null) 'tag_ids': tagIds,
      if (cachedAt != null) 'cached_at': cachedAt,
      if (etag != null) 'etag': etag,
      if (lastModified != null) 'last_modified': lastModified,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ArticlesCompanion copyWith(
      {Value<String>? id,
      Value<String>? title,
      Value<String>? slug,
      Value<String?>? authorName,
      Value<DateTime>? publishDate,
      Value<String?>? imageUrl,
      Value<String>? contentHtml,
      Value<String?>? excerpt,
      Value<int?>? readTimeMinutes,
      Value<String>? categoryIds,
      Value<String>? tagIds,
      Value<DateTime>? cachedAt,
      Value<String?>? etag,
      Value<DateTime?>? lastModified,
      Value<int>? rowid}) {
    return ArticlesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      slug: slug ?? this.slug,
      authorName: authorName ?? this.authorName,
      publishDate: publishDate ?? this.publishDate,
      imageUrl: imageUrl ?? this.imageUrl,
      contentHtml: contentHtml ?? this.contentHtml,
      excerpt: excerpt ?? this.excerpt,
      readTimeMinutes: readTimeMinutes ?? this.readTimeMinutes,
      categoryIds: categoryIds ?? this.categoryIds,
      tagIds: tagIds ?? this.tagIds,
      cachedAt: cachedAt ?? this.cachedAt,
      etag: etag ?? this.etag,
      lastModified: lastModified ?? this.lastModified,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (slug.present) {
      map['slug'] = Variable<String>(slug.value);
    }
    if (authorName.present) {
      map['author_name'] = Variable<String>(authorName.value);
    }
    if (publishDate.present) {
      map['publish_date'] = Variable<DateTime>(publishDate.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (contentHtml.present) {
      map['content_html'] = Variable<String>(contentHtml.value);
    }
    if (excerpt.present) {
      map['excerpt'] = Variable<String>(excerpt.value);
    }
    if (readTimeMinutes.present) {
      map['read_time_minutes'] = Variable<int>(readTimeMinutes.value);
    }
    if (categoryIds.present) {
      map['category_ids'] = Variable<String>(categoryIds.value);
    }
    if (tagIds.present) {
      map['tag_ids'] = Variable<String>(tagIds.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    if (etag.present) {
      map['etag'] = Variable<String>(etag.value);
    }
    if (lastModified.present) {
      map['last_modified'] = Variable<DateTime>(lastModified.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticlesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('slug: $slug, ')
          ..write('authorName: $authorName, ')
          ..write('publishDate: $publishDate, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('contentHtml: $contentHtml, ')
          ..write('excerpt: $excerpt, ')
          ..write('readTimeMinutes: $readTimeMinutes, ')
          ..write('categoryIds: $categoryIds, ')
          ..write('tagIds: $tagIds, ')
          ..write('cachedAt: $cachedAt, ')
          ..write('etag: $etag, ')
          ..write('lastModified: $lastModified, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _slugMeta = const VerificationMeta('slug');
  @override
  late final GeneratedColumn<String> slug = GeneratedColumn<String>(
      'slug', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _parentCategoryIdMeta =
      const VerificationMeta('parentCategoryId');
  @override
  late final GeneratedColumn<String> parentCategoryId = GeneratedColumn<String>(
      'parent_category_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cachedAtMeta =
      const VerificationMeta('cachedAt');
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
      'cached_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, slug, parentCategoryId, cachedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories';
  @override
  VerificationContext validateIntegrity(Insertable<Category> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('slug')) {
      context.handle(
          _slugMeta, slug.isAcceptableOrUnknown(data['slug']!, _slugMeta));
    } else if (isInserting) {
      context.missing(_slugMeta);
    }
    if (data.containsKey('parent_category_id')) {
      context.handle(
          _parentCategoryIdMeta,
          parentCategoryId.isAcceptableOrUnknown(
              data['parent_category_id']!, _parentCategoryIdMeta));
    }
    if (data.containsKey('cached_at')) {
      context.handle(_cachedAtMeta,
          cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta));
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Category(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      slug: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}slug'])!,
      parentCategoryId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}parent_category_id']),
      cachedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}cached_at'])!,
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final String id;
  final String name;
  final String slug;
  final String? parentCategoryId;
  final DateTime cachedAt;
  const Category(
      {required this.id,
      required this.name,
      required this.slug,
      this.parentCategoryId,
      required this.cachedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['slug'] = Variable<String>(slug);
    if (!nullToAbsent || parentCategoryId != null) {
      map['parent_category_id'] = Variable<String>(parentCategoryId);
    }
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: Value(id),
      name: Value(name),
      slug: Value(slug),
      parentCategoryId: parentCategoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentCategoryId),
      cachedAt: Value(cachedAt),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      slug: serializer.fromJson<String>(json['slug']),
      parentCategoryId: serializer.fromJson<String?>(json['parentCategoryId']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'slug': serializer.toJson<String>(slug),
      'parentCategoryId': serializer.toJson<String?>(parentCategoryId),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  Category copyWith(
          {String? id,
          String? name,
          String? slug,
          Value<String?> parentCategoryId = const Value.absent(),
          DateTime? cachedAt}) =>
      Category(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
        parentCategoryId: parentCategoryId.present
            ? parentCategoryId.value
            : this.parentCategoryId,
        cachedAt: cachedAt ?? this.cachedAt,
      );
  Category copyWithCompanion(CategoriesCompanion data) {
    return Category(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      slug: data.slug.present ? data.slug.value : this.slug,
      parentCategoryId: data.parentCategoryId.present
          ? data.parentCategoryId.value
          : this.parentCategoryId,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('slug: $slug, ')
          ..write('parentCategoryId: $parentCategoryId, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, slug, parentCategoryId, cachedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.name == this.name &&
          other.slug == this.slug &&
          other.parentCategoryId == this.parentCategoryId &&
          other.cachedAt == this.cachedAt);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> slug;
  final Value<String?> parentCategoryId;
  final Value<DateTime> cachedAt;
  final Value<int> rowid;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.slug = const Value.absent(),
    this.parentCategoryId = const Value.absent(),
    this.cachedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CategoriesCompanion.insert({
    required String id,
    required String name,
    required String slug,
    this.parentCategoryId = const Value.absent(),
    required DateTime cachedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        slug = Value(slug),
        cachedAt = Value(cachedAt);
  static Insertable<Category> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? slug,
    Expression<String>? parentCategoryId,
    Expression<DateTime>? cachedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (slug != null) 'slug': slug,
      if (parentCategoryId != null) 'parent_category_id': parentCategoryId,
      if (cachedAt != null) 'cached_at': cachedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CategoriesCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? slug,
      Value<String?>? parentCategoryId,
      Value<DateTime>? cachedAt,
      Value<int>? rowid}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      parentCategoryId: parentCategoryId ?? this.parentCategoryId,
      cachedAt: cachedAt ?? this.cachedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (slug.present) {
      map['slug'] = Variable<String>(slug.value);
    }
    if (parentCategoryId.present) {
      map['parent_category_id'] = Variable<String>(parentCategoryId.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('slug: $slug, ')
          ..write('parentCategoryId: $parentCategoryId, ')
          ..write('cachedAt: $cachedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TagsTable extends Tags with TableInfo<$TagsTable, Tag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TagsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _slugMeta = const VerificationMeta('slug');
  @override
  late final GeneratedColumn<String> slug = GeneratedColumn<String>(
      'slug', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cachedAtMeta =
      const VerificationMeta('cachedAt');
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
      'cached_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, slug, cachedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tags';
  @override
  VerificationContext validateIntegrity(Insertable<Tag> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('slug')) {
      context.handle(
          _slugMeta, slug.isAcceptableOrUnknown(data['slug']!, _slugMeta));
    } else if (isInserting) {
      context.missing(_slugMeta);
    }
    if (data.containsKey('cached_at')) {
      context.handle(_cachedAtMeta,
          cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta));
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Tag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Tag(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      slug: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}slug'])!,
      cachedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}cached_at'])!,
    );
  }

  @override
  $TagsTable createAlias(String alias) {
    return $TagsTable(attachedDatabase, alias);
  }
}

class Tag extends DataClass implements Insertable<Tag> {
  final String id;
  final String name;
  final String slug;
  final DateTime cachedAt;
  const Tag(
      {required this.id,
      required this.name,
      required this.slug,
      required this.cachedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['slug'] = Variable<String>(slug);
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  TagsCompanion toCompanion(bool nullToAbsent) {
    return TagsCompanion(
      id: Value(id),
      name: Value(name),
      slug: Value(slug),
      cachedAt: Value(cachedAt),
    );
  }

  factory Tag.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Tag(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      slug: serializer.fromJson<String>(json['slug']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'slug': serializer.toJson<String>(slug),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  Tag copyWith({String? id, String? name, String? slug, DateTime? cachedAt}) =>
      Tag(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
        cachedAt: cachedAt ?? this.cachedAt,
      );
  Tag copyWithCompanion(TagsCompanion data) {
    return Tag(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      slug: data.slug.present ? data.slug.value : this.slug,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Tag(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('slug: $slug, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, slug, cachedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tag &&
          other.id == this.id &&
          other.name == this.name &&
          other.slug == this.slug &&
          other.cachedAt == this.cachedAt);
}

class TagsCompanion extends UpdateCompanion<Tag> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> slug;
  final Value<DateTime> cachedAt;
  final Value<int> rowid;
  const TagsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.slug = const Value.absent(),
    this.cachedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TagsCompanion.insert({
    required String id,
    required String name,
    required String slug,
    required DateTime cachedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        slug = Value(slug),
        cachedAt = Value(cachedAt);
  static Insertable<Tag> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? slug,
    Expression<DateTime>? cachedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (slug != null) 'slug': slug,
      if (cachedAt != null) 'cached_at': cachedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TagsCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? slug,
      Value<DateTime>? cachedAt,
      Value<int>? rowid}) {
    return TagsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      cachedAt: cachedAt ?? this.cachedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (slug.present) {
      map['slug'] = Variable<String>(slug.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('slug: $slug, ')
          ..write('cachedAt: $cachedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserSessionsTable extends UserSessions
    with TableInfo<$UserSessionsTable, UserSession> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserSessionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _backendUserIdMeta =
      const VerificationMeta('backendUserId');
  @override
  late final GeneratedColumn<String> backendUserId = GeneratedColumn<String>(
      'backend_user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _avatarUrlMeta =
      const VerificationMeta('avatarUrl');
  @override
  late final GeneratedColumn<String> avatarUrl = GeneratedColumn<String>(
      'avatar_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isLoggedInMeta =
      const VerificationMeta('isLoggedIn');
  @override
  late final GeneratedColumn<bool> isLoggedIn = GeneratedColumn<bool>(
      'is_logged_in', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_logged_in" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _lastLoginAtMeta =
      const VerificationMeta('lastLoginAt');
  @override
  late final GeneratedColumn<DateTime> lastLoginAt = GeneratedColumn<DateTime>(
      'last_login_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _sessionTokenExpiryMeta =
      const VerificationMeta('sessionTokenExpiry');
  @override
  late final GeneratedColumn<DateTime> sessionTokenExpiry =
      GeneratedColumn<DateTime>('session_token_expiry', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _refreshTokenExpiryMeta =
      const VerificationMeta('refreshTokenExpiry');
  @override
  late final GeneratedColumn<DateTime> refreshTokenExpiry =
      GeneratedColumn<DateTime>('refresh_token_expiry', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        backendUserId,
        email,
        displayName,
        avatarUrl,
        isLoggedIn,
        lastLoginAt,
        sessionTokenExpiry,
        refreshTokenExpiry
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_sessions';
  @override
  VerificationContext validateIntegrity(Insertable<UserSession> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('backend_user_id')) {
      context.handle(
          _backendUserIdMeta,
          backendUserId.isAcceptableOrUnknown(
              data['backend_user_id']!, _backendUserIdMeta));
    } else if (isInserting) {
      context.missing(_backendUserIdMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    } else if (isInserting) {
      context.missing(_displayNameMeta);
    }
    if (data.containsKey('avatar_url')) {
      context.handle(_avatarUrlMeta,
          avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta));
    }
    if (data.containsKey('is_logged_in')) {
      context.handle(
          _isLoggedInMeta,
          isLoggedIn.isAcceptableOrUnknown(
              data['is_logged_in']!, _isLoggedInMeta));
    }
    if (data.containsKey('last_login_at')) {
      context.handle(
          _lastLoginAtMeta,
          lastLoginAt.isAcceptableOrUnknown(
              data['last_login_at']!, _lastLoginAtMeta));
    }
    if (data.containsKey('session_token_expiry')) {
      context.handle(
          _sessionTokenExpiryMeta,
          sessionTokenExpiry.isAcceptableOrUnknown(
              data['session_token_expiry']!, _sessionTokenExpiryMeta));
    }
    if (data.containsKey('refresh_token_expiry')) {
      context.handle(
          _refreshTokenExpiryMeta,
          refreshTokenExpiry.isAcceptableOrUnknown(
              data['refresh_token_expiry']!, _refreshTokenExpiryMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserSession map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserSession(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      backendUserId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}backend_user_id'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name'])!,
      avatarUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}avatar_url']),
      isLoggedIn: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_logged_in'])!,
      lastLoginAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_login_at']),
      sessionTokenExpiry: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}session_token_expiry']),
      refreshTokenExpiry: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}refresh_token_expiry']),
    );
  }

  @override
  $UserSessionsTable createAlias(String alias) {
    return $UserSessionsTable(attachedDatabase, alias);
  }
}

class UserSession extends DataClass implements Insertable<UserSession> {
  final String id;
  final String backendUserId;
  final String? email;
  final String displayName;
  final String? avatarUrl;
  final bool isLoggedIn;
  final DateTime? lastLoginAt;
  final DateTime? sessionTokenExpiry;
  final DateTime? refreshTokenExpiry;
  const UserSession(
      {required this.id,
      required this.backendUserId,
      this.email,
      required this.displayName,
      this.avatarUrl,
      required this.isLoggedIn,
      this.lastLoginAt,
      this.sessionTokenExpiry,
      this.refreshTokenExpiry});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['backend_user_id'] = Variable<String>(backendUserId);
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    map['display_name'] = Variable<String>(displayName);
    if (!nullToAbsent || avatarUrl != null) {
      map['avatar_url'] = Variable<String>(avatarUrl);
    }
    map['is_logged_in'] = Variable<bool>(isLoggedIn);
    if (!nullToAbsent || lastLoginAt != null) {
      map['last_login_at'] = Variable<DateTime>(lastLoginAt);
    }
    if (!nullToAbsent || sessionTokenExpiry != null) {
      map['session_token_expiry'] = Variable<DateTime>(sessionTokenExpiry);
    }
    if (!nullToAbsent || refreshTokenExpiry != null) {
      map['refresh_token_expiry'] = Variable<DateTime>(refreshTokenExpiry);
    }
    return map;
  }

  UserSessionsCompanion toCompanion(bool nullToAbsent) {
    return UserSessionsCompanion(
      id: Value(id),
      backendUserId: Value(backendUserId),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      displayName: Value(displayName),
      avatarUrl: avatarUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarUrl),
      isLoggedIn: Value(isLoggedIn),
      lastLoginAt: lastLoginAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastLoginAt),
      sessionTokenExpiry: sessionTokenExpiry == null && nullToAbsent
          ? const Value.absent()
          : Value(sessionTokenExpiry),
      refreshTokenExpiry: refreshTokenExpiry == null && nullToAbsent
          ? const Value.absent()
          : Value(refreshTokenExpiry),
    );
  }

  factory UserSession.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserSession(
      id: serializer.fromJson<String>(json['id']),
      backendUserId: serializer.fromJson<String>(json['backendUserId']),
      email: serializer.fromJson<String?>(json['email']),
      displayName: serializer.fromJson<String>(json['displayName']),
      avatarUrl: serializer.fromJson<String?>(json['avatarUrl']),
      isLoggedIn: serializer.fromJson<bool>(json['isLoggedIn']),
      lastLoginAt: serializer.fromJson<DateTime?>(json['lastLoginAt']),
      sessionTokenExpiry:
          serializer.fromJson<DateTime?>(json['sessionTokenExpiry']),
      refreshTokenExpiry:
          serializer.fromJson<DateTime?>(json['refreshTokenExpiry']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'backendUserId': serializer.toJson<String>(backendUserId),
      'email': serializer.toJson<String?>(email),
      'displayName': serializer.toJson<String>(displayName),
      'avatarUrl': serializer.toJson<String?>(avatarUrl),
      'isLoggedIn': serializer.toJson<bool>(isLoggedIn),
      'lastLoginAt': serializer.toJson<DateTime?>(lastLoginAt),
      'sessionTokenExpiry': serializer.toJson<DateTime?>(sessionTokenExpiry),
      'refreshTokenExpiry': serializer.toJson<DateTime?>(refreshTokenExpiry),
    };
  }

  UserSession copyWith(
          {String? id,
          String? backendUserId,
          Value<String?> email = const Value.absent(),
          String? displayName,
          Value<String?> avatarUrl = const Value.absent(),
          bool? isLoggedIn,
          Value<DateTime?> lastLoginAt = const Value.absent(),
          Value<DateTime?> sessionTokenExpiry = const Value.absent(),
          Value<DateTime?> refreshTokenExpiry = const Value.absent()}) =>
      UserSession(
        id: id ?? this.id,
        backendUserId: backendUserId ?? this.backendUserId,
        email: email.present ? email.value : this.email,
        displayName: displayName ?? this.displayName,
        avatarUrl: avatarUrl.present ? avatarUrl.value : this.avatarUrl,
        isLoggedIn: isLoggedIn ?? this.isLoggedIn,
        lastLoginAt: lastLoginAt.present ? lastLoginAt.value : this.lastLoginAt,
        sessionTokenExpiry: sessionTokenExpiry.present
            ? sessionTokenExpiry.value
            : this.sessionTokenExpiry,
        refreshTokenExpiry: refreshTokenExpiry.present
            ? refreshTokenExpiry.value
            : this.refreshTokenExpiry,
      );
  UserSession copyWithCompanion(UserSessionsCompanion data) {
    return UserSession(
      id: data.id.present ? data.id.value : this.id,
      backendUserId: data.backendUserId.present
          ? data.backendUserId.value
          : this.backendUserId,
      email: data.email.present ? data.email.value : this.email,
      displayName:
          data.displayName.present ? data.displayName.value : this.displayName,
      avatarUrl: data.avatarUrl.present ? data.avatarUrl.value : this.avatarUrl,
      isLoggedIn:
          data.isLoggedIn.present ? data.isLoggedIn.value : this.isLoggedIn,
      lastLoginAt:
          data.lastLoginAt.present ? data.lastLoginAt.value : this.lastLoginAt,
      sessionTokenExpiry: data.sessionTokenExpiry.present
          ? data.sessionTokenExpiry.value
          : this.sessionTokenExpiry,
      refreshTokenExpiry: data.refreshTokenExpiry.present
          ? data.refreshTokenExpiry.value
          : this.refreshTokenExpiry,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserSession(')
          ..write('id: $id, ')
          ..write('backendUserId: $backendUserId, ')
          ..write('email: $email, ')
          ..write('displayName: $displayName, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('isLoggedIn: $isLoggedIn, ')
          ..write('lastLoginAt: $lastLoginAt, ')
          ..write('sessionTokenExpiry: $sessionTokenExpiry, ')
          ..write('refreshTokenExpiry: $refreshTokenExpiry')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      backendUserId,
      email,
      displayName,
      avatarUrl,
      isLoggedIn,
      lastLoginAt,
      sessionTokenExpiry,
      refreshTokenExpiry);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserSession &&
          other.id == this.id &&
          other.backendUserId == this.backendUserId &&
          other.email == this.email &&
          other.displayName == this.displayName &&
          other.avatarUrl == this.avatarUrl &&
          other.isLoggedIn == this.isLoggedIn &&
          other.lastLoginAt == this.lastLoginAt &&
          other.sessionTokenExpiry == this.sessionTokenExpiry &&
          other.refreshTokenExpiry == this.refreshTokenExpiry);
}

class UserSessionsCompanion extends UpdateCompanion<UserSession> {
  final Value<String> id;
  final Value<String> backendUserId;
  final Value<String?> email;
  final Value<String> displayName;
  final Value<String?> avatarUrl;
  final Value<bool> isLoggedIn;
  final Value<DateTime?> lastLoginAt;
  final Value<DateTime?> sessionTokenExpiry;
  final Value<DateTime?> refreshTokenExpiry;
  final Value<int> rowid;
  const UserSessionsCompanion({
    this.id = const Value.absent(),
    this.backendUserId = const Value.absent(),
    this.email = const Value.absent(),
    this.displayName = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.isLoggedIn = const Value.absent(),
    this.lastLoginAt = const Value.absent(),
    this.sessionTokenExpiry = const Value.absent(),
    this.refreshTokenExpiry = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserSessionsCompanion.insert({
    required String id,
    required String backendUserId,
    this.email = const Value.absent(),
    required String displayName,
    this.avatarUrl = const Value.absent(),
    this.isLoggedIn = const Value.absent(),
    this.lastLoginAt = const Value.absent(),
    this.sessionTokenExpiry = const Value.absent(),
    this.refreshTokenExpiry = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        backendUserId = Value(backendUserId),
        displayName = Value(displayName);
  static Insertable<UserSession> custom({
    Expression<String>? id,
    Expression<String>? backendUserId,
    Expression<String>? email,
    Expression<String>? displayName,
    Expression<String>? avatarUrl,
    Expression<bool>? isLoggedIn,
    Expression<DateTime>? lastLoginAt,
    Expression<DateTime>? sessionTokenExpiry,
    Expression<DateTime>? refreshTokenExpiry,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (backendUserId != null) 'backend_user_id': backendUserId,
      if (email != null) 'email': email,
      if (displayName != null) 'display_name': displayName,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
      if (isLoggedIn != null) 'is_logged_in': isLoggedIn,
      if (lastLoginAt != null) 'last_login_at': lastLoginAt,
      if (sessionTokenExpiry != null)
        'session_token_expiry': sessionTokenExpiry,
      if (refreshTokenExpiry != null)
        'refresh_token_expiry': refreshTokenExpiry,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserSessionsCompanion copyWith(
      {Value<String>? id,
      Value<String>? backendUserId,
      Value<String?>? email,
      Value<String>? displayName,
      Value<String?>? avatarUrl,
      Value<bool>? isLoggedIn,
      Value<DateTime?>? lastLoginAt,
      Value<DateTime?>? sessionTokenExpiry,
      Value<DateTime?>? refreshTokenExpiry,
      Value<int>? rowid}) {
    return UserSessionsCompanion(
      id: id ?? this.id,
      backendUserId: backendUserId ?? this.backendUserId,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      lastLoginAt: lastLoginAt ?? this.lastLoginAt,
      sessionTokenExpiry: sessionTokenExpiry ?? this.sessionTokenExpiry,
      refreshTokenExpiry: refreshTokenExpiry ?? this.refreshTokenExpiry,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (backendUserId.present) {
      map['backend_user_id'] = Variable<String>(backendUserId.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String>(avatarUrl.value);
    }
    if (isLoggedIn.present) {
      map['is_logged_in'] = Variable<bool>(isLoggedIn.value);
    }
    if (lastLoginAt.present) {
      map['last_login_at'] = Variable<DateTime>(lastLoginAt.value);
    }
    if (sessionTokenExpiry.present) {
      map['session_token_expiry'] =
          Variable<DateTime>(sessionTokenExpiry.value);
    }
    if (refreshTokenExpiry.present) {
      map['refresh_token_expiry'] =
          Variable<DateTime>(refreshTokenExpiry.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserSessionsCompanion(')
          ..write('id: $id, ')
          ..write('backendUserId: $backendUserId, ')
          ..write('email: $email, ')
          ..write('displayName: $displayName, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('isLoggedIn: $isLoggedIn, ')
          ..write('lastLoginAt: $lastLoginAt, ')
          ..write('sessionTokenExpiry: $sessionTokenExpiry, ')
          ..write('refreshTokenExpiry: $refreshTokenExpiry, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FavoritesTable extends Favorites
    with TableInfo<$FavoritesTable, Favorite> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoritesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _targetTypeMeta =
      const VerificationMeta('targetType');
  @override
  late final GeneratedColumn<String> targetType = GeneratedColumn<String>(
      'target_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _targetIdMeta =
      const VerificationMeta('targetId');
  @override
  late final GeneratedColumn<String> targetId = GeneratedColumn<String>(
      'target_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _favoritedAtMeta =
      const VerificationMeta('favoritedAt');
  @override
  late final GeneratedColumn<DateTime> favoritedAt = GeneratedColumn<DateTime>(
      'favorited_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, targetType, targetId, favoritedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorites';
  @override
  VerificationContext validateIntegrity(Insertable<Favorite> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('target_type')) {
      context.handle(
          _targetTypeMeta,
          targetType.isAcceptableOrUnknown(
              data['target_type']!, _targetTypeMeta));
    } else if (isInserting) {
      context.missing(_targetTypeMeta);
    }
    if (data.containsKey('target_id')) {
      context.handle(_targetIdMeta,
          targetId.isAcceptableOrUnknown(data['target_id']!, _targetIdMeta));
    } else if (isInserting) {
      context.missing(_targetIdMeta);
    }
    if (data.containsKey('favorited_at')) {
      context.handle(
          _favoritedAtMeta,
          favoritedAt.isAcceptableOrUnknown(
              data['favorited_at']!, _favoritedAtMeta));
    } else if (isInserting) {
      context.missing(_favoritedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Favorite map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Favorite(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      targetType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}target_type'])!,
      targetId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}target_id'])!,
      favoritedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}favorited_at'])!,
    );
  }

  @override
  $FavoritesTable createAlias(String alias) {
    return $FavoritesTable(attachedDatabase, alias);
  }
}

class Favorite extends DataClass implements Insertable<Favorite> {
  final String id;
  final String userId;
  final String targetType;
  final String targetId;
  final DateTime favoritedAt;
  const Favorite(
      {required this.id,
      required this.userId,
      required this.targetType,
      required this.targetId,
      required this.favoritedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['target_type'] = Variable<String>(targetType);
    map['target_id'] = Variable<String>(targetId);
    map['favorited_at'] = Variable<DateTime>(favoritedAt);
    return map;
  }

  FavoritesCompanion toCompanion(bool nullToAbsent) {
    return FavoritesCompanion(
      id: Value(id),
      userId: Value(userId),
      targetType: Value(targetType),
      targetId: Value(targetId),
      favoritedAt: Value(favoritedAt),
    );
  }

  factory Favorite.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Favorite(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      targetType: serializer.fromJson<String>(json['targetType']),
      targetId: serializer.fromJson<String>(json['targetId']),
      favoritedAt: serializer.fromJson<DateTime>(json['favoritedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'targetType': serializer.toJson<String>(targetType),
      'targetId': serializer.toJson<String>(targetId),
      'favoritedAt': serializer.toJson<DateTime>(favoritedAt),
    };
  }

  Favorite copyWith(
          {String? id,
          String? userId,
          String? targetType,
          String? targetId,
          DateTime? favoritedAt}) =>
      Favorite(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        targetType: targetType ?? this.targetType,
        targetId: targetId ?? this.targetId,
        favoritedAt: favoritedAt ?? this.favoritedAt,
      );
  Favorite copyWithCompanion(FavoritesCompanion data) {
    return Favorite(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      targetType:
          data.targetType.present ? data.targetType.value : this.targetType,
      targetId: data.targetId.present ? data.targetId.value : this.targetId,
      favoritedAt:
          data.favoritedAt.present ? data.favoritedAt.value : this.favoritedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Favorite(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('targetType: $targetType, ')
          ..write('targetId: $targetId, ')
          ..write('favoritedAt: $favoritedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, userId, targetType, targetId, favoritedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Favorite &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.targetType == this.targetType &&
          other.targetId == this.targetId &&
          other.favoritedAt == this.favoritedAt);
}

class FavoritesCompanion extends UpdateCompanion<Favorite> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> targetType;
  final Value<String> targetId;
  final Value<DateTime> favoritedAt;
  final Value<int> rowid;
  const FavoritesCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.targetType = const Value.absent(),
    this.targetId = const Value.absent(),
    this.favoritedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FavoritesCompanion.insert({
    required String id,
    required String userId,
    required String targetType,
    required String targetId,
    required DateTime favoritedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        targetType = Value(targetType),
        targetId = Value(targetId),
        favoritedAt = Value(favoritedAt);
  static Insertable<Favorite> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? targetType,
    Expression<String>? targetId,
    Expression<DateTime>? favoritedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (targetType != null) 'target_type': targetType,
      if (targetId != null) 'target_id': targetId,
      if (favoritedAt != null) 'favorited_at': favoritedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FavoritesCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<String>? targetType,
      Value<String>? targetId,
      Value<DateTime>? favoritedAt,
      Value<int>? rowid}) {
    return FavoritesCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      targetType: targetType ?? this.targetType,
      targetId: targetId ?? this.targetId,
      favoritedAt: favoritedAt ?? this.favoritedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (targetType.present) {
      map['target_type'] = Variable<String>(targetType.value);
    }
    if (targetId.present) {
      map['target_id'] = Variable<String>(targetId.value);
    }
    if (favoritedAt.present) {
      map['favorited_at'] = Variable<DateTime>(favoritedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoritesCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('targetType: $targetType, ')
          ..write('targetId: $targetId, ')
          ..write('favoritedAt: $favoritedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DraftsTable extends Drafts with TableInfo<$DraftsTable, Draft> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DraftsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _targetForumIdMeta =
      const VerificationMeta('targetForumId');
  @override
  late final GeneratedColumn<String> targetForumId = GeneratedColumn<String>(
      'target_forum_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _targetTopicIdMeta =
      const VerificationMeta('targetTopicId');
  @override
  late final GeneratedColumn<String> targetTopicId = GeneratedColumn<String>(
      'target_topic_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _contentHtmlMeta =
      const VerificationMeta('contentHtml');
  @override
  late final GeneratedColumn<Uint8List> contentHtml =
      GeneratedColumn<Uint8List>('content_html', aliasedName, false,
          type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _lastSavedAtMeta =
      const VerificationMeta('lastSavedAt');
  @override
  late final GeneratedColumn<DateTime> lastSavedAt = GeneratedColumn<DateTime>(
      'last_saved_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('draft'));
  static const VerificationMeta _errorMessageMeta =
      const VerificationMeta('errorMessage');
  @override
  late final GeneratedColumn<String> errorMessage = GeneratedColumn<String>(
      'error_message', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        type,
        targetForumId,
        targetTopicId,
        title,
        contentHtml,
        createdAt,
        lastSavedAt,
        status,
        errorMessage
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drafts';
  @override
  VerificationContext validateIntegrity(Insertable<Draft> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('target_forum_id')) {
      context.handle(
          _targetForumIdMeta,
          targetForumId.isAcceptableOrUnknown(
              data['target_forum_id']!, _targetForumIdMeta));
    }
    if (data.containsKey('target_topic_id')) {
      context.handle(
          _targetTopicIdMeta,
          targetTopicId.isAcceptableOrUnknown(
              data['target_topic_id']!, _targetTopicIdMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('content_html')) {
      context.handle(
          _contentHtmlMeta,
          contentHtml.isAcceptableOrUnknown(
              data['content_html']!, _contentHtmlMeta));
    } else if (isInserting) {
      context.missing(_contentHtmlMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('last_saved_at')) {
      context.handle(
          _lastSavedAtMeta,
          lastSavedAt.isAcceptableOrUnknown(
              data['last_saved_at']!, _lastSavedAtMeta));
    } else if (isInserting) {
      context.missing(_lastSavedAtMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('error_message')) {
      context.handle(
          _errorMessageMeta,
          errorMessage.isAcceptableOrUnknown(
              data['error_message']!, _errorMessageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Draft map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Draft(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      targetForumId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}target_forum_id']),
      targetTopicId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}target_topic_id']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      contentHtml: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}content_html'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      lastSavedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_saved_at'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      errorMessage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}error_message']),
    );
  }

  @override
  $DraftsTable createAlias(String alias) {
    return $DraftsTable(attachedDatabase, alias);
  }
}

class Draft extends DataClass implements Insertable<Draft> {
  final String id;
  final String userId;
  final String type;
  final String? targetForumId;
  final String? targetTopicId;
  final String? title;
  final Uint8List contentHtml;
  final DateTime createdAt;
  final DateTime lastSavedAt;
  final String status;
  final String? errorMessage;
  const Draft(
      {required this.id,
      required this.userId,
      required this.type,
      this.targetForumId,
      this.targetTopicId,
      this.title,
      required this.contentHtml,
      required this.createdAt,
      required this.lastSavedAt,
      required this.status,
      this.errorMessage});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['type'] = Variable<String>(type);
    if (!nullToAbsent || targetForumId != null) {
      map['target_forum_id'] = Variable<String>(targetForumId);
    }
    if (!nullToAbsent || targetTopicId != null) {
      map['target_topic_id'] = Variable<String>(targetTopicId);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    map['content_html'] = Variable<Uint8List>(contentHtml);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['last_saved_at'] = Variable<DateTime>(lastSavedAt);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || errorMessage != null) {
      map['error_message'] = Variable<String>(errorMessage);
    }
    return map;
  }

  DraftsCompanion toCompanion(bool nullToAbsent) {
    return DraftsCompanion(
      id: Value(id),
      userId: Value(userId),
      type: Value(type),
      targetForumId: targetForumId == null && nullToAbsent
          ? const Value.absent()
          : Value(targetForumId),
      targetTopicId: targetTopicId == null && nullToAbsent
          ? const Value.absent()
          : Value(targetTopicId),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      contentHtml: Value(contentHtml),
      createdAt: Value(createdAt),
      lastSavedAt: Value(lastSavedAt),
      status: Value(status),
      errorMessage: errorMessage == null && nullToAbsent
          ? const Value.absent()
          : Value(errorMessage),
    );
  }

  factory Draft.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Draft(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      type: serializer.fromJson<String>(json['type']),
      targetForumId: serializer.fromJson<String?>(json['targetForumId']),
      targetTopicId: serializer.fromJson<String?>(json['targetTopicId']),
      title: serializer.fromJson<String?>(json['title']),
      contentHtml: serializer.fromJson<Uint8List>(json['contentHtml']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      lastSavedAt: serializer.fromJson<DateTime>(json['lastSavedAt']),
      status: serializer.fromJson<String>(json['status']),
      errorMessage: serializer.fromJson<String?>(json['errorMessage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'type': serializer.toJson<String>(type),
      'targetForumId': serializer.toJson<String?>(targetForumId),
      'targetTopicId': serializer.toJson<String?>(targetTopicId),
      'title': serializer.toJson<String?>(title),
      'contentHtml': serializer.toJson<Uint8List>(contentHtml),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'lastSavedAt': serializer.toJson<DateTime>(lastSavedAt),
      'status': serializer.toJson<String>(status),
      'errorMessage': serializer.toJson<String?>(errorMessage),
    };
  }

  Draft copyWith(
          {String? id,
          String? userId,
          String? type,
          Value<String?> targetForumId = const Value.absent(),
          Value<String?> targetTopicId = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Uint8List? contentHtml,
          DateTime? createdAt,
          DateTime? lastSavedAt,
          String? status,
          Value<String?> errorMessage = const Value.absent()}) =>
      Draft(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        type: type ?? this.type,
        targetForumId:
            targetForumId.present ? targetForumId.value : this.targetForumId,
        targetTopicId:
            targetTopicId.present ? targetTopicId.value : this.targetTopicId,
        title: title.present ? title.value : this.title,
        contentHtml: contentHtml ?? this.contentHtml,
        createdAt: createdAt ?? this.createdAt,
        lastSavedAt: lastSavedAt ?? this.lastSavedAt,
        status: status ?? this.status,
        errorMessage:
            errorMessage.present ? errorMessage.value : this.errorMessage,
      );
  Draft copyWithCompanion(DraftsCompanion data) {
    return Draft(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      type: data.type.present ? data.type.value : this.type,
      targetForumId: data.targetForumId.present
          ? data.targetForumId.value
          : this.targetForumId,
      targetTopicId: data.targetTopicId.present
          ? data.targetTopicId.value
          : this.targetTopicId,
      title: data.title.present ? data.title.value : this.title,
      contentHtml:
          data.contentHtml.present ? data.contentHtml.value : this.contentHtml,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      lastSavedAt:
          data.lastSavedAt.present ? data.lastSavedAt.value : this.lastSavedAt,
      status: data.status.present ? data.status.value : this.status,
      errorMessage: data.errorMessage.present
          ? data.errorMessage.value
          : this.errorMessage,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Draft(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('type: $type, ')
          ..write('targetForumId: $targetForumId, ')
          ..write('targetTopicId: $targetTopicId, ')
          ..write('title: $title, ')
          ..write('contentHtml: $contentHtml, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastSavedAt: $lastSavedAt, ')
          ..write('status: $status, ')
          ..write('errorMessage: $errorMessage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      type,
      targetForumId,
      targetTopicId,
      title,
      $driftBlobEquality.hash(contentHtml),
      createdAt,
      lastSavedAt,
      status,
      errorMessage);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Draft &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.type == this.type &&
          other.targetForumId == this.targetForumId &&
          other.targetTopicId == this.targetTopicId &&
          other.title == this.title &&
          $driftBlobEquality.equals(other.contentHtml, this.contentHtml) &&
          other.createdAt == this.createdAt &&
          other.lastSavedAt == this.lastSavedAt &&
          other.status == this.status &&
          other.errorMessage == this.errorMessage);
}

class DraftsCompanion extends UpdateCompanion<Draft> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> type;
  final Value<String?> targetForumId;
  final Value<String?> targetTopicId;
  final Value<String?> title;
  final Value<Uint8List> contentHtml;
  final Value<DateTime> createdAt;
  final Value<DateTime> lastSavedAt;
  final Value<String> status;
  final Value<String?> errorMessage;
  final Value<int> rowid;
  const DraftsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.type = const Value.absent(),
    this.targetForumId = const Value.absent(),
    this.targetTopicId = const Value.absent(),
    this.title = const Value.absent(),
    this.contentHtml = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.lastSavedAt = const Value.absent(),
    this.status = const Value.absent(),
    this.errorMessage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DraftsCompanion.insert({
    required String id,
    required String userId,
    required String type,
    this.targetForumId = const Value.absent(),
    this.targetTopicId = const Value.absent(),
    this.title = const Value.absent(),
    required Uint8List contentHtml,
    required DateTime createdAt,
    required DateTime lastSavedAt,
    this.status = const Value.absent(),
    this.errorMessage = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        type = Value(type),
        contentHtml = Value(contentHtml),
        createdAt = Value(createdAt),
        lastSavedAt = Value(lastSavedAt);
  static Insertable<Draft> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? type,
    Expression<String>? targetForumId,
    Expression<String>? targetTopicId,
    Expression<String>? title,
    Expression<Uint8List>? contentHtml,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? lastSavedAt,
    Expression<String>? status,
    Expression<String>? errorMessage,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (type != null) 'type': type,
      if (targetForumId != null) 'target_forum_id': targetForumId,
      if (targetTopicId != null) 'target_topic_id': targetTopicId,
      if (title != null) 'title': title,
      if (contentHtml != null) 'content_html': contentHtml,
      if (createdAt != null) 'created_at': createdAt,
      if (lastSavedAt != null) 'last_saved_at': lastSavedAt,
      if (status != null) 'status': status,
      if (errorMessage != null) 'error_message': errorMessage,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DraftsCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<String>? type,
      Value<String?>? targetForumId,
      Value<String?>? targetTopicId,
      Value<String?>? title,
      Value<Uint8List>? contentHtml,
      Value<DateTime>? createdAt,
      Value<DateTime>? lastSavedAt,
      Value<String>? status,
      Value<String?>? errorMessage,
      Value<int>? rowid}) {
    return DraftsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      targetForumId: targetForumId ?? this.targetForumId,
      targetTopicId: targetTopicId ?? this.targetTopicId,
      title: title ?? this.title,
      contentHtml: contentHtml ?? this.contentHtml,
      createdAt: createdAt ?? this.createdAt,
      lastSavedAt: lastSavedAt ?? this.lastSavedAt,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (targetForumId.present) {
      map['target_forum_id'] = Variable<String>(targetForumId.value);
    }
    if (targetTopicId.present) {
      map['target_topic_id'] = Variable<String>(targetTopicId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (contentHtml.present) {
      map['content_html'] = Variable<Uint8List>(contentHtml.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (lastSavedAt.present) {
      map['last_saved_at'] = Variable<DateTime>(lastSavedAt.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (errorMessage.present) {
      map['error_message'] = Variable<String>(errorMessage.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DraftsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('type: $type, ')
          ..write('targetForumId: $targetForumId, ')
          ..write('targetTopicId: $targetTopicId, ')
          ..write('title: $title, ')
          ..write('contentHtml: $contentHtml, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastSavedAt: $lastSavedAt, ')
          ..write('status: $status, ')
          ..write('errorMessage: $errorMessage, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $QueuedActionsTable extends QueuedActions
    with TableInfo<$QueuedActionsTable, QueuedAction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QueuedActionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _actionTypeMeta =
      const VerificationMeta('actionType');
  @override
  late final GeneratedColumn<String> actionType = GeneratedColumn<String>(
      'action_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _targetTypeMeta =
      const VerificationMeta('targetType');
  @override
  late final GeneratedColumn<String> targetType = GeneratedColumn<String>(
      'target_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _targetIdMeta =
      const VerificationMeta('targetId');
  @override
  late final GeneratedColumn<String> targetId = GeneratedColumn<String>(
      'target_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _payloadMeta =
      const VerificationMeta('payload');
  @override
  late final GeneratedColumn<Uint8List> payload = GeneratedColumn<Uint8List>(
      'payload', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('pending'));
  static const VerificationMeta _retryCountMeta =
      const VerificationMeta('retryCount');
  @override
  late final GeneratedColumn<int> retryCount = GeneratedColumn<int>(
      'retry_count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastAttemptAtMeta =
      const VerificationMeta('lastAttemptAt');
  @override
  late final GeneratedColumn<DateTime> lastAttemptAt =
      GeneratedColumn<DateTime>('last_attempt_at', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _errorMessageMeta =
      const VerificationMeta('errorMessage');
  @override
  late final GeneratedColumn<String> errorMessage = GeneratedColumn<String>(
      'error_message', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        actionType,
        targetType,
        targetId,
        payload,
        createdAt,
        status,
        retryCount,
        lastAttemptAt,
        errorMessage
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'queued_actions';
  @override
  VerificationContext validateIntegrity(Insertable<QueuedAction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('action_type')) {
      context.handle(
          _actionTypeMeta,
          actionType.isAcceptableOrUnknown(
              data['action_type']!, _actionTypeMeta));
    } else if (isInserting) {
      context.missing(_actionTypeMeta);
    }
    if (data.containsKey('target_type')) {
      context.handle(
          _targetTypeMeta,
          targetType.isAcceptableOrUnknown(
              data['target_type']!, _targetTypeMeta));
    }
    if (data.containsKey('target_id')) {
      context.handle(_targetIdMeta,
          targetId.isAcceptableOrUnknown(data['target_id']!, _targetIdMeta));
    }
    if (data.containsKey('payload')) {
      context.handle(_payloadMeta,
          payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta));
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('retry_count')) {
      context.handle(
          _retryCountMeta,
          retryCount.isAcceptableOrUnknown(
              data['retry_count']!, _retryCountMeta));
    }
    if (data.containsKey('last_attempt_at')) {
      context.handle(
          _lastAttemptAtMeta,
          lastAttemptAt.isAcceptableOrUnknown(
              data['last_attempt_at']!, _lastAttemptAtMeta));
    }
    if (data.containsKey('error_message')) {
      context.handle(
          _errorMessageMeta,
          errorMessage.isAcceptableOrUnknown(
              data['error_message']!, _errorMessageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QueuedAction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QueuedAction(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      actionType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}action_type'])!,
      targetType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}target_type']),
      targetId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}target_id']),
      payload: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}payload'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      retryCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}retry_count'])!,
      lastAttemptAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_attempt_at']),
      errorMessage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}error_message']),
    );
  }

  @override
  $QueuedActionsTable createAlias(String alias) {
    return $QueuedActionsTable(attachedDatabase, alias);
  }
}

class QueuedAction extends DataClass implements Insertable<QueuedAction> {
  final String id;
  final String userId;
  final String actionType;
  final String? targetType;
  final String? targetId;
  final Uint8List payload;
  final DateTime createdAt;
  final String status;
  final int retryCount;
  final DateTime? lastAttemptAt;
  final String? errorMessage;
  const QueuedAction(
      {required this.id,
      required this.userId,
      required this.actionType,
      this.targetType,
      this.targetId,
      required this.payload,
      required this.createdAt,
      required this.status,
      required this.retryCount,
      this.lastAttemptAt,
      this.errorMessage});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['action_type'] = Variable<String>(actionType);
    if (!nullToAbsent || targetType != null) {
      map['target_type'] = Variable<String>(targetType);
    }
    if (!nullToAbsent || targetId != null) {
      map['target_id'] = Variable<String>(targetId);
    }
    map['payload'] = Variable<Uint8List>(payload);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['status'] = Variable<String>(status);
    map['retry_count'] = Variable<int>(retryCount);
    if (!nullToAbsent || lastAttemptAt != null) {
      map['last_attempt_at'] = Variable<DateTime>(lastAttemptAt);
    }
    if (!nullToAbsent || errorMessage != null) {
      map['error_message'] = Variable<String>(errorMessage);
    }
    return map;
  }

  QueuedActionsCompanion toCompanion(bool nullToAbsent) {
    return QueuedActionsCompanion(
      id: Value(id),
      userId: Value(userId),
      actionType: Value(actionType),
      targetType: targetType == null && nullToAbsent
          ? const Value.absent()
          : Value(targetType),
      targetId: targetId == null && nullToAbsent
          ? const Value.absent()
          : Value(targetId),
      payload: Value(payload),
      createdAt: Value(createdAt),
      status: Value(status),
      retryCount: Value(retryCount),
      lastAttemptAt: lastAttemptAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastAttemptAt),
      errorMessage: errorMessage == null && nullToAbsent
          ? const Value.absent()
          : Value(errorMessage),
    );
  }

  factory QueuedAction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QueuedAction(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      actionType: serializer.fromJson<String>(json['actionType']),
      targetType: serializer.fromJson<String?>(json['targetType']),
      targetId: serializer.fromJson<String?>(json['targetId']),
      payload: serializer.fromJson<Uint8List>(json['payload']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      status: serializer.fromJson<String>(json['status']),
      retryCount: serializer.fromJson<int>(json['retryCount']),
      lastAttemptAt: serializer.fromJson<DateTime?>(json['lastAttemptAt']),
      errorMessage: serializer.fromJson<String?>(json['errorMessage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'actionType': serializer.toJson<String>(actionType),
      'targetType': serializer.toJson<String?>(targetType),
      'targetId': serializer.toJson<String?>(targetId),
      'payload': serializer.toJson<Uint8List>(payload),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'status': serializer.toJson<String>(status),
      'retryCount': serializer.toJson<int>(retryCount),
      'lastAttemptAt': serializer.toJson<DateTime?>(lastAttemptAt),
      'errorMessage': serializer.toJson<String?>(errorMessage),
    };
  }

  QueuedAction copyWith(
          {String? id,
          String? userId,
          String? actionType,
          Value<String?> targetType = const Value.absent(),
          Value<String?> targetId = const Value.absent(),
          Uint8List? payload,
          DateTime? createdAt,
          String? status,
          int? retryCount,
          Value<DateTime?> lastAttemptAt = const Value.absent(),
          Value<String?> errorMessage = const Value.absent()}) =>
      QueuedAction(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        actionType: actionType ?? this.actionType,
        targetType: targetType.present ? targetType.value : this.targetType,
        targetId: targetId.present ? targetId.value : this.targetId,
        payload: payload ?? this.payload,
        createdAt: createdAt ?? this.createdAt,
        status: status ?? this.status,
        retryCount: retryCount ?? this.retryCount,
        lastAttemptAt:
            lastAttemptAt.present ? lastAttemptAt.value : this.lastAttemptAt,
        errorMessage:
            errorMessage.present ? errorMessage.value : this.errorMessage,
      );
  QueuedAction copyWithCompanion(QueuedActionsCompanion data) {
    return QueuedAction(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      actionType:
          data.actionType.present ? data.actionType.value : this.actionType,
      targetType:
          data.targetType.present ? data.targetType.value : this.targetType,
      targetId: data.targetId.present ? data.targetId.value : this.targetId,
      payload: data.payload.present ? data.payload.value : this.payload,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      status: data.status.present ? data.status.value : this.status,
      retryCount:
          data.retryCount.present ? data.retryCount.value : this.retryCount,
      lastAttemptAt: data.lastAttemptAt.present
          ? data.lastAttemptAt.value
          : this.lastAttemptAt,
      errorMessage: data.errorMessage.present
          ? data.errorMessage.value
          : this.errorMessage,
    );
  }

  @override
  String toString() {
    return (StringBuffer('QueuedAction(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('actionType: $actionType, ')
          ..write('targetType: $targetType, ')
          ..write('targetId: $targetId, ')
          ..write('payload: $payload, ')
          ..write('createdAt: $createdAt, ')
          ..write('status: $status, ')
          ..write('retryCount: $retryCount, ')
          ..write('lastAttemptAt: $lastAttemptAt, ')
          ..write('errorMessage: $errorMessage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      actionType,
      targetType,
      targetId,
      $driftBlobEquality.hash(payload),
      createdAt,
      status,
      retryCount,
      lastAttemptAt,
      errorMessage);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QueuedAction &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.actionType == this.actionType &&
          other.targetType == this.targetType &&
          other.targetId == this.targetId &&
          $driftBlobEquality.equals(other.payload, this.payload) &&
          other.createdAt == this.createdAt &&
          other.status == this.status &&
          other.retryCount == this.retryCount &&
          other.lastAttemptAt == this.lastAttemptAt &&
          other.errorMessage == this.errorMessage);
}

class QueuedActionsCompanion extends UpdateCompanion<QueuedAction> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> actionType;
  final Value<String?> targetType;
  final Value<String?> targetId;
  final Value<Uint8List> payload;
  final Value<DateTime> createdAt;
  final Value<String> status;
  final Value<int> retryCount;
  final Value<DateTime?> lastAttemptAt;
  final Value<String?> errorMessage;
  final Value<int> rowid;
  const QueuedActionsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.actionType = const Value.absent(),
    this.targetType = const Value.absent(),
    this.targetId = const Value.absent(),
    this.payload = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.status = const Value.absent(),
    this.retryCount = const Value.absent(),
    this.lastAttemptAt = const Value.absent(),
    this.errorMessage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  QueuedActionsCompanion.insert({
    required String id,
    required String userId,
    required String actionType,
    this.targetType = const Value.absent(),
    this.targetId = const Value.absent(),
    required Uint8List payload,
    required DateTime createdAt,
    this.status = const Value.absent(),
    this.retryCount = const Value.absent(),
    this.lastAttemptAt = const Value.absent(),
    this.errorMessage = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        actionType = Value(actionType),
        payload = Value(payload),
        createdAt = Value(createdAt);
  static Insertable<QueuedAction> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? actionType,
    Expression<String>? targetType,
    Expression<String>? targetId,
    Expression<Uint8List>? payload,
    Expression<DateTime>? createdAt,
    Expression<String>? status,
    Expression<int>? retryCount,
    Expression<DateTime>? lastAttemptAt,
    Expression<String>? errorMessage,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (actionType != null) 'action_type': actionType,
      if (targetType != null) 'target_type': targetType,
      if (targetId != null) 'target_id': targetId,
      if (payload != null) 'payload': payload,
      if (createdAt != null) 'created_at': createdAt,
      if (status != null) 'status': status,
      if (retryCount != null) 'retry_count': retryCount,
      if (lastAttemptAt != null) 'last_attempt_at': lastAttemptAt,
      if (errorMessage != null) 'error_message': errorMessage,
      if (rowid != null) 'rowid': rowid,
    });
  }

  QueuedActionsCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<String>? actionType,
      Value<String?>? targetType,
      Value<String?>? targetId,
      Value<Uint8List>? payload,
      Value<DateTime>? createdAt,
      Value<String>? status,
      Value<int>? retryCount,
      Value<DateTime?>? lastAttemptAt,
      Value<String?>? errorMessage,
      Value<int>? rowid}) {
    return QueuedActionsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      actionType: actionType ?? this.actionType,
      targetType: targetType ?? this.targetType,
      targetId: targetId ?? this.targetId,
      payload: payload ?? this.payload,
      createdAt: createdAt ?? this.createdAt,
      status: status ?? this.status,
      retryCount: retryCount ?? this.retryCount,
      lastAttemptAt: lastAttemptAt ?? this.lastAttemptAt,
      errorMessage: errorMessage ?? this.errorMessage,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (actionType.present) {
      map['action_type'] = Variable<String>(actionType.value);
    }
    if (targetType.present) {
      map['target_type'] = Variable<String>(targetType.value);
    }
    if (targetId.present) {
      map['target_id'] = Variable<String>(targetId.value);
    }
    if (payload.present) {
      map['payload'] = Variable<Uint8List>(payload.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (retryCount.present) {
      map['retry_count'] = Variable<int>(retryCount.value);
    }
    if (lastAttemptAt.present) {
      map['last_attempt_at'] = Variable<DateTime>(lastAttemptAt.value);
    }
    if (errorMessage.present) {
      map['error_message'] = Variable<String>(errorMessage.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QueuedActionsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('actionType: $actionType, ')
          ..write('targetType: $targetType, ')
          ..write('targetId: $targetId, ')
          ..write('payload: $payload, ')
          ..write('createdAt: $createdAt, ')
          ..write('status: $status, ')
          ..write('retryCount: $retryCount, ')
          ..write('lastAttemptAt: $lastAttemptAt, ')
          ..write('errorMessage: $errorMessage, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MenstrualCycleResultsTable extends MenstrualCycleResults
    with TableInfo<$MenstrualCycleResultsTable, MenstrualCycleResult> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MenstrualCycleResultsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lmpDateMeta =
      const VerificationMeta('lmpDate');
  @override
  late final GeneratedColumn<DateTime> lmpDate = GeneratedColumn<DateTime>(
      'lmp_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _avgCycleLengthDaysMeta =
      const VerificationMeta('avgCycleLengthDays');
  @override
  late final GeneratedColumn<int> avgCycleLengthDays = GeneratedColumn<int>(
      'avg_cycle_length_days', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _periodLengthDaysMeta =
      const VerificationMeta('periodLengthDays');
  @override
  late final GeneratedColumn<int> periodLengthDays = GeneratedColumn<int>(
      'period_length_days', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _variabilityDaysMeta =
      const VerificationMeta('variabilityDays');
  @override
  late final GeneratedColumn<int> variabilityDays = GeneratedColumn<int>(
      'variability_days', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _resultJsonMeta =
      const VerificationMeta('resultJson');
  @override
  late final GeneratedColumn<Uint8List> resultJson = GeneratedColumn<Uint8List>(
      'result_json', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _savedAtMeta =
      const VerificationMeta('savedAt');
  @override
  late final GeneratedColumn<DateTime> savedAt = GeneratedColumn<DateTime>(
      'saved_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _schemaVersionMeta =
      const VerificationMeta('schemaVersion');
  @override
  late final GeneratedColumn<int> schemaVersion = GeneratedColumn<int>(
      'schema_version', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        lmpDate,
        avgCycleLengthDays,
        periodLengthDays,
        variabilityDays,
        resultJson,
        savedAt,
        schemaVersion
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'menstrual_cycle_results';
  @override
  VerificationContext validateIntegrity(
      Insertable<MenstrualCycleResult> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('lmp_date')) {
      context.handle(_lmpDateMeta,
          lmpDate.isAcceptableOrUnknown(data['lmp_date']!, _lmpDateMeta));
    } else if (isInserting) {
      context.missing(_lmpDateMeta);
    }
    if (data.containsKey('avg_cycle_length_days')) {
      context.handle(
          _avgCycleLengthDaysMeta,
          avgCycleLengthDays.isAcceptableOrUnknown(
              data['avg_cycle_length_days']!, _avgCycleLengthDaysMeta));
    } else if (isInserting) {
      context.missing(_avgCycleLengthDaysMeta);
    }
    if (data.containsKey('period_length_days')) {
      context.handle(
          _periodLengthDaysMeta,
          periodLengthDays.isAcceptableOrUnknown(
              data['period_length_days']!, _periodLengthDaysMeta));
    }
    if (data.containsKey('variability_days')) {
      context.handle(
          _variabilityDaysMeta,
          variabilityDays.isAcceptableOrUnknown(
              data['variability_days']!, _variabilityDaysMeta));
    }
    if (data.containsKey('result_json')) {
      context.handle(
          _resultJsonMeta,
          resultJson.isAcceptableOrUnknown(
              data['result_json']!, _resultJsonMeta));
    } else if (isInserting) {
      context.missing(_resultJsonMeta);
    }
    if (data.containsKey('saved_at')) {
      context.handle(_savedAtMeta,
          savedAt.isAcceptableOrUnknown(data['saved_at']!, _savedAtMeta));
    } else if (isInserting) {
      context.missing(_savedAtMeta);
    }
    if (data.containsKey('schema_version')) {
      context.handle(
          _schemaVersionMeta,
          schemaVersion.isAcceptableOrUnknown(
              data['schema_version']!, _schemaVersionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MenstrualCycleResult map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MenstrualCycleResult(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      lmpDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}lmp_date'])!,
      avgCycleLengthDays: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}avg_cycle_length_days'])!,
      periodLengthDays: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}period_length_days']),
      variabilityDays: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}variability_days']),
      resultJson: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}result_json'])!,
      savedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}saved_at'])!,
      schemaVersion: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}schema_version'])!,
    );
  }

  @override
  $MenstrualCycleResultsTable createAlias(String alias) {
    return $MenstrualCycleResultsTable(attachedDatabase, alias);
  }
}

class MenstrualCycleResult extends DataClass
    implements Insertable<MenstrualCycleResult> {
  final String id;
  final String userId;
  final DateTime lmpDate;
  final int avgCycleLengthDays;
  final int? periodLengthDays;
  final int? variabilityDays;
  final Uint8List resultJson;
  final DateTime savedAt;
  final int schemaVersion;
  const MenstrualCycleResult(
      {required this.id,
      required this.userId,
      required this.lmpDate,
      required this.avgCycleLengthDays,
      this.periodLengthDays,
      this.variabilityDays,
      required this.resultJson,
      required this.savedAt,
      required this.schemaVersion});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['lmp_date'] = Variable<DateTime>(lmpDate);
    map['avg_cycle_length_days'] = Variable<int>(avgCycleLengthDays);
    if (!nullToAbsent || periodLengthDays != null) {
      map['period_length_days'] = Variable<int>(periodLengthDays);
    }
    if (!nullToAbsent || variabilityDays != null) {
      map['variability_days'] = Variable<int>(variabilityDays);
    }
    map['result_json'] = Variable<Uint8List>(resultJson);
    map['saved_at'] = Variable<DateTime>(savedAt);
    map['schema_version'] = Variable<int>(schemaVersion);
    return map;
  }

  MenstrualCycleResultsCompanion toCompanion(bool nullToAbsent) {
    return MenstrualCycleResultsCompanion(
      id: Value(id),
      userId: Value(userId),
      lmpDate: Value(lmpDate),
      avgCycleLengthDays: Value(avgCycleLengthDays),
      periodLengthDays: periodLengthDays == null && nullToAbsent
          ? const Value.absent()
          : Value(periodLengthDays),
      variabilityDays: variabilityDays == null && nullToAbsent
          ? const Value.absent()
          : Value(variabilityDays),
      resultJson: Value(resultJson),
      savedAt: Value(savedAt),
      schemaVersion: Value(schemaVersion),
    );
  }

  factory MenstrualCycleResult.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MenstrualCycleResult(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      lmpDate: serializer.fromJson<DateTime>(json['lmpDate']),
      avgCycleLengthDays: serializer.fromJson<int>(json['avgCycleLengthDays']),
      periodLengthDays: serializer.fromJson<int?>(json['periodLengthDays']),
      variabilityDays: serializer.fromJson<int?>(json['variabilityDays']),
      resultJson: serializer.fromJson<Uint8List>(json['resultJson']),
      savedAt: serializer.fromJson<DateTime>(json['savedAt']),
      schemaVersion: serializer.fromJson<int>(json['schemaVersion']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'lmpDate': serializer.toJson<DateTime>(lmpDate),
      'avgCycleLengthDays': serializer.toJson<int>(avgCycleLengthDays),
      'periodLengthDays': serializer.toJson<int?>(periodLengthDays),
      'variabilityDays': serializer.toJson<int?>(variabilityDays),
      'resultJson': serializer.toJson<Uint8List>(resultJson),
      'savedAt': serializer.toJson<DateTime>(savedAt),
      'schemaVersion': serializer.toJson<int>(schemaVersion),
    };
  }

  MenstrualCycleResult copyWith(
          {String? id,
          String? userId,
          DateTime? lmpDate,
          int? avgCycleLengthDays,
          Value<int?> periodLengthDays = const Value.absent(),
          Value<int?> variabilityDays = const Value.absent(),
          Uint8List? resultJson,
          DateTime? savedAt,
          int? schemaVersion}) =>
      MenstrualCycleResult(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        lmpDate: lmpDate ?? this.lmpDate,
        avgCycleLengthDays: avgCycleLengthDays ?? this.avgCycleLengthDays,
        periodLengthDays: periodLengthDays.present
            ? periodLengthDays.value
            : this.periodLengthDays,
        variabilityDays: variabilityDays.present
            ? variabilityDays.value
            : this.variabilityDays,
        resultJson: resultJson ?? this.resultJson,
        savedAt: savedAt ?? this.savedAt,
        schemaVersion: schemaVersion ?? this.schemaVersion,
      );
  MenstrualCycleResult copyWithCompanion(MenstrualCycleResultsCompanion data) {
    return MenstrualCycleResult(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      lmpDate: data.lmpDate.present ? data.lmpDate.value : this.lmpDate,
      avgCycleLengthDays: data.avgCycleLengthDays.present
          ? data.avgCycleLengthDays.value
          : this.avgCycleLengthDays,
      periodLengthDays: data.periodLengthDays.present
          ? data.periodLengthDays.value
          : this.periodLengthDays,
      variabilityDays: data.variabilityDays.present
          ? data.variabilityDays.value
          : this.variabilityDays,
      resultJson:
          data.resultJson.present ? data.resultJson.value : this.resultJson,
      savedAt: data.savedAt.present ? data.savedAt.value : this.savedAt,
      schemaVersion: data.schemaVersion.present
          ? data.schemaVersion.value
          : this.schemaVersion,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MenstrualCycleResult(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('lmpDate: $lmpDate, ')
          ..write('avgCycleLengthDays: $avgCycleLengthDays, ')
          ..write('periodLengthDays: $periodLengthDays, ')
          ..write('variabilityDays: $variabilityDays, ')
          ..write('resultJson: $resultJson, ')
          ..write('savedAt: $savedAt, ')
          ..write('schemaVersion: $schemaVersion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      lmpDate,
      avgCycleLengthDays,
      periodLengthDays,
      variabilityDays,
      $driftBlobEquality.hash(resultJson),
      savedAt,
      schemaVersion);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MenstrualCycleResult &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.lmpDate == this.lmpDate &&
          other.avgCycleLengthDays == this.avgCycleLengthDays &&
          other.periodLengthDays == this.periodLengthDays &&
          other.variabilityDays == this.variabilityDays &&
          $driftBlobEquality.equals(other.resultJson, this.resultJson) &&
          other.savedAt == this.savedAt &&
          other.schemaVersion == this.schemaVersion);
}

class MenstrualCycleResultsCompanion
    extends UpdateCompanion<MenstrualCycleResult> {
  final Value<String> id;
  final Value<String> userId;
  final Value<DateTime> lmpDate;
  final Value<int> avgCycleLengthDays;
  final Value<int?> periodLengthDays;
  final Value<int?> variabilityDays;
  final Value<Uint8List> resultJson;
  final Value<DateTime> savedAt;
  final Value<int> schemaVersion;
  final Value<int> rowid;
  const MenstrualCycleResultsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.lmpDate = const Value.absent(),
    this.avgCycleLengthDays = const Value.absent(),
    this.periodLengthDays = const Value.absent(),
    this.variabilityDays = const Value.absent(),
    this.resultJson = const Value.absent(),
    this.savedAt = const Value.absent(),
    this.schemaVersion = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MenstrualCycleResultsCompanion.insert({
    required String id,
    required String userId,
    required DateTime lmpDate,
    required int avgCycleLengthDays,
    this.periodLengthDays = const Value.absent(),
    this.variabilityDays = const Value.absent(),
    required Uint8List resultJson,
    required DateTime savedAt,
    this.schemaVersion = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        lmpDate = Value(lmpDate),
        avgCycleLengthDays = Value(avgCycleLengthDays),
        resultJson = Value(resultJson),
        savedAt = Value(savedAt);
  static Insertable<MenstrualCycleResult> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<DateTime>? lmpDate,
    Expression<int>? avgCycleLengthDays,
    Expression<int>? periodLengthDays,
    Expression<int>? variabilityDays,
    Expression<Uint8List>? resultJson,
    Expression<DateTime>? savedAt,
    Expression<int>? schemaVersion,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (lmpDate != null) 'lmp_date': lmpDate,
      if (avgCycleLengthDays != null)
        'avg_cycle_length_days': avgCycleLengthDays,
      if (periodLengthDays != null) 'period_length_days': periodLengthDays,
      if (variabilityDays != null) 'variability_days': variabilityDays,
      if (resultJson != null) 'result_json': resultJson,
      if (savedAt != null) 'saved_at': savedAt,
      if (schemaVersion != null) 'schema_version': schemaVersion,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MenstrualCycleResultsCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<DateTime>? lmpDate,
      Value<int>? avgCycleLengthDays,
      Value<int?>? periodLengthDays,
      Value<int?>? variabilityDays,
      Value<Uint8List>? resultJson,
      Value<DateTime>? savedAt,
      Value<int>? schemaVersion,
      Value<int>? rowid}) {
    return MenstrualCycleResultsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      lmpDate: lmpDate ?? this.lmpDate,
      avgCycleLengthDays: avgCycleLengthDays ?? this.avgCycleLengthDays,
      periodLengthDays: periodLengthDays ?? this.periodLengthDays,
      variabilityDays: variabilityDays ?? this.variabilityDays,
      resultJson: resultJson ?? this.resultJson,
      savedAt: savedAt ?? this.savedAt,
      schemaVersion: schemaVersion ?? this.schemaVersion,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (lmpDate.present) {
      map['lmp_date'] = Variable<DateTime>(lmpDate.value);
    }
    if (avgCycleLengthDays.present) {
      map['avg_cycle_length_days'] = Variable<int>(avgCycleLengthDays.value);
    }
    if (periodLengthDays.present) {
      map['period_length_days'] = Variable<int>(periodLengthDays.value);
    }
    if (variabilityDays.present) {
      map['variability_days'] = Variable<int>(variabilityDays.value);
    }
    if (resultJson.present) {
      map['result_json'] = Variable<Uint8List>(resultJson.value);
    }
    if (savedAt.present) {
      map['saved_at'] = Variable<DateTime>(savedAt.value);
    }
    if (schemaVersion.present) {
      map['schema_version'] = Variable<int>(schemaVersion.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MenstrualCycleResultsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('lmpDate: $lmpDate, ')
          ..write('avgCycleLengthDays: $avgCycleLengthDays, ')
          ..write('periodLengthDays: $periodLengthDays, ')
          ..write('variabilityDays: $variabilityDays, ')
          ..write('resultJson: $resultJson, ')
          ..write('savedAt: $savedAt, ')
          ..write('schemaVersion: $schemaVersion, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PregnancyResultsTable extends PregnancyResults
    with TableInfo<$PregnancyResultsTable, PregnancyResult> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PregnancyResultsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lmpDateMeta =
      const VerificationMeta('lmpDate');
  @override
  late final GeneratedColumn<DateTime> lmpDate = GeneratedColumn<DateTime>(
      'lmp_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _usgDateMeta =
      const VerificationMeta('usgDate');
  @override
  late final GeneratedColumn<DateTime> usgDate = GeneratedColumn<DateTime>(
      'usg_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _usgGaWeeksMeta =
      const VerificationMeta('usgGaWeeks');
  @override
  late final GeneratedColumn<int> usgGaWeeks = GeneratedColumn<int>(
      'usg_ga_weeks', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _usgGaDaysMeta =
      const VerificationMeta('usgGaDays');
  @override
  late final GeneratedColumn<int> usgGaDays = GeneratedColumn<int>(
      'usg_ga_days', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _conceptionMethodMeta =
      const VerificationMeta('conceptionMethod');
  @override
  late final GeneratedColumn<String> conceptionMethod = GeneratedColumn<String>(
      'conception_method', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _resultJsonMeta =
      const VerificationMeta('resultJson');
  @override
  late final GeneratedColumn<Uint8List> resultJson = GeneratedColumn<Uint8List>(
      'result_json', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _savedAtMeta =
      const VerificationMeta('savedAt');
  @override
  late final GeneratedColumn<DateTime> savedAt = GeneratedColumn<DateTime>(
      'saved_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _schemaVersionMeta =
      const VerificationMeta('schemaVersion');
  @override
  late final GeneratedColumn<int> schemaVersion = GeneratedColumn<int>(
      'schema_version', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        lmpDate,
        usgDate,
        usgGaWeeks,
        usgGaDays,
        conceptionMethod,
        resultJson,
        savedAt,
        schemaVersion
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pregnancy_results';
  @override
  VerificationContext validateIntegrity(Insertable<PregnancyResult> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('lmp_date')) {
      context.handle(_lmpDateMeta,
          lmpDate.isAcceptableOrUnknown(data['lmp_date']!, _lmpDateMeta));
    }
    if (data.containsKey('usg_date')) {
      context.handle(_usgDateMeta,
          usgDate.isAcceptableOrUnknown(data['usg_date']!, _usgDateMeta));
    }
    if (data.containsKey('usg_ga_weeks')) {
      context.handle(
          _usgGaWeeksMeta,
          usgGaWeeks.isAcceptableOrUnknown(
              data['usg_ga_weeks']!, _usgGaWeeksMeta));
    }
    if (data.containsKey('usg_ga_days')) {
      context.handle(
          _usgGaDaysMeta,
          usgGaDays.isAcceptableOrUnknown(
              data['usg_ga_days']!, _usgGaDaysMeta));
    }
    if (data.containsKey('conception_method')) {
      context.handle(
          _conceptionMethodMeta,
          conceptionMethod.isAcceptableOrUnknown(
              data['conception_method']!, _conceptionMethodMeta));
    }
    if (data.containsKey('result_json')) {
      context.handle(
          _resultJsonMeta,
          resultJson.isAcceptableOrUnknown(
              data['result_json']!, _resultJsonMeta));
    } else if (isInserting) {
      context.missing(_resultJsonMeta);
    }
    if (data.containsKey('saved_at')) {
      context.handle(_savedAtMeta,
          savedAt.isAcceptableOrUnknown(data['saved_at']!, _savedAtMeta));
    } else if (isInserting) {
      context.missing(_savedAtMeta);
    }
    if (data.containsKey('schema_version')) {
      context.handle(
          _schemaVersionMeta,
          schemaVersion.isAcceptableOrUnknown(
              data['schema_version']!, _schemaVersionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PregnancyResult map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PregnancyResult(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      lmpDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}lmp_date']),
      usgDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}usg_date']),
      usgGaWeeks: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}usg_ga_weeks']),
      usgGaDays: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}usg_ga_days']),
      conceptionMethod: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}conception_method']),
      resultJson: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}result_json'])!,
      savedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}saved_at'])!,
      schemaVersion: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}schema_version'])!,
    );
  }

  @override
  $PregnancyResultsTable createAlias(String alias) {
    return $PregnancyResultsTable(attachedDatabase, alias);
  }
}

class PregnancyResult extends DataClass implements Insertable<PregnancyResult> {
  final String id;
  final String userId;
  final DateTime? lmpDate;
  final DateTime? usgDate;
  final int? usgGaWeeks;
  final int? usgGaDays;
  final String? conceptionMethod;
  final Uint8List resultJson;
  final DateTime savedAt;
  final int schemaVersion;
  const PregnancyResult(
      {required this.id,
      required this.userId,
      this.lmpDate,
      this.usgDate,
      this.usgGaWeeks,
      this.usgGaDays,
      this.conceptionMethod,
      required this.resultJson,
      required this.savedAt,
      required this.schemaVersion});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    if (!nullToAbsent || lmpDate != null) {
      map['lmp_date'] = Variable<DateTime>(lmpDate);
    }
    if (!nullToAbsent || usgDate != null) {
      map['usg_date'] = Variable<DateTime>(usgDate);
    }
    if (!nullToAbsent || usgGaWeeks != null) {
      map['usg_ga_weeks'] = Variable<int>(usgGaWeeks);
    }
    if (!nullToAbsent || usgGaDays != null) {
      map['usg_ga_days'] = Variable<int>(usgGaDays);
    }
    if (!nullToAbsent || conceptionMethod != null) {
      map['conception_method'] = Variable<String>(conceptionMethod);
    }
    map['result_json'] = Variable<Uint8List>(resultJson);
    map['saved_at'] = Variable<DateTime>(savedAt);
    map['schema_version'] = Variable<int>(schemaVersion);
    return map;
  }

  PregnancyResultsCompanion toCompanion(bool nullToAbsent) {
    return PregnancyResultsCompanion(
      id: Value(id),
      userId: Value(userId),
      lmpDate: lmpDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lmpDate),
      usgDate: usgDate == null && nullToAbsent
          ? const Value.absent()
          : Value(usgDate),
      usgGaWeeks: usgGaWeeks == null && nullToAbsent
          ? const Value.absent()
          : Value(usgGaWeeks),
      usgGaDays: usgGaDays == null && nullToAbsent
          ? const Value.absent()
          : Value(usgGaDays),
      conceptionMethod: conceptionMethod == null && nullToAbsent
          ? const Value.absent()
          : Value(conceptionMethod),
      resultJson: Value(resultJson),
      savedAt: Value(savedAt),
      schemaVersion: Value(schemaVersion),
    );
  }

  factory PregnancyResult.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PregnancyResult(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      lmpDate: serializer.fromJson<DateTime?>(json['lmpDate']),
      usgDate: serializer.fromJson<DateTime?>(json['usgDate']),
      usgGaWeeks: serializer.fromJson<int?>(json['usgGaWeeks']),
      usgGaDays: serializer.fromJson<int?>(json['usgGaDays']),
      conceptionMethod: serializer.fromJson<String?>(json['conceptionMethod']),
      resultJson: serializer.fromJson<Uint8List>(json['resultJson']),
      savedAt: serializer.fromJson<DateTime>(json['savedAt']),
      schemaVersion: serializer.fromJson<int>(json['schemaVersion']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'lmpDate': serializer.toJson<DateTime?>(lmpDate),
      'usgDate': serializer.toJson<DateTime?>(usgDate),
      'usgGaWeeks': serializer.toJson<int?>(usgGaWeeks),
      'usgGaDays': serializer.toJson<int?>(usgGaDays),
      'conceptionMethod': serializer.toJson<String?>(conceptionMethod),
      'resultJson': serializer.toJson<Uint8List>(resultJson),
      'savedAt': serializer.toJson<DateTime>(savedAt),
      'schemaVersion': serializer.toJson<int>(schemaVersion),
    };
  }

  PregnancyResult copyWith(
          {String? id,
          String? userId,
          Value<DateTime?> lmpDate = const Value.absent(),
          Value<DateTime?> usgDate = const Value.absent(),
          Value<int?> usgGaWeeks = const Value.absent(),
          Value<int?> usgGaDays = const Value.absent(),
          Value<String?> conceptionMethod = const Value.absent(),
          Uint8List? resultJson,
          DateTime? savedAt,
          int? schemaVersion}) =>
      PregnancyResult(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        lmpDate: lmpDate.present ? lmpDate.value : this.lmpDate,
        usgDate: usgDate.present ? usgDate.value : this.usgDate,
        usgGaWeeks: usgGaWeeks.present ? usgGaWeeks.value : this.usgGaWeeks,
        usgGaDays: usgGaDays.present ? usgGaDays.value : this.usgGaDays,
        conceptionMethod: conceptionMethod.present
            ? conceptionMethod.value
            : this.conceptionMethod,
        resultJson: resultJson ?? this.resultJson,
        savedAt: savedAt ?? this.savedAt,
        schemaVersion: schemaVersion ?? this.schemaVersion,
      );
  PregnancyResult copyWithCompanion(PregnancyResultsCompanion data) {
    return PregnancyResult(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      lmpDate: data.lmpDate.present ? data.lmpDate.value : this.lmpDate,
      usgDate: data.usgDate.present ? data.usgDate.value : this.usgDate,
      usgGaWeeks:
          data.usgGaWeeks.present ? data.usgGaWeeks.value : this.usgGaWeeks,
      usgGaDays: data.usgGaDays.present ? data.usgGaDays.value : this.usgGaDays,
      conceptionMethod: data.conceptionMethod.present
          ? data.conceptionMethod.value
          : this.conceptionMethod,
      resultJson:
          data.resultJson.present ? data.resultJson.value : this.resultJson,
      savedAt: data.savedAt.present ? data.savedAt.value : this.savedAt,
      schemaVersion: data.schemaVersion.present
          ? data.schemaVersion.value
          : this.schemaVersion,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PregnancyResult(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('lmpDate: $lmpDate, ')
          ..write('usgDate: $usgDate, ')
          ..write('usgGaWeeks: $usgGaWeeks, ')
          ..write('usgGaDays: $usgGaDays, ')
          ..write('conceptionMethod: $conceptionMethod, ')
          ..write('resultJson: $resultJson, ')
          ..write('savedAt: $savedAt, ')
          ..write('schemaVersion: $schemaVersion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      lmpDate,
      usgDate,
      usgGaWeeks,
      usgGaDays,
      conceptionMethod,
      $driftBlobEquality.hash(resultJson),
      savedAt,
      schemaVersion);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PregnancyResult &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.lmpDate == this.lmpDate &&
          other.usgDate == this.usgDate &&
          other.usgGaWeeks == this.usgGaWeeks &&
          other.usgGaDays == this.usgGaDays &&
          other.conceptionMethod == this.conceptionMethod &&
          $driftBlobEquality.equals(other.resultJson, this.resultJson) &&
          other.savedAt == this.savedAt &&
          other.schemaVersion == this.schemaVersion);
}

class PregnancyResultsCompanion extends UpdateCompanion<PregnancyResult> {
  final Value<String> id;
  final Value<String> userId;
  final Value<DateTime?> lmpDate;
  final Value<DateTime?> usgDate;
  final Value<int?> usgGaWeeks;
  final Value<int?> usgGaDays;
  final Value<String?> conceptionMethod;
  final Value<Uint8List> resultJson;
  final Value<DateTime> savedAt;
  final Value<int> schemaVersion;
  final Value<int> rowid;
  const PregnancyResultsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.lmpDate = const Value.absent(),
    this.usgDate = const Value.absent(),
    this.usgGaWeeks = const Value.absent(),
    this.usgGaDays = const Value.absent(),
    this.conceptionMethod = const Value.absent(),
    this.resultJson = const Value.absent(),
    this.savedAt = const Value.absent(),
    this.schemaVersion = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PregnancyResultsCompanion.insert({
    required String id,
    required String userId,
    this.lmpDate = const Value.absent(),
    this.usgDate = const Value.absent(),
    this.usgGaWeeks = const Value.absent(),
    this.usgGaDays = const Value.absent(),
    this.conceptionMethod = const Value.absent(),
    required Uint8List resultJson,
    required DateTime savedAt,
    this.schemaVersion = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        resultJson = Value(resultJson),
        savedAt = Value(savedAt);
  static Insertable<PregnancyResult> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<DateTime>? lmpDate,
    Expression<DateTime>? usgDate,
    Expression<int>? usgGaWeeks,
    Expression<int>? usgGaDays,
    Expression<String>? conceptionMethod,
    Expression<Uint8List>? resultJson,
    Expression<DateTime>? savedAt,
    Expression<int>? schemaVersion,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (lmpDate != null) 'lmp_date': lmpDate,
      if (usgDate != null) 'usg_date': usgDate,
      if (usgGaWeeks != null) 'usg_ga_weeks': usgGaWeeks,
      if (usgGaDays != null) 'usg_ga_days': usgGaDays,
      if (conceptionMethod != null) 'conception_method': conceptionMethod,
      if (resultJson != null) 'result_json': resultJson,
      if (savedAt != null) 'saved_at': savedAt,
      if (schemaVersion != null) 'schema_version': schemaVersion,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PregnancyResultsCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<DateTime?>? lmpDate,
      Value<DateTime?>? usgDate,
      Value<int?>? usgGaWeeks,
      Value<int?>? usgGaDays,
      Value<String?>? conceptionMethod,
      Value<Uint8List>? resultJson,
      Value<DateTime>? savedAt,
      Value<int>? schemaVersion,
      Value<int>? rowid}) {
    return PregnancyResultsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      lmpDate: lmpDate ?? this.lmpDate,
      usgDate: usgDate ?? this.usgDate,
      usgGaWeeks: usgGaWeeks ?? this.usgGaWeeks,
      usgGaDays: usgGaDays ?? this.usgGaDays,
      conceptionMethod: conceptionMethod ?? this.conceptionMethod,
      resultJson: resultJson ?? this.resultJson,
      savedAt: savedAt ?? this.savedAt,
      schemaVersion: schemaVersion ?? this.schemaVersion,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (lmpDate.present) {
      map['lmp_date'] = Variable<DateTime>(lmpDate.value);
    }
    if (usgDate.present) {
      map['usg_date'] = Variable<DateTime>(usgDate.value);
    }
    if (usgGaWeeks.present) {
      map['usg_ga_weeks'] = Variable<int>(usgGaWeeks.value);
    }
    if (usgGaDays.present) {
      map['usg_ga_days'] = Variable<int>(usgGaDays.value);
    }
    if (conceptionMethod.present) {
      map['conception_method'] = Variable<String>(conceptionMethod.value);
    }
    if (resultJson.present) {
      map['result_json'] = Variable<Uint8List>(resultJson.value);
    }
    if (savedAt.present) {
      map['saved_at'] = Variable<DateTime>(savedAt.value);
    }
    if (schemaVersion.present) {
      map['schema_version'] = Variable<int>(schemaVersion.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PregnancyResultsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('lmpDate: $lmpDate, ')
          ..write('usgDate: $usgDate, ')
          ..write('usgGaWeeks: $usgGaWeeks, ')
          ..write('usgGaDays: $usgGaDays, ')
          ..write('conceptionMethod: $conceptionMethod, ')
          ..write('resultJson: $resultJson, ')
          ..write('savedAt: $savedAt, ')
          ..write('schemaVersion: $schemaVersion, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BmiResultsTable extends BmiResults
    with TableInfo<$BmiResultsTable, BmiResult> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BmiResultsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _heightCmMeta =
      const VerificationMeta('heightCm');
  @override
  late final GeneratedColumn<double> heightCm = GeneratedColumn<double>(
      'height_cm', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _weightKgMeta =
      const VerificationMeta('weightKg');
  @override
  late final GeneratedColumn<double> weightKg = GeneratedColumn<double>(
      'weight_kg', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _resultJsonMeta =
      const VerificationMeta('resultJson');
  @override
  late final GeneratedColumn<Uint8List> resultJson = GeneratedColumn<Uint8List>(
      'result_json', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _savedAtMeta =
      const VerificationMeta('savedAt');
  @override
  late final GeneratedColumn<DateTime> savedAt = GeneratedColumn<DateTime>(
      'saved_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _schemaVersionMeta =
      const VerificationMeta('schemaVersion');
  @override
  late final GeneratedColumn<int> schemaVersion = GeneratedColumn<int>(
      'schema_version', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, heightCm, weightKg, resultJson, savedAt, schemaVersion];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bmi_results';
  @override
  VerificationContext validateIntegrity(Insertable<BmiResult> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('height_cm')) {
      context.handle(_heightCmMeta,
          heightCm.isAcceptableOrUnknown(data['height_cm']!, _heightCmMeta));
    } else if (isInserting) {
      context.missing(_heightCmMeta);
    }
    if (data.containsKey('weight_kg')) {
      context.handle(_weightKgMeta,
          weightKg.isAcceptableOrUnknown(data['weight_kg']!, _weightKgMeta));
    } else if (isInserting) {
      context.missing(_weightKgMeta);
    }
    if (data.containsKey('result_json')) {
      context.handle(
          _resultJsonMeta,
          resultJson.isAcceptableOrUnknown(
              data['result_json']!, _resultJsonMeta));
    } else if (isInserting) {
      context.missing(_resultJsonMeta);
    }
    if (data.containsKey('saved_at')) {
      context.handle(_savedAtMeta,
          savedAt.isAcceptableOrUnknown(data['saved_at']!, _savedAtMeta));
    } else if (isInserting) {
      context.missing(_savedAtMeta);
    }
    if (data.containsKey('schema_version')) {
      context.handle(
          _schemaVersionMeta,
          schemaVersion.isAcceptableOrUnknown(
              data['schema_version']!, _schemaVersionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BmiResult map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BmiResult(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      heightCm: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}height_cm'])!,
      weightKg: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}weight_kg'])!,
      resultJson: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}result_json'])!,
      savedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}saved_at'])!,
      schemaVersion: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}schema_version'])!,
    );
  }

  @override
  $BmiResultsTable createAlias(String alias) {
    return $BmiResultsTable(attachedDatabase, alias);
  }
}

class BmiResult extends DataClass implements Insertable<BmiResult> {
  final String id;
  final String userId;
  final double heightCm;
  final double weightKg;
  final Uint8List resultJson;
  final DateTime savedAt;
  final int schemaVersion;
  const BmiResult(
      {required this.id,
      required this.userId,
      required this.heightCm,
      required this.weightKg,
      required this.resultJson,
      required this.savedAt,
      required this.schemaVersion});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['height_cm'] = Variable<double>(heightCm);
    map['weight_kg'] = Variable<double>(weightKg);
    map['result_json'] = Variable<Uint8List>(resultJson);
    map['saved_at'] = Variable<DateTime>(savedAt);
    map['schema_version'] = Variable<int>(schemaVersion);
    return map;
  }

  BmiResultsCompanion toCompanion(bool nullToAbsent) {
    return BmiResultsCompanion(
      id: Value(id),
      userId: Value(userId),
      heightCm: Value(heightCm),
      weightKg: Value(weightKg),
      resultJson: Value(resultJson),
      savedAt: Value(savedAt),
      schemaVersion: Value(schemaVersion),
    );
  }

  factory BmiResult.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BmiResult(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      heightCm: serializer.fromJson<double>(json['heightCm']),
      weightKg: serializer.fromJson<double>(json['weightKg']),
      resultJson: serializer.fromJson<Uint8List>(json['resultJson']),
      savedAt: serializer.fromJson<DateTime>(json['savedAt']),
      schemaVersion: serializer.fromJson<int>(json['schemaVersion']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'heightCm': serializer.toJson<double>(heightCm),
      'weightKg': serializer.toJson<double>(weightKg),
      'resultJson': serializer.toJson<Uint8List>(resultJson),
      'savedAt': serializer.toJson<DateTime>(savedAt),
      'schemaVersion': serializer.toJson<int>(schemaVersion),
    };
  }

  BmiResult copyWith(
          {String? id,
          String? userId,
          double? heightCm,
          double? weightKg,
          Uint8List? resultJson,
          DateTime? savedAt,
          int? schemaVersion}) =>
      BmiResult(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        heightCm: heightCm ?? this.heightCm,
        weightKg: weightKg ?? this.weightKg,
        resultJson: resultJson ?? this.resultJson,
        savedAt: savedAt ?? this.savedAt,
        schemaVersion: schemaVersion ?? this.schemaVersion,
      );
  BmiResult copyWithCompanion(BmiResultsCompanion data) {
    return BmiResult(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      heightCm: data.heightCm.present ? data.heightCm.value : this.heightCm,
      weightKg: data.weightKg.present ? data.weightKg.value : this.weightKg,
      resultJson:
          data.resultJson.present ? data.resultJson.value : this.resultJson,
      savedAt: data.savedAt.present ? data.savedAt.value : this.savedAt,
      schemaVersion: data.schemaVersion.present
          ? data.schemaVersion.value
          : this.schemaVersion,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BmiResult(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('heightCm: $heightCm, ')
          ..write('weightKg: $weightKg, ')
          ..write('resultJson: $resultJson, ')
          ..write('savedAt: $savedAt, ')
          ..write('schemaVersion: $schemaVersion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userId, heightCm, weightKg,
      $driftBlobEquality.hash(resultJson), savedAt, schemaVersion);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BmiResult &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.heightCm == this.heightCm &&
          other.weightKg == this.weightKg &&
          $driftBlobEquality.equals(other.resultJson, this.resultJson) &&
          other.savedAt == this.savedAt &&
          other.schemaVersion == this.schemaVersion);
}

class BmiResultsCompanion extends UpdateCompanion<BmiResult> {
  final Value<String> id;
  final Value<String> userId;
  final Value<double> heightCm;
  final Value<double> weightKg;
  final Value<Uint8List> resultJson;
  final Value<DateTime> savedAt;
  final Value<int> schemaVersion;
  final Value<int> rowid;
  const BmiResultsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.heightCm = const Value.absent(),
    this.weightKg = const Value.absent(),
    this.resultJson = const Value.absent(),
    this.savedAt = const Value.absent(),
    this.schemaVersion = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BmiResultsCompanion.insert({
    required String id,
    required String userId,
    required double heightCm,
    required double weightKg,
    required Uint8List resultJson,
    required DateTime savedAt,
    this.schemaVersion = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        heightCm = Value(heightCm),
        weightKg = Value(weightKg),
        resultJson = Value(resultJson),
        savedAt = Value(savedAt);
  static Insertable<BmiResult> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<double>? heightCm,
    Expression<double>? weightKg,
    Expression<Uint8List>? resultJson,
    Expression<DateTime>? savedAt,
    Expression<int>? schemaVersion,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (heightCm != null) 'height_cm': heightCm,
      if (weightKg != null) 'weight_kg': weightKg,
      if (resultJson != null) 'result_json': resultJson,
      if (savedAt != null) 'saved_at': savedAt,
      if (schemaVersion != null) 'schema_version': schemaVersion,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BmiResultsCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<double>? heightCm,
      Value<double>? weightKg,
      Value<Uint8List>? resultJson,
      Value<DateTime>? savedAt,
      Value<int>? schemaVersion,
      Value<int>? rowid}) {
    return BmiResultsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      heightCm: heightCm ?? this.heightCm,
      weightKg: weightKg ?? this.weightKg,
      resultJson: resultJson ?? this.resultJson,
      savedAt: savedAt ?? this.savedAt,
      schemaVersion: schemaVersion ?? this.schemaVersion,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (heightCm.present) {
      map['height_cm'] = Variable<double>(heightCm.value);
    }
    if (weightKg.present) {
      map['weight_kg'] = Variable<double>(weightKg.value);
    }
    if (resultJson.present) {
      map['result_json'] = Variable<Uint8List>(resultJson.value);
    }
    if (savedAt.present) {
      map['saved_at'] = Variable<DateTime>(savedAt.value);
    }
    if (schemaVersion.present) {
      map['schema_version'] = Variable<int>(schemaVersion.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BmiResultsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('heightCm: $heightCm, ')
          ..write('weightKg: $weightKg, ')
          ..write('resultJson: $resultJson, ')
          ..write('savedAt: $savedAt, ')
          ..write('schemaVersion: $schemaVersion, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SearchHistoryTable extends SearchHistory
    with TableInfo<$SearchHistoryTable, SearchHistoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SearchHistoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _queryMeta = const VerificationMeta('query');
  @override
  late final GeneratedColumn<String> query = GeneratedColumn<String>(
      'query', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _searchedAtMeta =
      const VerificationMeta('searchedAt');
  @override
  late final GeneratedColumn<DateTime> searchedAt = GeneratedColumn<DateTime>(
      'searched_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, userId, query, searchedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'search_history';
  @override
  VerificationContext validateIntegrity(Insertable<SearchHistoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('query')) {
      context.handle(
          _queryMeta, query.isAcceptableOrUnknown(data['query']!, _queryMeta));
    } else if (isInserting) {
      context.missing(_queryMeta);
    }
    if (data.containsKey('searched_at')) {
      context.handle(
          _searchedAtMeta,
          searchedAt.isAcceptableOrUnknown(
              data['searched_at']!, _searchedAtMeta));
    } else if (isInserting) {
      context.missing(_searchedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SearchHistoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SearchHistoryData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      query: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}query'])!,
      searchedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}searched_at'])!,
    );
  }

  @override
  $SearchHistoryTable createAlias(String alias) {
    return $SearchHistoryTable(attachedDatabase, alias);
  }
}

class SearchHistoryData extends DataClass
    implements Insertable<SearchHistoryData> {
  final String id;
  final String userId;
  final String query;
  final DateTime searchedAt;
  const SearchHistoryData(
      {required this.id,
      required this.userId,
      required this.query,
      required this.searchedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['query'] = Variable<String>(query);
    map['searched_at'] = Variable<DateTime>(searchedAt);
    return map;
  }

  SearchHistoryCompanion toCompanion(bool nullToAbsent) {
    return SearchHistoryCompanion(
      id: Value(id),
      userId: Value(userId),
      query: Value(query),
      searchedAt: Value(searchedAt),
    );
  }

  factory SearchHistoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SearchHistoryData(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      query: serializer.fromJson<String>(json['query']),
      searchedAt: serializer.fromJson<DateTime>(json['searchedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'query': serializer.toJson<String>(query),
      'searchedAt': serializer.toJson<DateTime>(searchedAt),
    };
  }

  SearchHistoryData copyWith(
          {String? id, String? userId, String? query, DateTime? searchedAt}) =>
      SearchHistoryData(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        query: query ?? this.query,
        searchedAt: searchedAt ?? this.searchedAt,
      );
  SearchHistoryData copyWithCompanion(SearchHistoryCompanion data) {
    return SearchHistoryData(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      query: data.query.present ? data.query.value : this.query,
      searchedAt:
          data.searchedAt.present ? data.searchedAt.value : this.searchedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SearchHistoryData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('query: $query, ')
          ..write('searchedAt: $searchedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userId, query, searchedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SearchHistoryData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.query == this.query &&
          other.searchedAt == this.searchedAt);
}

class SearchHistoryCompanion extends UpdateCompanion<SearchHistoryData> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> query;
  final Value<DateTime> searchedAt;
  final Value<int> rowid;
  const SearchHistoryCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.query = const Value.absent(),
    this.searchedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SearchHistoryCompanion.insert({
    required String id,
    required String userId,
    required String query,
    required DateTime searchedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        query = Value(query),
        searchedAt = Value(searchedAt);
  static Insertable<SearchHistoryData> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? query,
    Expression<DateTime>? searchedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (query != null) 'query': query,
      if (searchedAt != null) 'searched_at': searchedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SearchHistoryCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<String>? query,
      Value<DateTime>? searchedAt,
      Value<int>? rowid}) {
    return SearchHistoryCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      query: query ?? this.query,
      searchedAt: searchedAt ?? this.searchedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (query.present) {
      map['query'] = Variable<String>(query.value);
    }
    if (searchedAt.present) {
      map['searched_at'] = Variable<DateTime>(searchedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SearchHistoryCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('query: $query, ')
          ..write('searchedAt: $searchedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ConsentRecordsTable extends ConsentRecords
    with TableInfo<$ConsentRecordsTable, ConsentRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ConsentRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _consentTypeMeta =
      const VerificationMeta('consentType');
  @override
  late final GeneratedColumn<String> consentType = GeneratedColumn<String>(
      'consent_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _givenAtMeta =
      const VerificationMeta('givenAt');
  @override
  late final GeneratedColumn<DateTime> givenAt = GeneratedColumn<DateTime>(
      'given_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _withdrawnAtMeta =
      const VerificationMeta('withdrawnAt');
  @override
  late final GeneratedColumn<DateTime> withdrawnAt = GeneratedColumn<DateTime>(
      'withdrawn_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _policyVersionMeta =
      const VerificationMeta('policyVersion');
  @override
  late final GeneratedColumn<String> policyVersion = GeneratedColumn<String>(
      'policy_version', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, consentType, status, givenAt, withdrawnAt, policyVersion];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'consent_records';
  @override
  VerificationContext validateIntegrity(Insertable<ConsentRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('consent_type')) {
      context.handle(
          _consentTypeMeta,
          consentType.isAcceptableOrUnknown(
              data['consent_type']!, _consentTypeMeta));
    } else if (isInserting) {
      context.missing(_consentTypeMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('given_at')) {
      context.handle(_givenAtMeta,
          givenAt.isAcceptableOrUnknown(data['given_at']!, _givenAtMeta));
    } else if (isInserting) {
      context.missing(_givenAtMeta);
    }
    if (data.containsKey('withdrawn_at')) {
      context.handle(
          _withdrawnAtMeta,
          withdrawnAt.isAcceptableOrUnknown(
              data['withdrawn_at']!, _withdrawnAtMeta));
    }
    if (data.containsKey('policy_version')) {
      context.handle(
          _policyVersionMeta,
          policyVersion.isAcceptableOrUnknown(
              data['policy_version']!, _policyVersionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ConsentRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ConsentRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      consentType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}consent_type'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      givenAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}given_at'])!,
      withdrawnAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}withdrawn_at']),
      policyVersion: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}policy_version']),
    );
  }

  @override
  $ConsentRecordsTable createAlias(String alias) {
    return $ConsentRecordsTable(attachedDatabase, alias);
  }
}

class ConsentRecord extends DataClass implements Insertable<ConsentRecord> {
  final String id;
  final String userId;
  final String consentType;
  final String status;
  final DateTime givenAt;
  final DateTime? withdrawnAt;
  final String? policyVersion;
  const ConsentRecord(
      {required this.id,
      required this.userId,
      required this.consentType,
      required this.status,
      required this.givenAt,
      this.withdrawnAt,
      this.policyVersion});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['consent_type'] = Variable<String>(consentType);
    map['status'] = Variable<String>(status);
    map['given_at'] = Variable<DateTime>(givenAt);
    if (!nullToAbsent || withdrawnAt != null) {
      map['withdrawn_at'] = Variable<DateTime>(withdrawnAt);
    }
    if (!nullToAbsent || policyVersion != null) {
      map['policy_version'] = Variable<String>(policyVersion);
    }
    return map;
  }

  ConsentRecordsCompanion toCompanion(bool nullToAbsent) {
    return ConsentRecordsCompanion(
      id: Value(id),
      userId: Value(userId),
      consentType: Value(consentType),
      status: Value(status),
      givenAt: Value(givenAt),
      withdrawnAt: withdrawnAt == null && nullToAbsent
          ? const Value.absent()
          : Value(withdrawnAt),
      policyVersion: policyVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(policyVersion),
    );
  }

  factory ConsentRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ConsentRecord(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      consentType: serializer.fromJson<String>(json['consentType']),
      status: serializer.fromJson<String>(json['status']),
      givenAt: serializer.fromJson<DateTime>(json['givenAt']),
      withdrawnAt: serializer.fromJson<DateTime?>(json['withdrawnAt']),
      policyVersion: serializer.fromJson<String?>(json['policyVersion']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'consentType': serializer.toJson<String>(consentType),
      'status': serializer.toJson<String>(status),
      'givenAt': serializer.toJson<DateTime>(givenAt),
      'withdrawnAt': serializer.toJson<DateTime?>(withdrawnAt),
      'policyVersion': serializer.toJson<String?>(policyVersion),
    };
  }

  ConsentRecord copyWith(
          {String? id,
          String? userId,
          String? consentType,
          String? status,
          DateTime? givenAt,
          Value<DateTime?> withdrawnAt = const Value.absent(),
          Value<String?> policyVersion = const Value.absent()}) =>
      ConsentRecord(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        consentType: consentType ?? this.consentType,
        status: status ?? this.status,
        givenAt: givenAt ?? this.givenAt,
        withdrawnAt: withdrawnAt.present ? withdrawnAt.value : this.withdrawnAt,
        policyVersion:
            policyVersion.present ? policyVersion.value : this.policyVersion,
      );
  ConsentRecord copyWithCompanion(ConsentRecordsCompanion data) {
    return ConsentRecord(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      consentType:
          data.consentType.present ? data.consentType.value : this.consentType,
      status: data.status.present ? data.status.value : this.status,
      givenAt: data.givenAt.present ? data.givenAt.value : this.givenAt,
      withdrawnAt:
          data.withdrawnAt.present ? data.withdrawnAt.value : this.withdrawnAt,
      policyVersion: data.policyVersion.present
          ? data.policyVersion.value
          : this.policyVersion,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ConsentRecord(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('consentType: $consentType, ')
          ..write('status: $status, ')
          ..write('givenAt: $givenAt, ')
          ..write('withdrawnAt: $withdrawnAt, ')
          ..write('policyVersion: $policyVersion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, userId, consentType, status, givenAt, withdrawnAt, policyVersion);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ConsentRecord &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.consentType == this.consentType &&
          other.status == this.status &&
          other.givenAt == this.givenAt &&
          other.withdrawnAt == this.withdrawnAt &&
          other.policyVersion == this.policyVersion);
}

class ConsentRecordsCompanion extends UpdateCompanion<ConsentRecord> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> consentType;
  final Value<String> status;
  final Value<DateTime> givenAt;
  final Value<DateTime?> withdrawnAt;
  final Value<String?> policyVersion;
  final Value<int> rowid;
  const ConsentRecordsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.consentType = const Value.absent(),
    this.status = const Value.absent(),
    this.givenAt = const Value.absent(),
    this.withdrawnAt = const Value.absent(),
    this.policyVersion = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ConsentRecordsCompanion.insert({
    required String id,
    required String userId,
    required String consentType,
    required String status,
    required DateTime givenAt,
    this.withdrawnAt = const Value.absent(),
    this.policyVersion = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        consentType = Value(consentType),
        status = Value(status),
        givenAt = Value(givenAt);
  static Insertable<ConsentRecord> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? consentType,
    Expression<String>? status,
    Expression<DateTime>? givenAt,
    Expression<DateTime>? withdrawnAt,
    Expression<String>? policyVersion,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (consentType != null) 'consent_type': consentType,
      if (status != null) 'status': status,
      if (givenAt != null) 'given_at': givenAt,
      if (withdrawnAt != null) 'withdrawn_at': withdrawnAt,
      if (policyVersion != null) 'policy_version': policyVersion,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ConsentRecordsCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<String>? consentType,
      Value<String>? status,
      Value<DateTime>? givenAt,
      Value<DateTime?>? withdrawnAt,
      Value<String?>? policyVersion,
      Value<int>? rowid}) {
    return ConsentRecordsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      consentType: consentType ?? this.consentType,
      status: status ?? this.status,
      givenAt: givenAt ?? this.givenAt,
      withdrawnAt: withdrawnAt ?? this.withdrawnAt,
      policyVersion: policyVersion ?? this.policyVersion,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (consentType.present) {
      map['consent_type'] = Variable<String>(consentType.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (givenAt.present) {
      map['given_at'] = Variable<DateTime>(givenAt.value);
    }
    if (withdrawnAt.present) {
      map['withdrawn_at'] = Variable<DateTime>(withdrawnAt.value);
    }
    if (policyVersion.present) {
      map['policy_version'] = Variable<String>(policyVersion.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConsentRecordsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('consentType: $consentType, ')
          ..write('status: $status, ')
          ..write('givenAt: $givenAt, ')
          ..write('withdrawnAt: $withdrawnAt, ')
          ..write('policyVersion: $policyVersion, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ArticlesTable articles = $ArticlesTable(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $TagsTable tags = $TagsTable(this);
  late final $UserSessionsTable userSessions = $UserSessionsTable(this);
  late final $FavoritesTable favorites = $FavoritesTable(this);
  late final $DraftsTable drafts = $DraftsTable(this);
  late final $QueuedActionsTable queuedActions = $QueuedActionsTable(this);
  late final $MenstrualCycleResultsTable menstrualCycleResults =
      $MenstrualCycleResultsTable(this);
  late final $PregnancyResultsTable pregnancyResults =
      $PregnancyResultsTable(this);
  late final $BmiResultsTable bmiResults = $BmiResultsTable(this);
  late final $SearchHistoryTable searchHistory = $SearchHistoryTable(this);
  late final $ConsentRecordsTable consentRecords = $ConsentRecordsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        articles,
        categories,
        tags,
        userSessions,
        favorites,
        drafts,
        queuedActions,
        menstrualCycleResults,
        pregnancyResults,
        bmiResults,
        searchHistory,
        consentRecords
      ];
}

typedef $$ArticlesTableCreateCompanionBuilder = ArticlesCompanion Function({
  required String id,
  required String title,
  required String slug,
  Value<String?> authorName,
  required DateTime publishDate,
  Value<String?> imageUrl,
  required String contentHtml,
  Value<String?> excerpt,
  Value<int?> readTimeMinutes,
  required String categoryIds,
  required String tagIds,
  required DateTime cachedAt,
  Value<String?> etag,
  Value<DateTime?> lastModified,
  Value<int> rowid,
});
typedef $$ArticlesTableUpdateCompanionBuilder = ArticlesCompanion Function({
  Value<String> id,
  Value<String> title,
  Value<String> slug,
  Value<String?> authorName,
  Value<DateTime> publishDate,
  Value<String?> imageUrl,
  Value<String> contentHtml,
  Value<String?> excerpt,
  Value<int?> readTimeMinutes,
  Value<String> categoryIds,
  Value<String> tagIds,
  Value<DateTime> cachedAt,
  Value<String?> etag,
  Value<DateTime?> lastModified,
  Value<int> rowid,
});

class $$ArticlesTableFilterComposer
    extends Composer<_$AppDatabase, $ArticlesTable> {
  $$ArticlesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get slug => $composableBuilder(
      column: $table.slug, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get authorName => $composableBuilder(
      column: $table.authorName, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get publishDate => $composableBuilder(
      column: $table.publishDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contentHtml => $composableBuilder(
      column: $table.contentHtml, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get excerpt => $composableBuilder(
      column: $table.excerpt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get readTimeMinutes => $composableBuilder(
      column: $table.readTimeMinutes,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get categoryIds => $composableBuilder(
      column: $table.categoryIds, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tagIds => $composableBuilder(
      column: $table.tagIds, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
      column: $table.cachedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get etag => $composableBuilder(
      column: $table.etag, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModified => $composableBuilder(
      column: $table.lastModified, builder: (column) => ColumnFilters(column));
}

class $$ArticlesTableOrderingComposer
    extends Composer<_$AppDatabase, $ArticlesTable> {
  $$ArticlesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get slug => $composableBuilder(
      column: $table.slug, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get authorName => $composableBuilder(
      column: $table.authorName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get publishDate => $composableBuilder(
      column: $table.publishDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contentHtml => $composableBuilder(
      column: $table.contentHtml, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get excerpt => $composableBuilder(
      column: $table.excerpt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get readTimeMinutes => $composableBuilder(
      column: $table.readTimeMinutes,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categoryIds => $composableBuilder(
      column: $table.categoryIds, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tagIds => $composableBuilder(
      column: $table.tagIds, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
      column: $table.cachedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get etag => $composableBuilder(
      column: $table.etag, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModified => $composableBuilder(
      column: $table.lastModified,
      builder: (column) => ColumnOrderings(column));
}

class $$ArticlesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ArticlesTable> {
  $$ArticlesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get slug =>
      $composableBuilder(column: $table.slug, builder: (column) => column);

  GeneratedColumn<String> get authorName => $composableBuilder(
      column: $table.authorName, builder: (column) => column);

  GeneratedColumn<DateTime> get publishDate => $composableBuilder(
      column: $table.publishDate, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get contentHtml => $composableBuilder(
      column: $table.contentHtml, builder: (column) => column);

  GeneratedColumn<String> get excerpt =>
      $composableBuilder(column: $table.excerpt, builder: (column) => column);

  GeneratedColumn<int> get readTimeMinutes => $composableBuilder(
      column: $table.readTimeMinutes, builder: (column) => column);

  GeneratedColumn<String> get categoryIds => $composableBuilder(
      column: $table.categoryIds, builder: (column) => column);

  GeneratedColumn<String> get tagIds =>
      $composableBuilder(column: $table.tagIds, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);

  GeneratedColumn<String> get etag =>
      $composableBuilder(column: $table.etag, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModified => $composableBuilder(
      column: $table.lastModified, builder: (column) => column);
}

class $$ArticlesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ArticlesTable,
    Article,
    $$ArticlesTableFilterComposer,
    $$ArticlesTableOrderingComposer,
    $$ArticlesTableAnnotationComposer,
    $$ArticlesTableCreateCompanionBuilder,
    $$ArticlesTableUpdateCompanionBuilder,
    (Article, BaseReferences<_$AppDatabase, $ArticlesTable, Article>),
    Article,
    PrefetchHooks Function()> {
  $$ArticlesTableTableManager(_$AppDatabase db, $ArticlesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ArticlesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ArticlesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ArticlesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> slug = const Value.absent(),
            Value<String?> authorName = const Value.absent(),
            Value<DateTime> publishDate = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<String> contentHtml = const Value.absent(),
            Value<String?> excerpt = const Value.absent(),
            Value<int?> readTimeMinutes = const Value.absent(),
            Value<String> categoryIds = const Value.absent(),
            Value<String> tagIds = const Value.absent(),
            Value<DateTime> cachedAt = const Value.absent(),
            Value<String?> etag = const Value.absent(),
            Value<DateTime?> lastModified = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ArticlesCompanion(
            id: id,
            title: title,
            slug: slug,
            authorName: authorName,
            publishDate: publishDate,
            imageUrl: imageUrl,
            contentHtml: contentHtml,
            excerpt: excerpt,
            readTimeMinutes: readTimeMinutes,
            categoryIds: categoryIds,
            tagIds: tagIds,
            cachedAt: cachedAt,
            etag: etag,
            lastModified: lastModified,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String title,
            required String slug,
            Value<String?> authorName = const Value.absent(),
            required DateTime publishDate,
            Value<String?> imageUrl = const Value.absent(),
            required String contentHtml,
            Value<String?> excerpt = const Value.absent(),
            Value<int?> readTimeMinutes = const Value.absent(),
            required String categoryIds,
            required String tagIds,
            required DateTime cachedAt,
            Value<String?> etag = const Value.absent(),
            Value<DateTime?> lastModified = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ArticlesCompanion.insert(
            id: id,
            title: title,
            slug: slug,
            authorName: authorName,
            publishDate: publishDate,
            imageUrl: imageUrl,
            contentHtml: contentHtml,
            excerpt: excerpt,
            readTimeMinutes: readTimeMinutes,
            categoryIds: categoryIds,
            tagIds: tagIds,
            cachedAt: cachedAt,
            etag: etag,
            lastModified: lastModified,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ArticlesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ArticlesTable,
    Article,
    $$ArticlesTableFilterComposer,
    $$ArticlesTableOrderingComposer,
    $$ArticlesTableAnnotationComposer,
    $$ArticlesTableCreateCompanionBuilder,
    $$ArticlesTableUpdateCompanionBuilder,
    (Article, BaseReferences<_$AppDatabase, $ArticlesTable, Article>),
    Article,
    PrefetchHooks Function()>;
typedef $$CategoriesTableCreateCompanionBuilder = CategoriesCompanion Function({
  required String id,
  required String name,
  required String slug,
  Value<String?> parentCategoryId,
  required DateTime cachedAt,
  Value<int> rowid,
});
typedef $$CategoriesTableUpdateCompanionBuilder = CategoriesCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> slug,
  Value<String?> parentCategoryId,
  Value<DateTime> cachedAt,
  Value<int> rowid,
});

class $$CategoriesTableFilterComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get slug => $composableBuilder(
      column: $table.slug, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get parentCategoryId => $composableBuilder(
      column: $table.parentCategoryId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
      column: $table.cachedAt, builder: (column) => ColumnFilters(column));
}

class $$CategoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get slug => $composableBuilder(
      column: $table.slug, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get parentCategoryId => $composableBuilder(
      column: $table.parentCategoryId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
      column: $table.cachedAt, builder: (column) => ColumnOrderings(column));
}

class $$CategoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get slug =>
      $composableBuilder(column: $table.slug, builder: (column) => column);

  GeneratedColumn<String> get parentCategoryId => $composableBuilder(
      column: $table.parentCategoryId, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$CategoriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CategoriesTable,
    Category,
    $$CategoriesTableFilterComposer,
    $$CategoriesTableOrderingComposer,
    $$CategoriesTableAnnotationComposer,
    $$CategoriesTableCreateCompanionBuilder,
    $$CategoriesTableUpdateCompanionBuilder,
    (Category, BaseReferences<_$AppDatabase, $CategoriesTable, Category>),
    Category,
    PrefetchHooks Function()> {
  $$CategoriesTableTableManager(_$AppDatabase db, $CategoriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> slug = const Value.absent(),
            Value<String?> parentCategoryId = const Value.absent(),
            Value<DateTime> cachedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CategoriesCompanion(
            id: id,
            name: name,
            slug: slug,
            parentCategoryId: parentCategoryId,
            cachedAt: cachedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required String slug,
            Value<String?> parentCategoryId = const Value.absent(),
            required DateTime cachedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              CategoriesCompanion.insert(
            id: id,
            name: name,
            slug: slug,
            parentCategoryId: parentCategoryId,
            cachedAt: cachedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CategoriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CategoriesTable,
    Category,
    $$CategoriesTableFilterComposer,
    $$CategoriesTableOrderingComposer,
    $$CategoriesTableAnnotationComposer,
    $$CategoriesTableCreateCompanionBuilder,
    $$CategoriesTableUpdateCompanionBuilder,
    (Category, BaseReferences<_$AppDatabase, $CategoriesTable, Category>),
    Category,
    PrefetchHooks Function()>;
typedef $$TagsTableCreateCompanionBuilder = TagsCompanion Function({
  required String id,
  required String name,
  required String slug,
  required DateTime cachedAt,
  Value<int> rowid,
});
typedef $$TagsTableUpdateCompanionBuilder = TagsCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> slug,
  Value<DateTime> cachedAt,
  Value<int> rowid,
});

class $$TagsTableFilterComposer extends Composer<_$AppDatabase, $TagsTable> {
  $$TagsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get slug => $composableBuilder(
      column: $table.slug, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
      column: $table.cachedAt, builder: (column) => ColumnFilters(column));
}

class $$TagsTableOrderingComposer extends Composer<_$AppDatabase, $TagsTable> {
  $$TagsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get slug => $composableBuilder(
      column: $table.slug, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
      column: $table.cachedAt, builder: (column) => ColumnOrderings(column));
}

class $$TagsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TagsTable> {
  $$TagsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get slug =>
      $composableBuilder(column: $table.slug, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$TagsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TagsTable,
    Tag,
    $$TagsTableFilterComposer,
    $$TagsTableOrderingComposer,
    $$TagsTableAnnotationComposer,
    $$TagsTableCreateCompanionBuilder,
    $$TagsTableUpdateCompanionBuilder,
    (Tag, BaseReferences<_$AppDatabase, $TagsTable, Tag>),
    Tag,
    PrefetchHooks Function()> {
  $$TagsTableTableManager(_$AppDatabase db, $TagsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TagsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TagsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TagsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> slug = const Value.absent(),
            Value<DateTime> cachedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TagsCompanion(
            id: id,
            name: name,
            slug: slug,
            cachedAt: cachedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required String slug,
            required DateTime cachedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              TagsCompanion.insert(
            id: id,
            name: name,
            slug: slug,
            cachedAt: cachedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TagsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TagsTable,
    Tag,
    $$TagsTableFilterComposer,
    $$TagsTableOrderingComposer,
    $$TagsTableAnnotationComposer,
    $$TagsTableCreateCompanionBuilder,
    $$TagsTableUpdateCompanionBuilder,
    (Tag, BaseReferences<_$AppDatabase, $TagsTable, Tag>),
    Tag,
    PrefetchHooks Function()>;
typedef $$UserSessionsTableCreateCompanionBuilder = UserSessionsCompanion
    Function({
  required String id,
  required String backendUserId,
  Value<String?> email,
  required String displayName,
  Value<String?> avatarUrl,
  Value<bool> isLoggedIn,
  Value<DateTime?> lastLoginAt,
  Value<DateTime?> sessionTokenExpiry,
  Value<DateTime?> refreshTokenExpiry,
  Value<int> rowid,
});
typedef $$UserSessionsTableUpdateCompanionBuilder = UserSessionsCompanion
    Function({
  Value<String> id,
  Value<String> backendUserId,
  Value<String?> email,
  Value<String> displayName,
  Value<String?> avatarUrl,
  Value<bool> isLoggedIn,
  Value<DateTime?> lastLoginAt,
  Value<DateTime?> sessionTokenExpiry,
  Value<DateTime?> refreshTokenExpiry,
  Value<int> rowid,
});

class $$UserSessionsTableFilterComposer
    extends Composer<_$AppDatabase, $UserSessionsTable> {
  $$UserSessionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get backendUserId => $composableBuilder(
      column: $table.backendUserId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get avatarUrl => $composableBuilder(
      column: $table.avatarUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isLoggedIn => $composableBuilder(
      column: $table.isLoggedIn, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastLoginAt => $composableBuilder(
      column: $table.lastLoginAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get sessionTokenExpiry => $composableBuilder(
      column: $table.sessionTokenExpiry,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get refreshTokenExpiry => $composableBuilder(
      column: $table.refreshTokenExpiry,
      builder: (column) => ColumnFilters(column));
}

class $$UserSessionsTableOrderingComposer
    extends Composer<_$AppDatabase, $UserSessionsTable> {
  $$UserSessionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get backendUserId => $composableBuilder(
      column: $table.backendUserId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get avatarUrl => $composableBuilder(
      column: $table.avatarUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isLoggedIn => $composableBuilder(
      column: $table.isLoggedIn, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastLoginAt => $composableBuilder(
      column: $table.lastLoginAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get sessionTokenExpiry => $composableBuilder(
      column: $table.sessionTokenExpiry,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get refreshTokenExpiry => $composableBuilder(
      column: $table.refreshTokenExpiry,
      builder: (column) => ColumnOrderings(column));
}

class $$UserSessionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserSessionsTable> {
  $$UserSessionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get backendUserId => $composableBuilder(
      column: $table.backendUserId, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => column);

  GeneratedColumn<String> get avatarUrl =>
      $composableBuilder(column: $table.avatarUrl, builder: (column) => column);

  GeneratedColumn<bool> get isLoggedIn => $composableBuilder(
      column: $table.isLoggedIn, builder: (column) => column);

  GeneratedColumn<DateTime> get lastLoginAt => $composableBuilder(
      column: $table.lastLoginAt, builder: (column) => column);

  GeneratedColumn<DateTime> get sessionTokenExpiry => $composableBuilder(
      column: $table.sessionTokenExpiry, builder: (column) => column);

  GeneratedColumn<DateTime> get refreshTokenExpiry => $composableBuilder(
      column: $table.refreshTokenExpiry, builder: (column) => column);
}

class $$UserSessionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserSessionsTable,
    UserSession,
    $$UserSessionsTableFilterComposer,
    $$UserSessionsTableOrderingComposer,
    $$UserSessionsTableAnnotationComposer,
    $$UserSessionsTableCreateCompanionBuilder,
    $$UserSessionsTableUpdateCompanionBuilder,
    (
      UserSession,
      BaseReferences<_$AppDatabase, $UserSessionsTable, UserSession>
    ),
    UserSession,
    PrefetchHooks Function()> {
  $$UserSessionsTableTableManager(_$AppDatabase db, $UserSessionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserSessionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserSessionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserSessionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> backendUserId = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String> displayName = const Value.absent(),
            Value<String?> avatarUrl = const Value.absent(),
            Value<bool> isLoggedIn = const Value.absent(),
            Value<DateTime?> lastLoginAt = const Value.absent(),
            Value<DateTime?> sessionTokenExpiry = const Value.absent(),
            Value<DateTime?> refreshTokenExpiry = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserSessionsCompanion(
            id: id,
            backendUserId: backendUserId,
            email: email,
            displayName: displayName,
            avatarUrl: avatarUrl,
            isLoggedIn: isLoggedIn,
            lastLoginAt: lastLoginAt,
            sessionTokenExpiry: sessionTokenExpiry,
            refreshTokenExpiry: refreshTokenExpiry,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String backendUserId,
            Value<String?> email = const Value.absent(),
            required String displayName,
            Value<String?> avatarUrl = const Value.absent(),
            Value<bool> isLoggedIn = const Value.absent(),
            Value<DateTime?> lastLoginAt = const Value.absent(),
            Value<DateTime?> sessionTokenExpiry = const Value.absent(),
            Value<DateTime?> refreshTokenExpiry = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserSessionsCompanion.insert(
            id: id,
            backendUserId: backendUserId,
            email: email,
            displayName: displayName,
            avatarUrl: avatarUrl,
            isLoggedIn: isLoggedIn,
            lastLoginAt: lastLoginAt,
            sessionTokenExpiry: sessionTokenExpiry,
            refreshTokenExpiry: refreshTokenExpiry,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UserSessionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserSessionsTable,
    UserSession,
    $$UserSessionsTableFilterComposer,
    $$UserSessionsTableOrderingComposer,
    $$UserSessionsTableAnnotationComposer,
    $$UserSessionsTableCreateCompanionBuilder,
    $$UserSessionsTableUpdateCompanionBuilder,
    (
      UserSession,
      BaseReferences<_$AppDatabase, $UserSessionsTable, UserSession>
    ),
    UserSession,
    PrefetchHooks Function()>;
typedef $$FavoritesTableCreateCompanionBuilder = FavoritesCompanion Function({
  required String id,
  required String userId,
  required String targetType,
  required String targetId,
  required DateTime favoritedAt,
  Value<int> rowid,
});
typedef $$FavoritesTableUpdateCompanionBuilder = FavoritesCompanion Function({
  Value<String> id,
  Value<String> userId,
  Value<String> targetType,
  Value<String> targetId,
  Value<DateTime> favoritedAt,
  Value<int> rowid,
});

class $$FavoritesTableFilterComposer
    extends Composer<_$AppDatabase, $FavoritesTable> {
  $$FavoritesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get targetType => $composableBuilder(
      column: $table.targetType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get targetId => $composableBuilder(
      column: $table.targetId, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get favoritedAt => $composableBuilder(
      column: $table.favoritedAt, builder: (column) => ColumnFilters(column));
}

class $$FavoritesTableOrderingComposer
    extends Composer<_$AppDatabase, $FavoritesTable> {
  $$FavoritesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get targetType => $composableBuilder(
      column: $table.targetType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get targetId => $composableBuilder(
      column: $table.targetId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get favoritedAt => $composableBuilder(
      column: $table.favoritedAt, builder: (column) => ColumnOrderings(column));
}

class $$FavoritesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FavoritesTable> {
  $$FavoritesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get targetType => $composableBuilder(
      column: $table.targetType, builder: (column) => column);

  GeneratedColumn<String> get targetId =>
      $composableBuilder(column: $table.targetId, builder: (column) => column);

  GeneratedColumn<DateTime> get favoritedAt => $composableBuilder(
      column: $table.favoritedAt, builder: (column) => column);
}

class $$FavoritesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FavoritesTable,
    Favorite,
    $$FavoritesTableFilterComposer,
    $$FavoritesTableOrderingComposer,
    $$FavoritesTableAnnotationComposer,
    $$FavoritesTableCreateCompanionBuilder,
    $$FavoritesTableUpdateCompanionBuilder,
    (Favorite, BaseReferences<_$AppDatabase, $FavoritesTable, Favorite>),
    Favorite,
    PrefetchHooks Function()> {
  $$FavoritesTableTableManager(_$AppDatabase db, $FavoritesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FavoritesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FavoritesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FavoritesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String> targetType = const Value.absent(),
            Value<String> targetId = const Value.absent(),
            Value<DateTime> favoritedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FavoritesCompanion(
            id: id,
            userId: userId,
            targetType: targetType,
            targetId: targetId,
            favoritedAt: favoritedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required String targetType,
            required String targetId,
            required DateTime favoritedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              FavoritesCompanion.insert(
            id: id,
            userId: userId,
            targetType: targetType,
            targetId: targetId,
            favoritedAt: favoritedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$FavoritesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FavoritesTable,
    Favorite,
    $$FavoritesTableFilterComposer,
    $$FavoritesTableOrderingComposer,
    $$FavoritesTableAnnotationComposer,
    $$FavoritesTableCreateCompanionBuilder,
    $$FavoritesTableUpdateCompanionBuilder,
    (Favorite, BaseReferences<_$AppDatabase, $FavoritesTable, Favorite>),
    Favorite,
    PrefetchHooks Function()>;
typedef $$DraftsTableCreateCompanionBuilder = DraftsCompanion Function({
  required String id,
  required String userId,
  required String type,
  Value<String?> targetForumId,
  Value<String?> targetTopicId,
  Value<String?> title,
  required Uint8List contentHtml,
  required DateTime createdAt,
  required DateTime lastSavedAt,
  Value<String> status,
  Value<String?> errorMessage,
  Value<int> rowid,
});
typedef $$DraftsTableUpdateCompanionBuilder = DraftsCompanion Function({
  Value<String> id,
  Value<String> userId,
  Value<String> type,
  Value<String?> targetForumId,
  Value<String?> targetTopicId,
  Value<String?> title,
  Value<Uint8List> contentHtml,
  Value<DateTime> createdAt,
  Value<DateTime> lastSavedAt,
  Value<String> status,
  Value<String?> errorMessage,
  Value<int> rowid,
});

class $$DraftsTableFilterComposer
    extends Composer<_$AppDatabase, $DraftsTable> {
  $$DraftsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get targetForumId => $composableBuilder(
      column: $table.targetForumId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get targetTopicId => $composableBuilder(
      column: $table.targetTopicId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get contentHtml => $composableBuilder(
      column: $table.contentHtml, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastSavedAt => $composableBuilder(
      column: $table.lastSavedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get errorMessage => $composableBuilder(
      column: $table.errorMessage, builder: (column) => ColumnFilters(column));
}

class $$DraftsTableOrderingComposer
    extends Composer<_$AppDatabase, $DraftsTable> {
  $$DraftsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get targetForumId => $composableBuilder(
      column: $table.targetForumId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get targetTopicId => $composableBuilder(
      column: $table.targetTopicId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get contentHtml => $composableBuilder(
      column: $table.contentHtml, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastSavedAt => $composableBuilder(
      column: $table.lastSavedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get errorMessage => $composableBuilder(
      column: $table.errorMessage,
      builder: (column) => ColumnOrderings(column));
}

class $$DraftsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DraftsTable> {
  $$DraftsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get targetForumId => $composableBuilder(
      column: $table.targetForumId, builder: (column) => column);

  GeneratedColumn<String> get targetTopicId => $composableBuilder(
      column: $table.targetTopicId, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<Uint8List> get contentHtml => $composableBuilder(
      column: $table.contentHtml, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get lastSavedAt => $composableBuilder(
      column: $table.lastSavedAt, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get errorMessage => $composableBuilder(
      column: $table.errorMessage, builder: (column) => column);
}

class $$DraftsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DraftsTable,
    Draft,
    $$DraftsTableFilterComposer,
    $$DraftsTableOrderingComposer,
    $$DraftsTableAnnotationComposer,
    $$DraftsTableCreateCompanionBuilder,
    $$DraftsTableUpdateCompanionBuilder,
    (Draft, BaseReferences<_$AppDatabase, $DraftsTable, Draft>),
    Draft,
    PrefetchHooks Function()> {
  $$DraftsTableTableManager(_$AppDatabase db, $DraftsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DraftsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DraftsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DraftsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String?> targetForumId = const Value.absent(),
            Value<String?> targetTopicId = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<Uint8List> contentHtml = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> lastSavedAt = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> errorMessage = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DraftsCompanion(
            id: id,
            userId: userId,
            type: type,
            targetForumId: targetForumId,
            targetTopicId: targetTopicId,
            title: title,
            contentHtml: contentHtml,
            createdAt: createdAt,
            lastSavedAt: lastSavedAt,
            status: status,
            errorMessage: errorMessage,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required String type,
            Value<String?> targetForumId = const Value.absent(),
            Value<String?> targetTopicId = const Value.absent(),
            Value<String?> title = const Value.absent(),
            required Uint8List contentHtml,
            required DateTime createdAt,
            required DateTime lastSavedAt,
            Value<String> status = const Value.absent(),
            Value<String?> errorMessage = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DraftsCompanion.insert(
            id: id,
            userId: userId,
            type: type,
            targetForumId: targetForumId,
            targetTopicId: targetTopicId,
            title: title,
            contentHtml: contentHtml,
            createdAt: createdAt,
            lastSavedAt: lastSavedAt,
            status: status,
            errorMessage: errorMessage,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DraftsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DraftsTable,
    Draft,
    $$DraftsTableFilterComposer,
    $$DraftsTableOrderingComposer,
    $$DraftsTableAnnotationComposer,
    $$DraftsTableCreateCompanionBuilder,
    $$DraftsTableUpdateCompanionBuilder,
    (Draft, BaseReferences<_$AppDatabase, $DraftsTable, Draft>),
    Draft,
    PrefetchHooks Function()>;
typedef $$QueuedActionsTableCreateCompanionBuilder = QueuedActionsCompanion
    Function({
  required String id,
  required String userId,
  required String actionType,
  Value<String?> targetType,
  Value<String?> targetId,
  required Uint8List payload,
  required DateTime createdAt,
  Value<String> status,
  Value<int> retryCount,
  Value<DateTime?> lastAttemptAt,
  Value<String?> errorMessage,
  Value<int> rowid,
});
typedef $$QueuedActionsTableUpdateCompanionBuilder = QueuedActionsCompanion
    Function({
  Value<String> id,
  Value<String> userId,
  Value<String> actionType,
  Value<String?> targetType,
  Value<String?> targetId,
  Value<Uint8List> payload,
  Value<DateTime> createdAt,
  Value<String> status,
  Value<int> retryCount,
  Value<DateTime?> lastAttemptAt,
  Value<String?> errorMessage,
  Value<int> rowid,
});

class $$QueuedActionsTableFilterComposer
    extends Composer<_$AppDatabase, $QueuedActionsTable> {
  $$QueuedActionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get actionType => $composableBuilder(
      column: $table.actionType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get targetType => $composableBuilder(
      column: $table.targetType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get targetId => $composableBuilder(
      column: $table.targetId, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get payload => $composableBuilder(
      column: $table.payload, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get retryCount => $composableBuilder(
      column: $table.retryCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastAttemptAt => $composableBuilder(
      column: $table.lastAttemptAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get errorMessage => $composableBuilder(
      column: $table.errorMessage, builder: (column) => ColumnFilters(column));
}

class $$QueuedActionsTableOrderingComposer
    extends Composer<_$AppDatabase, $QueuedActionsTable> {
  $$QueuedActionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get actionType => $composableBuilder(
      column: $table.actionType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get targetType => $composableBuilder(
      column: $table.targetType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get targetId => $composableBuilder(
      column: $table.targetId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get payload => $composableBuilder(
      column: $table.payload, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get retryCount => $composableBuilder(
      column: $table.retryCount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastAttemptAt => $composableBuilder(
      column: $table.lastAttemptAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get errorMessage => $composableBuilder(
      column: $table.errorMessage,
      builder: (column) => ColumnOrderings(column));
}

class $$QueuedActionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $QueuedActionsTable> {
  $$QueuedActionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get actionType => $composableBuilder(
      column: $table.actionType, builder: (column) => column);

  GeneratedColumn<String> get targetType => $composableBuilder(
      column: $table.targetType, builder: (column) => column);

  GeneratedColumn<String> get targetId =>
      $composableBuilder(column: $table.targetId, builder: (column) => column);

  GeneratedColumn<Uint8List> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get retryCount => $composableBuilder(
      column: $table.retryCount, builder: (column) => column);

  GeneratedColumn<DateTime> get lastAttemptAt => $composableBuilder(
      column: $table.lastAttemptAt, builder: (column) => column);

  GeneratedColumn<String> get errorMessage => $composableBuilder(
      column: $table.errorMessage, builder: (column) => column);
}

class $$QueuedActionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $QueuedActionsTable,
    QueuedAction,
    $$QueuedActionsTableFilterComposer,
    $$QueuedActionsTableOrderingComposer,
    $$QueuedActionsTableAnnotationComposer,
    $$QueuedActionsTableCreateCompanionBuilder,
    $$QueuedActionsTableUpdateCompanionBuilder,
    (
      QueuedAction,
      BaseReferences<_$AppDatabase, $QueuedActionsTable, QueuedAction>
    ),
    QueuedAction,
    PrefetchHooks Function()> {
  $$QueuedActionsTableTableManager(_$AppDatabase db, $QueuedActionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$QueuedActionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$QueuedActionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$QueuedActionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String> actionType = const Value.absent(),
            Value<String?> targetType = const Value.absent(),
            Value<String?> targetId = const Value.absent(),
            Value<Uint8List> payload = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<int> retryCount = const Value.absent(),
            Value<DateTime?> lastAttemptAt = const Value.absent(),
            Value<String?> errorMessage = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              QueuedActionsCompanion(
            id: id,
            userId: userId,
            actionType: actionType,
            targetType: targetType,
            targetId: targetId,
            payload: payload,
            createdAt: createdAt,
            status: status,
            retryCount: retryCount,
            lastAttemptAt: lastAttemptAt,
            errorMessage: errorMessage,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required String actionType,
            Value<String?> targetType = const Value.absent(),
            Value<String?> targetId = const Value.absent(),
            required Uint8List payload,
            required DateTime createdAt,
            Value<String> status = const Value.absent(),
            Value<int> retryCount = const Value.absent(),
            Value<DateTime?> lastAttemptAt = const Value.absent(),
            Value<String?> errorMessage = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              QueuedActionsCompanion.insert(
            id: id,
            userId: userId,
            actionType: actionType,
            targetType: targetType,
            targetId: targetId,
            payload: payload,
            createdAt: createdAt,
            status: status,
            retryCount: retryCount,
            lastAttemptAt: lastAttemptAt,
            errorMessage: errorMessage,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$QueuedActionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $QueuedActionsTable,
    QueuedAction,
    $$QueuedActionsTableFilterComposer,
    $$QueuedActionsTableOrderingComposer,
    $$QueuedActionsTableAnnotationComposer,
    $$QueuedActionsTableCreateCompanionBuilder,
    $$QueuedActionsTableUpdateCompanionBuilder,
    (
      QueuedAction,
      BaseReferences<_$AppDatabase, $QueuedActionsTable, QueuedAction>
    ),
    QueuedAction,
    PrefetchHooks Function()>;
typedef $$MenstrualCycleResultsTableCreateCompanionBuilder
    = MenstrualCycleResultsCompanion Function({
  required String id,
  required String userId,
  required DateTime lmpDate,
  required int avgCycleLengthDays,
  Value<int?> periodLengthDays,
  Value<int?> variabilityDays,
  required Uint8List resultJson,
  required DateTime savedAt,
  Value<int> schemaVersion,
  Value<int> rowid,
});
typedef $$MenstrualCycleResultsTableUpdateCompanionBuilder
    = MenstrualCycleResultsCompanion Function({
  Value<String> id,
  Value<String> userId,
  Value<DateTime> lmpDate,
  Value<int> avgCycleLengthDays,
  Value<int?> periodLengthDays,
  Value<int?> variabilityDays,
  Value<Uint8List> resultJson,
  Value<DateTime> savedAt,
  Value<int> schemaVersion,
  Value<int> rowid,
});

class $$MenstrualCycleResultsTableFilterComposer
    extends Composer<_$AppDatabase, $MenstrualCycleResultsTable> {
  $$MenstrualCycleResultsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lmpDate => $composableBuilder(
      column: $table.lmpDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get avgCycleLengthDays => $composableBuilder(
      column: $table.avgCycleLengthDays,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get periodLengthDays => $composableBuilder(
      column: $table.periodLengthDays,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get variabilityDays => $composableBuilder(
      column: $table.variabilityDays,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get resultJson => $composableBuilder(
      column: $table.resultJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get savedAt => $composableBuilder(
      column: $table.savedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get schemaVersion => $composableBuilder(
      column: $table.schemaVersion, builder: (column) => ColumnFilters(column));
}

class $$MenstrualCycleResultsTableOrderingComposer
    extends Composer<_$AppDatabase, $MenstrualCycleResultsTable> {
  $$MenstrualCycleResultsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lmpDate => $composableBuilder(
      column: $table.lmpDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get avgCycleLengthDays => $composableBuilder(
      column: $table.avgCycleLengthDays,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get periodLengthDays => $composableBuilder(
      column: $table.periodLengthDays,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get variabilityDays => $composableBuilder(
      column: $table.variabilityDays,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get resultJson => $composableBuilder(
      column: $table.resultJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get savedAt => $composableBuilder(
      column: $table.savedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get schemaVersion => $composableBuilder(
      column: $table.schemaVersion,
      builder: (column) => ColumnOrderings(column));
}

class $$MenstrualCycleResultsTableAnnotationComposer
    extends Composer<_$AppDatabase, $MenstrualCycleResultsTable> {
  $$MenstrualCycleResultsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<DateTime> get lmpDate =>
      $composableBuilder(column: $table.lmpDate, builder: (column) => column);

  GeneratedColumn<int> get avgCycleLengthDays => $composableBuilder(
      column: $table.avgCycleLengthDays, builder: (column) => column);

  GeneratedColumn<int> get periodLengthDays => $composableBuilder(
      column: $table.periodLengthDays, builder: (column) => column);

  GeneratedColumn<int> get variabilityDays => $composableBuilder(
      column: $table.variabilityDays, builder: (column) => column);

  GeneratedColumn<Uint8List> get resultJson => $composableBuilder(
      column: $table.resultJson, builder: (column) => column);

  GeneratedColumn<DateTime> get savedAt =>
      $composableBuilder(column: $table.savedAt, builder: (column) => column);

  GeneratedColumn<int> get schemaVersion => $composableBuilder(
      column: $table.schemaVersion, builder: (column) => column);
}

class $$MenstrualCycleResultsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MenstrualCycleResultsTable,
    MenstrualCycleResult,
    $$MenstrualCycleResultsTableFilterComposer,
    $$MenstrualCycleResultsTableOrderingComposer,
    $$MenstrualCycleResultsTableAnnotationComposer,
    $$MenstrualCycleResultsTableCreateCompanionBuilder,
    $$MenstrualCycleResultsTableUpdateCompanionBuilder,
    (
      MenstrualCycleResult,
      BaseReferences<_$AppDatabase, $MenstrualCycleResultsTable,
          MenstrualCycleResult>
    ),
    MenstrualCycleResult,
    PrefetchHooks Function()> {
  $$MenstrualCycleResultsTableTableManager(
      _$AppDatabase db, $MenstrualCycleResultsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MenstrualCycleResultsTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$MenstrualCycleResultsTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MenstrualCycleResultsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<DateTime> lmpDate = const Value.absent(),
            Value<int> avgCycleLengthDays = const Value.absent(),
            Value<int?> periodLengthDays = const Value.absent(),
            Value<int?> variabilityDays = const Value.absent(),
            Value<Uint8List> resultJson = const Value.absent(),
            Value<DateTime> savedAt = const Value.absent(),
            Value<int> schemaVersion = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MenstrualCycleResultsCompanion(
            id: id,
            userId: userId,
            lmpDate: lmpDate,
            avgCycleLengthDays: avgCycleLengthDays,
            periodLengthDays: periodLengthDays,
            variabilityDays: variabilityDays,
            resultJson: resultJson,
            savedAt: savedAt,
            schemaVersion: schemaVersion,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required DateTime lmpDate,
            required int avgCycleLengthDays,
            Value<int?> periodLengthDays = const Value.absent(),
            Value<int?> variabilityDays = const Value.absent(),
            required Uint8List resultJson,
            required DateTime savedAt,
            Value<int> schemaVersion = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MenstrualCycleResultsCompanion.insert(
            id: id,
            userId: userId,
            lmpDate: lmpDate,
            avgCycleLengthDays: avgCycleLengthDays,
            periodLengthDays: periodLengthDays,
            variabilityDays: variabilityDays,
            resultJson: resultJson,
            savedAt: savedAt,
            schemaVersion: schemaVersion,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MenstrualCycleResultsTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $MenstrualCycleResultsTable,
        MenstrualCycleResult,
        $$MenstrualCycleResultsTableFilterComposer,
        $$MenstrualCycleResultsTableOrderingComposer,
        $$MenstrualCycleResultsTableAnnotationComposer,
        $$MenstrualCycleResultsTableCreateCompanionBuilder,
        $$MenstrualCycleResultsTableUpdateCompanionBuilder,
        (
          MenstrualCycleResult,
          BaseReferences<_$AppDatabase, $MenstrualCycleResultsTable,
              MenstrualCycleResult>
        ),
        MenstrualCycleResult,
        PrefetchHooks Function()>;
typedef $$PregnancyResultsTableCreateCompanionBuilder
    = PregnancyResultsCompanion Function({
  required String id,
  required String userId,
  Value<DateTime?> lmpDate,
  Value<DateTime?> usgDate,
  Value<int?> usgGaWeeks,
  Value<int?> usgGaDays,
  Value<String?> conceptionMethod,
  required Uint8List resultJson,
  required DateTime savedAt,
  Value<int> schemaVersion,
  Value<int> rowid,
});
typedef $$PregnancyResultsTableUpdateCompanionBuilder
    = PregnancyResultsCompanion Function({
  Value<String> id,
  Value<String> userId,
  Value<DateTime?> lmpDate,
  Value<DateTime?> usgDate,
  Value<int?> usgGaWeeks,
  Value<int?> usgGaDays,
  Value<String?> conceptionMethod,
  Value<Uint8List> resultJson,
  Value<DateTime> savedAt,
  Value<int> schemaVersion,
  Value<int> rowid,
});

class $$PregnancyResultsTableFilterComposer
    extends Composer<_$AppDatabase, $PregnancyResultsTable> {
  $$PregnancyResultsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lmpDate => $composableBuilder(
      column: $table.lmpDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get usgDate => $composableBuilder(
      column: $table.usgDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get usgGaWeeks => $composableBuilder(
      column: $table.usgGaWeeks, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get usgGaDays => $composableBuilder(
      column: $table.usgGaDays, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get conceptionMethod => $composableBuilder(
      column: $table.conceptionMethod,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get resultJson => $composableBuilder(
      column: $table.resultJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get savedAt => $composableBuilder(
      column: $table.savedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get schemaVersion => $composableBuilder(
      column: $table.schemaVersion, builder: (column) => ColumnFilters(column));
}

class $$PregnancyResultsTableOrderingComposer
    extends Composer<_$AppDatabase, $PregnancyResultsTable> {
  $$PregnancyResultsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lmpDate => $composableBuilder(
      column: $table.lmpDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get usgDate => $composableBuilder(
      column: $table.usgDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get usgGaWeeks => $composableBuilder(
      column: $table.usgGaWeeks, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get usgGaDays => $composableBuilder(
      column: $table.usgGaDays, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get conceptionMethod => $composableBuilder(
      column: $table.conceptionMethod,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get resultJson => $composableBuilder(
      column: $table.resultJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get savedAt => $composableBuilder(
      column: $table.savedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get schemaVersion => $composableBuilder(
      column: $table.schemaVersion,
      builder: (column) => ColumnOrderings(column));
}

class $$PregnancyResultsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PregnancyResultsTable> {
  $$PregnancyResultsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<DateTime> get lmpDate =>
      $composableBuilder(column: $table.lmpDate, builder: (column) => column);

  GeneratedColumn<DateTime> get usgDate =>
      $composableBuilder(column: $table.usgDate, builder: (column) => column);

  GeneratedColumn<int> get usgGaWeeks => $composableBuilder(
      column: $table.usgGaWeeks, builder: (column) => column);

  GeneratedColumn<int> get usgGaDays =>
      $composableBuilder(column: $table.usgGaDays, builder: (column) => column);

  GeneratedColumn<String> get conceptionMethod => $composableBuilder(
      column: $table.conceptionMethod, builder: (column) => column);

  GeneratedColumn<Uint8List> get resultJson => $composableBuilder(
      column: $table.resultJson, builder: (column) => column);

  GeneratedColumn<DateTime> get savedAt =>
      $composableBuilder(column: $table.savedAt, builder: (column) => column);

  GeneratedColumn<int> get schemaVersion => $composableBuilder(
      column: $table.schemaVersion, builder: (column) => column);
}

class $$PregnancyResultsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PregnancyResultsTable,
    PregnancyResult,
    $$PregnancyResultsTableFilterComposer,
    $$PregnancyResultsTableOrderingComposer,
    $$PregnancyResultsTableAnnotationComposer,
    $$PregnancyResultsTableCreateCompanionBuilder,
    $$PregnancyResultsTableUpdateCompanionBuilder,
    (
      PregnancyResult,
      BaseReferences<_$AppDatabase, $PregnancyResultsTable, PregnancyResult>
    ),
    PregnancyResult,
    PrefetchHooks Function()> {
  $$PregnancyResultsTableTableManager(
      _$AppDatabase db, $PregnancyResultsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PregnancyResultsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PregnancyResultsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PregnancyResultsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<DateTime?> lmpDate = const Value.absent(),
            Value<DateTime?> usgDate = const Value.absent(),
            Value<int?> usgGaWeeks = const Value.absent(),
            Value<int?> usgGaDays = const Value.absent(),
            Value<String?> conceptionMethod = const Value.absent(),
            Value<Uint8List> resultJson = const Value.absent(),
            Value<DateTime> savedAt = const Value.absent(),
            Value<int> schemaVersion = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PregnancyResultsCompanion(
            id: id,
            userId: userId,
            lmpDate: lmpDate,
            usgDate: usgDate,
            usgGaWeeks: usgGaWeeks,
            usgGaDays: usgGaDays,
            conceptionMethod: conceptionMethod,
            resultJson: resultJson,
            savedAt: savedAt,
            schemaVersion: schemaVersion,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            Value<DateTime?> lmpDate = const Value.absent(),
            Value<DateTime?> usgDate = const Value.absent(),
            Value<int?> usgGaWeeks = const Value.absent(),
            Value<int?> usgGaDays = const Value.absent(),
            Value<String?> conceptionMethod = const Value.absent(),
            required Uint8List resultJson,
            required DateTime savedAt,
            Value<int> schemaVersion = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PregnancyResultsCompanion.insert(
            id: id,
            userId: userId,
            lmpDate: lmpDate,
            usgDate: usgDate,
            usgGaWeeks: usgGaWeeks,
            usgGaDays: usgGaDays,
            conceptionMethod: conceptionMethod,
            resultJson: resultJson,
            savedAt: savedAt,
            schemaVersion: schemaVersion,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PregnancyResultsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PregnancyResultsTable,
    PregnancyResult,
    $$PregnancyResultsTableFilterComposer,
    $$PregnancyResultsTableOrderingComposer,
    $$PregnancyResultsTableAnnotationComposer,
    $$PregnancyResultsTableCreateCompanionBuilder,
    $$PregnancyResultsTableUpdateCompanionBuilder,
    (
      PregnancyResult,
      BaseReferences<_$AppDatabase, $PregnancyResultsTable, PregnancyResult>
    ),
    PregnancyResult,
    PrefetchHooks Function()>;
typedef $$BmiResultsTableCreateCompanionBuilder = BmiResultsCompanion Function({
  required String id,
  required String userId,
  required double heightCm,
  required double weightKg,
  required Uint8List resultJson,
  required DateTime savedAt,
  Value<int> schemaVersion,
  Value<int> rowid,
});
typedef $$BmiResultsTableUpdateCompanionBuilder = BmiResultsCompanion Function({
  Value<String> id,
  Value<String> userId,
  Value<double> heightCm,
  Value<double> weightKg,
  Value<Uint8List> resultJson,
  Value<DateTime> savedAt,
  Value<int> schemaVersion,
  Value<int> rowid,
});

class $$BmiResultsTableFilterComposer
    extends Composer<_$AppDatabase, $BmiResultsTable> {
  $$BmiResultsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get heightCm => $composableBuilder(
      column: $table.heightCm, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get weightKg => $composableBuilder(
      column: $table.weightKg, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get resultJson => $composableBuilder(
      column: $table.resultJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get savedAt => $composableBuilder(
      column: $table.savedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get schemaVersion => $composableBuilder(
      column: $table.schemaVersion, builder: (column) => ColumnFilters(column));
}

class $$BmiResultsTableOrderingComposer
    extends Composer<_$AppDatabase, $BmiResultsTable> {
  $$BmiResultsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get heightCm => $composableBuilder(
      column: $table.heightCm, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get weightKg => $composableBuilder(
      column: $table.weightKg, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get resultJson => $composableBuilder(
      column: $table.resultJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get savedAt => $composableBuilder(
      column: $table.savedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get schemaVersion => $composableBuilder(
      column: $table.schemaVersion,
      builder: (column) => ColumnOrderings(column));
}

class $$BmiResultsTableAnnotationComposer
    extends Composer<_$AppDatabase, $BmiResultsTable> {
  $$BmiResultsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<double> get heightCm =>
      $composableBuilder(column: $table.heightCm, builder: (column) => column);

  GeneratedColumn<double> get weightKg =>
      $composableBuilder(column: $table.weightKg, builder: (column) => column);

  GeneratedColumn<Uint8List> get resultJson => $composableBuilder(
      column: $table.resultJson, builder: (column) => column);

  GeneratedColumn<DateTime> get savedAt =>
      $composableBuilder(column: $table.savedAt, builder: (column) => column);

  GeneratedColumn<int> get schemaVersion => $composableBuilder(
      column: $table.schemaVersion, builder: (column) => column);
}

class $$BmiResultsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BmiResultsTable,
    BmiResult,
    $$BmiResultsTableFilterComposer,
    $$BmiResultsTableOrderingComposer,
    $$BmiResultsTableAnnotationComposer,
    $$BmiResultsTableCreateCompanionBuilder,
    $$BmiResultsTableUpdateCompanionBuilder,
    (BmiResult, BaseReferences<_$AppDatabase, $BmiResultsTable, BmiResult>),
    BmiResult,
    PrefetchHooks Function()> {
  $$BmiResultsTableTableManager(_$AppDatabase db, $BmiResultsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BmiResultsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BmiResultsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BmiResultsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<double> heightCm = const Value.absent(),
            Value<double> weightKg = const Value.absent(),
            Value<Uint8List> resultJson = const Value.absent(),
            Value<DateTime> savedAt = const Value.absent(),
            Value<int> schemaVersion = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BmiResultsCompanion(
            id: id,
            userId: userId,
            heightCm: heightCm,
            weightKg: weightKg,
            resultJson: resultJson,
            savedAt: savedAt,
            schemaVersion: schemaVersion,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required double heightCm,
            required double weightKg,
            required Uint8List resultJson,
            required DateTime savedAt,
            Value<int> schemaVersion = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BmiResultsCompanion.insert(
            id: id,
            userId: userId,
            heightCm: heightCm,
            weightKg: weightKg,
            resultJson: resultJson,
            savedAt: savedAt,
            schemaVersion: schemaVersion,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BmiResultsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BmiResultsTable,
    BmiResult,
    $$BmiResultsTableFilterComposer,
    $$BmiResultsTableOrderingComposer,
    $$BmiResultsTableAnnotationComposer,
    $$BmiResultsTableCreateCompanionBuilder,
    $$BmiResultsTableUpdateCompanionBuilder,
    (BmiResult, BaseReferences<_$AppDatabase, $BmiResultsTable, BmiResult>),
    BmiResult,
    PrefetchHooks Function()>;
typedef $$SearchHistoryTableCreateCompanionBuilder = SearchHistoryCompanion
    Function({
  required String id,
  required String userId,
  required String query,
  required DateTime searchedAt,
  Value<int> rowid,
});
typedef $$SearchHistoryTableUpdateCompanionBuilder = SearchHistoryCompanion
    Function({
  Value<String> id,
  Value<String> userId,
  Value<String> query,
  Value<DateTime> searchedAt,
  Value<int> rowid,
});

class $$SearchHistoryTableFilterComposer
    extends Composer<_$AppDatabase, $SearchHistoryTable> {
  $$SearchHistoryTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get query => $composableBuilder(
      column: $table.query, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get searchedAt => $composableBuilder(
      column: $table.searchedAt, builder: (column) => ColumnFilters(column));
}

class $$SearchHistoryTableOrderingComposer
    extends Composer<_$AppDatabase, $SearchHistoryTable> {
  $$SearchHistoryTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get query => $composableBuilder(
      column: $table.query, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get searchedAt => $composableBuilder(
      column: $table.searchedAt, builder: (column) => ColumnOrderings(column));
}

class $$SearchHistoryTableAnnotationComposer
    extends Composer<_$AppDatabase, $SearchHistoryTable> {
  $$SearchHistoryTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get query =>
      $composableBuilder(column: $table.query, builder: (column) => column);

  GeneratedColumn<DateTime> get searchedAt => $composableBuilder(
      column: $table.searchedAt, builder: (column) => column);
}

class $$SearchHistoryTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SearchHistoryTable,
    SearchHistoryData,
    $$SearchHistoryTableFilterComposer,
    $$SearchHistoryTableOrderingComposer,
    $$SearchHistoryTableAnnotationComposer,
    $$SearchHistoryTableCreateCompanionBuilder,
    $$SearchHistoryTableUpdateCompanionBuilder,
    (
      SearchHistoryData,
      BaseReferences<_$AppDatabase, $SearchHistoryTable, SearchHistoryData>
    ),
    SearchHistoryData,
    PrefetchHooks Function()> {
  $$SearchHistoryTableTableManager(_$AppDatabase db, $SearchHistoryTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SearchHistoryTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SearchHistoryTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SearchHistoryTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String> query = const Value.absent(),
            Value<DateTime> searchedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SearchHistoryCompanion(
            id: id,
            userId: userId,
            query: query,
            searchedAt: searchedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required String query,
            required DateTime searchedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              SearchHistoryCompanion.insert(
            id: id,
            userId: userId,
            query: query,
            searchedAt: searchedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SearchHistoryTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SearchHistoryTable,
    SearchHistoryData,
    $$SearchHistoryTableFilterComposer,
    $$SearchHistoryTableOrderingComposer,
    $$SearchHistoryTableAnnotationComposer,
    $$SearchHistoryTableCreateCompanionBuilder,
    $$SearchHistoryTableUpdateCompanionBuilder,
    (
      SearchHistoryData,
      BaseReferences<_$AppDatabase, $SearchHistoryTable, SearchHistoryData>
    ),
    SearchHistoryData,
    PrefetchHooks Function()>;
typedef $$ConsentRecordsTableCreateCompanionBuilder = ConsentRecordsCompanion
    Function({
  required String id,
  required String userId,
  required String consentType,
  required String status,
  required DateTime givenAt,
  Value<DateTime?> withdrawnAt,
  Value<String?> policyVersion,
  Value<int> rowid,
});
typedef $$ConsentRecordsTableUpdateCompanionBuilder = ConsentRecordsCompanion
    Function({
  Value<String> id,
  Value<String> userId,
  Value<String> consentType,
  Value<String> status,
  Value<DateTime> givenAt,
  Value<DateTime?> withdrawnAt,
  Value<String?> policyVersion,
  Value<int> rowid,
});

class $$ConsentRecordsTableFilterComposer
    extends Composer<_$AppDatabase, $ConsentRecordsTable> {
  $$ConsentRecordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get consentType => $composableBuilder(
      column: $table.consentType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get givenAt => $composableBuilder(
      column: $table.givenAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get withdrawnAt => $composableBuilder(
      column: $table.withdrawnAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get policyVersion => $composableBuilder(
      column: $table.policyVersion, builder: (column) => ColumnFilters(column));
}

class $$ConsentRecordsTableOrderingComposer
    extends Composer<_$AppDatabase, $ConsentRecordsTable> {
  $$ConsentRecordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get consentType => $composableBuilder(
      column: $table.consentType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get givenAt => $composableBuilder(
      column: $table.givenAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get withdrawnAt => $composableBuilder(
      column: $table.withdrawnAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get policyVersion => $composableBuilder(
      column: $table.policyVersion,
      builder: (column) => ColumnOrderings(column));
}

class $$ConsentRecordsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ConsentRecordsTable> {
  $$ConsentRecordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get consentType => $composableBuilder(
      column: $table.consentType, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get givenAt =>
      $composableBuilder(column: $table.givenAt, builder: (column) => column);

  GeneratedColumn<DateTime> get withdrawnAt => $composableBuilder(
      column: $table.withdrawnAt, builder: (column) => column);

  GeneratedColumn<String> get policyVersion => $composableBuilder(
      column: $table.policyVersion, builder: (column) => column);
}

class $$ConsentRecordsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ConsentRecordsTable,
    ConsentRecord,
    $$ConsentRecordsTableFilterComposer,
    $$ConsentRecordsTableOrderingComposer,
    $$ConsentRecordsTableAnnotationComposer,
    $$ConsentRecordsTableCreateCompanionBuilder,
    $$ConsentRecordsTableUpdateCompanionBuilder,
    (
      ConsentRecord,
      BaseReferences<_$AppDatabase, $ConsentRecordsTable, ConsentRecord>
    ),
    ConsentRecord,
    PrefetchHooks Function()> {
  $$ConsentRecordsTableTableManager(
      _$AppDatabase db, $ConsentRecordsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ConsentRecordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ConsentRecordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ConsentRecordsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String> consentType = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<DateTime> givenAt = const Value.absent(),
            Value<DateTime?> withdrawnAt = const Value.absent(),
            Value<String?> policyVersion = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ConsentRecordsCompanion(
            id: id,
            userId: userId,
            consentType: consentType,
            status: status,
            givenAt: givenAt,
            withdrawnAt: withdrawnAt,
            policyVersion: policyVersion,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required String consentType,
            required String status,
            required DateTime givenAt,
            Value<DateTime?> withdrawnAt = const Value.absent(),
            Value<String?> policyVersion = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ConsentRecordsCompanion.insert(
            id: id,
            userId: userId,
            consentType: consentType,
            status: status,
            givenAt: givenAt,
            withdrawnAt: withdrawnAt,
            policyVersion: policyVersion,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ConsentRecordsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ConsentRecordsTable,
    ConsentRecord,
    $$ConsentRecordsTableFilterComposer,
    $$ConsentRecordsTableOrderingComposer,
    $$ConsentRecordsTableAnnotationComposer,
    $$ConsentRecordsTableCreateCompanionBuilder,
    $$ConsentRecordsTableUpdateCompanionBuilder,
    (
      ConsentRecord,
      BaseReferences<_$AppDatabase, $ConsentRecordsTable, ConsentRecord>
    ),
    ConsentRecord,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ArticlesTableTableManager get articles =>
      $$ArticlesTableTableManager(_db, _db.articles);
  $$CategoriesTableTableManager get categories =>
      $$CategoriesTableTableManager(_db, _db.categories);
  $$TagsTableTableManager get tags => $$TagsTableTableManager(_db, _db.tags);
  $$UserSessionsTableTableManager get userSessions =>
      $$UserSessionsTableTableManager(_db, _db.userSessions);
  $$FavoritesTableTableManager get favorites =>
      $$FavoritesTableTableManager(_db, _db.favorites);
  $$DraftsTableTableManager get drafts =>
      $$DraftsTableTableManager(_db, _db.drafts);
  $$QueuedActionsTableTableManager get queuedActions =>
      $$QueuedActionsTableTableManager(_db, _db.queuedActions);
  $$MenstrualCycleResultsTableTableManager get menstrualCycleResults =>
      $$MenstrualCycleResultsTableTableManager(_db, _db.menstrualCycleResults);
  $$PregnancyResultsTableTableManager get pregnancyResults =>
      $$PregnancyResultsTableTableManager(_db, _db.pregnancyResults);
  $$BmiResultsTableTableManager get bmiResults =>
      $$BmiResultsTableTableManager(_db, _db.bmiResults);
  $$SearchHistoryTableTableManager get searchHistory =>
      $$SearchHistoryTableTableManager(_db, _db.searchHistory);
  $$ConsentRecordsTableTableManager get consentRecords =>
      $$ConsentRecordsTableTableManager(_db, _db.consentRecords);
}
