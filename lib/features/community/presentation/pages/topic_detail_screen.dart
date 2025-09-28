import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/app_localizations.dart';

class TopicDetailScreen extends StatefulWidget {
  final String topicId;
  
  const TopicDetailScreen({
    super.key,
    required this.topicId,
  });

  @override
  State<TopicDetailScreen> createState() => _TopicDetailScreenState();
}

class _TopicDetailScreenState extends State<TopicDetailScreen> {
  final TextEditingController _replyController = TextEditingController();
  final FocusNode _replyFocusNode = FocusNode();
  bool _isAnonymous = false;

  @override
  void dispose() {
    _replyController.dispose();
    _replyFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Konu Detayı'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'report') {
                _showReportDialog();
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'report',
                child: Text('Şikayet Et'),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                // Original topic post
                SliverToBoxAdapter(
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.primary.withOpacity(0.2)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: AppColors.surfaceVariant,
                              child: Icon(Icons.person, size: 20),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ayşe34',
                                    style: AppTextStyles.labelLarge,
                                  ),
                                  Text(
                                    '2 saat önce',
                                    style: AppTextStyles.caption,
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.favorite_border),
                              onPressed: () {
                                // TODO: Toggle like
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'İlk Hamileliğimde Endişelerim',
                          style: AppTextStyles.titleLarge,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Merhaba anneler, ilk hamileliğimde 8. haftadayım ve çok endişeli hissediyorum. Normal mi bu durum? Sizler nasıl başa çıktınız?',
                          style: AppTextStyles.bodyMedium,
                        ),
                        const SizedBox(height: 12),
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
                              '5 yanıt',
                              style: AppTextStyles.caption,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                
                // Replies
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => _buildReplyCard(index),
                    childCount: 5,
                  ),
                ),
              ],
            ),
          ),
          
          // Reply input
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.surface,
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Switch(
                        value: _isAnonymous,
                        onChanged: (value) {
                          setState(() {
                            _isAnonymous = value;
                          });
                        },
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Anonim yanıt',
                        style: AppTextStyles.labelMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _replyController,
                          focusNode: _replyFocusNode,
                          maxLines: 3,
                          minLines: 1,
                          decoration: const InputDecoration(
                            hintText: 'Yanıtınızı yazın...',
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        icon: const Icon(Icons.send),
                        onPressed: _sendReply,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReplyCard(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 16,
                backgroundColor: AppColors.surface,
                child: Icon(Icons.person, size: 16),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Merve2023',
                      style: AppTextStyles.labelMedium,
                    ),
                    Text(
                      '1 saat önce',
                      style: AppTextStyles.caption,
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border, size: 16),
                onPressed: () {
                  // TODO: Toggle like
                },
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Bu tamamen normal! Ben de ilk hamileliğimde çok endişeliydim. Hekiminle konuş, seni rahatlatacaktır.',
            style: AppTextStyles.bodySmall,
          ),
        ],
      ),
    );
  }

  void _sendReply() {
    final content = _replyController.text.trim();
    if (content.isNotEmpty) {
      // TODO: Send reply to backend
      _replyController.clear();
      _replyFocusNode.unfocus();
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Yanıtınız gönderildi'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  void _showReportDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('İçeriği Şikayet Et'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('Spam'),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: const Text('Taciz'),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: const Text('Uygunsuz İçerik'),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: const Text('Yanlış Bilgi'),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('İptal'),
          ),
        ],
      ),
    );
  }
}
