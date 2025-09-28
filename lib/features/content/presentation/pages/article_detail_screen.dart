import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/app_localizations.dart';

class ArticleDetailScreen extends StatefulWidget {
  final String articleId;
  
  const ArticleDetailScreen({
    super.key,
    required this.articleId,
  });

  @override
  State<ArticleDetailScreen> createState() => _ArticleDetailScreenState();
}

class _ArticleDetailScreenState extends State<ArticleDetailScreen> {
  bool _isFavorited = false;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: AppColors.primaryGradient,
                ),
                child: const Center(
                  child: Icon(
                    Icons.article,
                    size: 80,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  _isFavorited ? Icons.favorite : Icons.favorite_border,
                  color: _isFavorited ? AppColors.error : null,
                ),
                onPressed: _toggleFavorite,
              ),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: _shareArticle,
              ),
            ],
          ),
          
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Category and read time
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColors.pregnancyColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Gebelik',
                          style: AppTextStyles.labelSmall,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '5 dk okuma',
                        style: AppTextStyles.labelMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  
                  // Article title
                  Text(
                    'Hamilelik Döneminde Beslenme: Sağlıklı Bir Gebelik İçin Rehber',
                    style: AppTextStyles.articleTitle,
                  ),
                  const SizedBox(height: 8),
                  
                  // Author and date
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 16,
                        backgroundColor: AppColors.surfaceVariant,
                        child: Icon(Icons.person, size: 20),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Ayşe Yılmaz',
                            style: AppTextStyles.labelMedium,
                          ),
                          Text(
                            '15 Mart 2024',
                            style: AppTextStyles.caption,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  
                  // Medical disclaimer
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.info.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.info.withOpacity(0.3)),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: AppColors.info,
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Bu içerik bilgilendirme amaçlıdır; kişisel durumunuz için hekiminize danışın.',
                            style: AppTextStyles.caption.copyWith(color: AppColors.info),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  
                  // Article content
                  Html(
                    data: _getArticleContent(),
                    style: {
                      "p": Style(
                        fontSize: FontSize(16),
                        lineHeight: const LineHeight(1.6),
                        margin: Margins.only(bottom: 16),
                      ),
                      "h2": Style(
                        fontSize: FontSize(20),
                        fontWeight: FontWeight.bold,
                        margin: Margins.only(top: 24, bottom: 12),
                      ),
                      "h3": Style(
                        fontSize: FontSize(18),
                        fontWeight: FontWeight.w600,
                        margin: Margins.only(top: 20, bottom: 8),
                      ),
                      "ul": Style(
                        margin: Margins.only(bottom: 16),
                      ),
                      "li": Style(
                        margin: Margins.only(bottom: 4),
                      ),
                    },
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // Related articles
                  Text(
                    'İlgili Yazılar',
                    style: AppTextStyles.headlineSmall,
                  ),
                  const SizedBox(height: 16),
                  
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    separatorBuilder: (context, index) => const SizedBox(height: 12),
                    itemBuilder: (context, index) => _buildRelatedArticleCard(index),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRelatedArticleCard(int index) {
    return Card(
      child: InkWell(
        onTap: () {
          // TODO: Navigate to related article
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.surfaceVariant,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.article,
                  color: AppColors.onSurfaceVariant,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gebelikte Spor ve Egzersiz',
                      style: AppTextStyles.titleSmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '3 dk okuma',
                      style: AppTextStyles.caption,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          _isFavorited ? 'Favorilere eklendi' : 'Favorilerden çıkarıldı',
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _shareArticle() {
    // TODO: Implement share functionality
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Makale paylaşıldı'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  String _getArticleContent() {
    return '''
    <p>Hamilelik döneminde doğru beslenme, hem annenin hem de bebeğin sağlığı için kritik öneme sahiptir. Bu rehberde, sağlıklı bir gebelik için bilinmesi gereken beslenme kurallarını ele alacağız.</p>
    
    <h2>Hamilelikte Beslenmenin Önemi</h2>
    <p>Gebelik süresince vücudunuz, bebeğinizin büyümesi ve gelişmesi için extra besin maddelerine ihtiyaç duyar. Doğru beslenme alışkanlıkları:</p>
    
    <ul>
      <li>Bebeğin sağlıklı gelişimini destekler</li>
      <li>Doğum komplikasyonlarını azaltır</li>
      <li>Annenin enerji seviyesini korur</li>
      <li>Doğum sonrası toparlanmayı hızlandırır</li>
    </ul>
    
    <h2>Temel Besin Maddeleri</h2>
    
    <h3>Folik Asit</h3>
    <p>Bebeğin sinir sistemi gelişimi için kritik olan folik asit, özellikle gebeliğin ilk 12 haftasında çok önemlidir. Yeşil yapraklı sebzeler, baklagiller ve tahıllar iyi birer folik asit kaynağıdır.</p>
    
    <h3>Demir</h3>
    <p>Gebelik süresince kan hacmi arttığı için demir ihtiyacı da artar. Kırmızı et, tavuk, balık, mercimek ve ıspanak demir açısından zengin besinlerdir.</p>
    
    <h3>Kalsiyum</h3>
    <p>Bebeğin kemik ve diş gelişimi için kalsiyum gereklidir. Süt ürünleri, yeşil yapraklı sebzeler ve susam en iyi kalsiyum kaynaklarıdır.</p>
    
    <h2>Kaçınılması Gereken Besinler</h2>
    <p>Gebelik süresince bazı besinlerden kaçınmak önemlidir:</p>
    
    <ul>
      <li>Çiğ veya az pişmiş et ve balık</li>
      <li>Alkol</li>
      <li>Aşırı kafein</li>
      <li>İşlenmiş gıdalar</li>
    </ul>
    
    <p><strong>Unutmayın:</strong> Her gebelik farklıdır. Kişisel beslenme planınız için mutlaka doktorunuza danışın.</p>
    ''';
  }
}
