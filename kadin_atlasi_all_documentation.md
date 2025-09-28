# Kadın Atlası

## Project Description
Kadın Atlası is a mobile content and community app for women in Turkey. It curates trustworthy articles and guides (health, pregnancy, fitness, psychology, beauty, astrology), provides a supportive forum, and offers a small set of wellness calculators (e.g., menstrual cycle, pregnancy week, BMI). There is no e-commerce and no courses in scope. The experience is privacy-first, accessible, and designed for everyday, on-the-go use.

Purpose & Goals
	•	Purpose: Deliver reliable, easy-to-consume guidance and a moderated peer community around women’s health and lifestyle topics.
	•	Primary goals:
	1.	Increase daily/weekly engagement via helpful content and notifications.
	2.	Enable supportive discussions in a safe, well-moderated forum.
	3.	Provide quick calculators for common needs (cycle dates, due date, BMI).
	4.	Prioritize privacy (KVKK/GDPR), clarity, and accessibility.

Target Audience
	•	Women primarily in Turkey, Turkish language first (phone-first UX).
	•	Segments: general lifestyle & wellness readers, pregnant users seeking week-by-week guidance, users interested in fitness/diet, beauty & care, psychology & life, and astrology.
	•	Accessibility needs: scalable text, high contrast, screen reader support.

Key Features (MVP)
	1.	Explore (Content Feed)
	•	Home feed with featured & latest articles; category filters (Pregnancy, Fitness & Diet, Psychology & Life, Beauty & Care, Astrology).
	•	Article detail: title, cover image, body (HTML), related posts, author info, read time, share, favorite.
	2.	Community (Forum)
	•	Category → Topic list → Topic detail (posts, replies).
	•	Authenticated actions: create topic, reply, like, report.
	•	Moderation basics: report queue, lock/pin topics, rate limiting, profanity filter.
	3.	Calculators
	•	Menstrual Cycle: last period date + cycle length → next expected dates.
	•	Pregnancy Week & Due Date: LMP/USG inputs → current week + EDD.
	•	BMI: height, weight → category + friendly explanation.
	•	Local save of last results (opt-in), medical disclaimer (“not medical advice”).
	4.	Pregnancy Guide
	•	Week-by-week educational content; optional weekly push notifications (“You’re at week X”).
	•	(Optional v1.1) Local notes/measurements/appointments stored encrypted on device.
	5.	Search
	•	Global search across articles and forum topics; recent searches and popular tags.
	6.	Profile & Settings
	•	Sign up / Sign in (email & password; optional Apple/Google if available).
	•	Manage favorites, forum activity, notification preferences.
	•	Privacy controls (data export/delete requests), account deletion flow.
	7.	Support
	•	FAQ (static pages) and a simple contact form (rate-limited + CAPTCHA).

Explicitly Out of Scope (for this project)
	•	Shop / E-commerce (no product listings, cart, or payments).
	•	Courses / Learning Management (no course lists, enrollments, or progress).
	•	Direct Messaging between users (can be considered later).
	•	Collection of health data in the cloud without explicit consent.

Non-Functional Requirements
	•	Privacy & Compliance: KVKK/GDPR, explicit consent, clear privacy policy, data minimization.
	•	Security: Tokens and sensitive prefs in Keychain/Keystore; local pregnancy notes encrypted.
	•	Performance & Offline: Fast perceived load (skeleton UIs), HTTP caching; read-only content works offline where possible.
	•	Accessibility: WCAG-aligned; scalable fonts; min 44dp touch targets; VoiceOver/TalkBack.
	•	Notifications: Opt-in only; topics like daily astrology and weekly pregnancy updates.
	•	Localization: Turkish first; architecture ready for future languages.

Platform & Integration Assumptions
	•	Mobile only: iOS and Android, phone-first layouts.
	•	Architecture: Clean Architecture with presentation/domain/data layers.
	•	Tech (suggested): Flutter + Riverpod/BLoC, Dio (network), Drift/SQLite (cache), SecureStorage (tokens).
	•	Content APIs: Consume existing website’s headless CMS endpoints (e.g., WordPress REST for posts/categories/tags; bbPress endpoint or custom API for forum). If a stable forum API isn’t available, provide a thin backend adapter.
	•	Analytics: Privacy-safe events; crash reporting; remote config for small experiments.

Success Metrics (examples)
	•	DAU/WAU, content completion rate, forum participation per active user, calculator usage frequency, D1/D7 retention, notification opt-in rate, user-reported safety (low abuse reports).

Future Enhancements (post-MVP)
	•	Personal pregnancy tracking (encrypted, with calendar reminders).
	•	Rich media in forum posts (images), advanced moderation tooling.
	•	Personalization (follow categories, smarter recommendations).
	•	Multi-language support (EN/DE), optional DM after clear safety design.

## Product Requirements Document
Kadın Atlası - Product Requirements Document (PRD)

Version: 1.0
Date: 2024-03-08
Author: [Your Name/Team Name]

1. Introduction

1.1. Project Name: Kadın Atlası (Women's Atlas)

1.2. Executive Summary
Kadın Atlası is a privacy-first mobile content and community application for women in Turkey. It aims to be a trusted digital companion, offering reliable articles and guides across diverse women's health and lifestyle topics, a supportive moderated forum, and practical wellness calculators. The app prioritizes accessibility, cultural relevance, and an on-the-go user experience, without venturing into e-commerce or online courses in its initial release.

1.3. Purpose & Goals
	* Purpose: To deliver reliable, easy-to-consume guidance and a moderated peer community around women’s health and lifestyle topics in Turkey.
	* Primary Goals:
		1. Increase daily/weekly engagement via helpful, culturally relevant content and personalized notifications.
		2. Enable supportive, safe discussions in a well-moderated, women-first forum environment.
		3. Provide quick, accurate, and disclaimed calculators for common needs (menstrual cycle dates, pregnancy week/due date, BMI).
		4. Prioritize user privacy (KVKK/GDPR compliance), clarity in communication, and accessibility for all users.

1.4. Target Audience
	* Primary Demographic: Women predominantly in Turkey, with Turkish as the primary language and a phone-first user experience.
	* User Segments:
		* General lifestyle & wellness readers: Seeking trustworthy information on daily health, well-being, and personal development.
		* Pregnant users: Looking for week-by-week guidance, peer support, and tools related to pregnancy and maternity.
		* Users interested in specific topics: Fitness & Diet, Beauty & Care, Psychology & Life, and Astrology.
	* Accessibility Needs: The application must support scalable text (dynamic type), high contrast modes, and screen reader technologies (VoiceOver/TalkBack) to be inclusive.

2. Scope

2.1. In-Scope Features (Minimum Viable Product - MVP)
	1. Explore (Content Feed)
		* Home Feed: Displays featured and latest articles. Content is organized by categories (Pregnancy, Fitness & Diet, Psychology & Life, Beauty & Care, Astrology) with clear filtering options.
		* Article Detail View: Each article includes a title, cover image, formatted body text (HTML), related posts for further reading, author information, estimated read time, and options to share and favorite.
	2. Community (Forum)
		* Navigation: Users can browse by category, view a list of topics within a category, and then dive into a specific topic to read posts and replies.
		* Authenticated Actions: Signed-in users can create new topics, reply to existing posts, "like" posts/topics, and report inappropriate content.
		* Moderation Basics: Basic moderation tools will be in place, including a report queue for moderators, ability to lock or pin topics, rate limiting for user posts, and a profanity filter for content submission.
	3. Calculators
		* Menstrual Cycle Calculator: Users input their last period date and average cycle length to estimate next expected period dates, ovulation, and fertile windows.
		* Pregnancy Week & Due Date Calculator: Users provide their Last Menstrual Period (LMP) or Ultrasound (USG) dating inputs to determine their current pregnancy week and Estimated Due Date (EDD).
		* BMI Calculator: Users input height and weight to calculate their Body Mass Index (BMI), classify it into standard categories, and receive a friendly explanation.
		* Local Save: Users have an opt-in option to locally save their last calculator results on the device.
		* Medical Disclaimer: All calculator outputs will explicitly state that they are "not medical advice" and for informational purposes only.
	4. Pregnancy Guide
		* Week-by-Week Content: Provides curated educational content tailored to each week of pregnancy.
		* Optional Notifications: Users can opt-in to weekly push notifications (e.g., “You’re at week X”) relevant to their stage of pregnancy.
		* (Optional v1.1) Local Notes: Future enhancement to allow users to store encrypted, local notes, measurements, or appointment reminders on their device.
	5. Search
		* Global Search: Allows users to search across both articles and forum topics.
		* Search History & Tags: Displays recent searches and popular tags to aid discovery.
	6. Profile & Settings
		* Authentication: Supports sign-up and sign-in via email and password. Optional Apple/Google sign-in will be considered if feasible and secure.
		* Management: Users can manage their favorited content, view their forum activity, and customize notification preferences.
		* Privacy Controls: Provides clear controls for data export/delete requests and a streamlined account deletion flow.
	7. Support
		* FAQ: A section with static pages containing frequently asked questions.
		* Contact Form: A simple, rate-limited contact form with CAPTCHA for user support inquiries.

2.2. Explicitly Out of Scope (for this project's MVP)
	* Shop / E-commerce: No product listings, shopping cart, or payment functionalities.
	* Courses / Learning Management: No course lists, enrollments, or progress tracking features.
	* Direct Messaging between users: This feature is explicitly excluded from MVP but may be considered in future phases after careful safety and moderation design.
	* Collection of health data in the cloud: No health data will be collected or stored in the cloud without explicit, granular user consent, and this is out of scope for MVP.

3. Functional Requirements (Detailed Breakdown)

3.1. Explore (Content Feed)
	* FR1.1: As a user, I can view a home feed of featured and latest articles upon app launch.
	* FR1.2: As a user, I can filter the content feed by categories (e.g., Pregnancy, Fitness & Diet, Psychology & Life, Beauty & Care, Astrology).
	* FR1.3: As a user, I can tap on an article to view its full content, including title, cover image, body text, author info, and read time.
	* FR1.4: As a user, I can share articles to external platforms (e.g., social media, messaging apps).
	* FR1.5: As a user, I can "favorite" an article to save it for later access.
	* FR1.6: Articles should display related posts to encourage further exploration.

3.2. Community (Forum)
	* FR2.1: As a user, I can browse a list of forum categories.
	* FR2.2: As a user, I can select a category to view a list of topics within it.
	* FR2.3: As a user, I can select a topic to view its posts and replies.
	* FR2.4: As an authenticated user, I can create a new topic within a selected forum category.
	* FR2.5: As an authenticated user, I can reply to an existing post within a topic.
	* FR2.6: As an authenticated user, I can "like" a topic or a post.
	* FR2.7: As an authenticated user, I can report a topic or post for moderation.
	* FR2.8: Moderators must have access to a queue of reported content.
	* FR2.9: Moderators must be able to lock (read-only) or pin (prioritize) topics.
	* FR2.10: The system must apply rate limiting on user posts/topic creation to prevent spam.
	* FR2.11: A profanity filter must be applied to all user-generated content before publishing.

3.3. Calculators
	* FR3.1: As a user, I can use a Menstrual Cycle Calculator by entering my last period date and cycle length.
	* FR3.2: The Menstrual Cycle Calculator must provide estimated next period, ovulation, and fertile window dates.
	* FR3.3: As a user, I can use a Pregnancy Week & Due Date Calculator by entering my LMP or USG details.
	* FR3.4: The Pregnancy Calculator must provide my current pregnancy week and estimated due date.
	* FR3.5: As a user, I can use a BMI Calculator by entering my height and weight.
	* FR3.6: The BMI Calculator must display my BMI value and categorize it (e.g., "Healthy Weight," "Overweight").
	* FR3.7: All calculator outputs must include a clear medical disclaimer.
	* FR3.8: As a user, I can opt-in to save my calculator results locally on my device.

3.4. Pregnancy Guide
	* FR4.1: As a user, I can access week-by-week educational content relevant to pregnancy.
	* FR4.2: As a user, I can opt-in to receive weekly push notifications with updates relevant to my pregnancy stage.
	* FR4.3 (v1.1): As a user, I can store local, encrypted notes, measurements, or appointments related to my pregnancy on my device.

3.5. Search
	* FR5.1: As a user, I can perform a global search across articles and forum topics.
	* FR5.2: The search interface must display recent searches and popular tags to assist discovery.

3.6. Profile & Settings
	* FR6.1: As a user, I can sign up for a new account using my email and a password.
	* FR6.2: As a user, I can sign in to my existing account.
	* FR6.3: As an authenticated user, I can view and manage my favorited articles.
	* FR6.4: As an authenticated user, I can view my forum activity (e.g., topics started, replies).
	* FR6.5: As an authenticated user, I can manage my notification preferences for various categories.
	* FR6.6: As a user, I can request an export of my personal data.
	* FR6.7: As a user, I can initiate a process to delete my account and associated data.

3.7. Support
	* FR7.1: As a user, I can access a Frequently Asked Questions (FAQ) section with static pages.
	* FR7.2: As a user, I can submit an inquiry via a contact form, which must be rate-limited and include CAPTCHA.

4. Non-Functional Requirements

4.1. Privacy & Compliance
	* NFR1.1: The application must comply with KVKK (Turkish Personal Data Protection Law) and GDPR regulations.
	* NFR1.2: Explicit, granular user consent must be obtained for all non-essential data processing (e.g., analytics, non-critical notifications, local health data storage).
	* NFR1.3: A clear and easily accessible privacy policy must be available within the app.
	* NFR1.4: Data minimization principles must be applied; only necessary data should be collected and retained.

4.2. Security
	* NFR2.1: Authentication tokens and sensitive user preferences must be securely stored (e.g., Keychain on iOS, Keystore on Android).
	* NFR2.2: Local pregnancy notes (if implemented) must be encrypted at rest on the device.
	* NFR2.3: All network communication must use HTTPS with TLS 1.2+.
	* NFR2.4: Role-based access control (RBAC) must be enforced server-side for all write and moderation actions.

4.3. Performance & Offline
	* NFR3.1: The app must exhibit fast perceived load times, utilizing skeleton UIs for initial content rendering.
	* NFR3.2: HTTP caching mechanisms (e.g., ETag, Last-Modified) must be implemented for efficient data retrieval.
	* NFR3.3: Core content (articles, guides) should be available for read-only access even when offline, leveraging local caching.
	* NFR3.4: Drafts of forum posts and calculator results should be saved locally and persist across app sessions, even offline.

4.4. Accessibility
	* NFR4.1: The app must adhere to Web Content Accessibility Guidelines (WCAG) 2.1 AA standards where applicable for mobile.
	* NFR4.2: All text must support scalable fonts (dynamic type).
	* NFR4.3: Touch targets must have a minimum size of 44x44 dp.
	* NFR4.4: Full support for screen readers (VoiceOver on iOS, TalkBack on Android) with appropriate Turkish labels.

4.5. Notifications
	* NFR5.1: All push notifications must be opt-in only, with granular control over different notification types (e.g., daily astrology, weekly pregnancy updates, forum replies).
	* NFR5.2: Notification timing should respect user-defined quiet hours and cultural rhythms (e.g., Ramadan-aware scheduling).

4.6. Localization
	* NFR6.1: The app's primary language is Turkish, and all UI elements, content, and microcopy must be fully localized.
	* NFR6.2: The underlying architecture must be designed to support future localization into additional languages (e.g., English, German) with minimal effort.

5. Technical Details & Assumptions

5.1. Platform & Integration Assumptions
	* Mobile Only: The app will be developed for iOS and Android platforms, optimized for phone-first layouts.
	* Architecture: Clean Architecture principles will be followed, separating presentation, domain, and data layers.
	* Technology Stack (Suggested): Flutter for cross-platform development, Riverpod/BLoC for state management, Dio for network requests, Drift/SQLite for local caching, and SecureStorage for sensitive data.
	* Content APIs: The app will consume existing headless CMS endpoints (e.g., WordPress REST for articles, categories, tags, pages, media). For the forum, it will either consume bbPress endpoints exposed via wp/v2 or utilize a thin backend adapter (Node/Go/PHP service) if a stable bbPress REST API is not natively available.
	* Analytics: Privacy-safe event logging, crash reporting, and remote configuration for A/B testing will be integrated.

5.2. Content APIs (Detailed)
	A) Headless CMS (WordPress REST)
		* Base URL: https://kadinatlasi.com/wp-json/wp/v2/
		* Auth: Public reads require no authentication. Privileged actions (create/update/delete, reading private content) use JWT via POST /wp-json/jwt-auth/v1/token. Authenticated requests include an "Authorization: Bearer <token>" header.
		* Core Endpoints (read-mostly):
			* GET /posts?per_page=20&page=1&_embed=1&categories=<id>&search=<q>
			* GET /posts/{id}
			* GET /categories?per_page=100
			* GET /tags?per_page=100&search=<q>
			* GET /pages?slug=<slug>
			* GET /media/{id} (or leverage _embed for images)
			* GET /search?search=<q>
		* Authentication Endpoints (JWT plugin):
			* POST /jwt-auth/v1/token (body: { "username": "...", "password": "..." })
			* (If available) POST /jwt-auth/v1/token/validate
		* Typical Response (post excerpt example):
			{
			  "id": 123,
			  "date": "2025-09-27T12:34:00",
			  "slug": "benefits-of-prenatal-vitamins",
			  "title": {"rendered": "Benefits of Prenatal Vitamins"},
			  "content": {"rendered": "<p>...</p>", "protected": false},
			  "excerpt": {"rendered": "<p>...</p>"},
			  "categories": [7,12],
			  "tags": [54,77],
			  "_embedded": {
			    "author": [{"id": 3, "name": "Editor"}],
			    "wp:featuredmedia": [{"source_url": "https://.../cover.jpg"}]
			  }
			}
		* Pagination: per_page (max 100), page, X-WP-Total, X-WP-TotalPages headers.
		* Filtering: by categories, tags, search query, date ranges, orderby, status.
		* Rate Limits (enforced at edge/WAF):
			* Unauthenticated READ: 60 req/min/IP.
			* Authenticated READ: 120 req/min/token.
			* WRITE: 10 req/min/token.
			* Return 429 status with JSON: {\"error\":\"rate_limited\",\"retry_after\":30}.
		* CORS: Allow GET from app domains; restrict POST/PUT/DELETE to app + admin origins.
		* Security: Sanitize HTML server-side, strip disallowed embeds for mobile, use _embed=1 to reduce requests.

	B) Forum API
		* Decision: Option 2 - Thin Backend Adapter will be implemented for a stable, minimal REST contract while persisting to WordPress/bbPress tables. This provides better control over API surface and moderation capabilities.
		* Base URL: https://kadinatlasi.com/api/forum/v1/
		* Auth: JWT (reusing the same token issuance as CMS).
		* Error Format: {\"error\":\"code\",\"message\":\"...\",\"details\":{}} with appropriate HTTP codes.
		* Endpoints:
			* GET /forums -> list visible forums
			* GET /forums/{id} -> forum meta + counts
			* GET /forums/{id}/topics?per_page=20&page=1&order=active
			* POST /topics (auth) body: { \"forum_id\": 10, \"title\":\"...\", \"content\":\"<p>...</p>\" }
			* GET /topics/{id} -> topic, author, pinned/locked flags
			* GET /topics/{id}/posts?per_page=20&page=1
			* POST /posts (auth) body: { \"topic_id\": 33, \"content\":\"<p>...</p>\" }
			* POST /reports (auth) body: { \"target_type\":\"topic|post\", \"target_id\": 33, \"reason\":\"spam|abuse|other\", \"note\":\"...\" }
			* POST /topics/{id}/like (auth) -> { \"liked\": true } (idempotent)
			* POST /posts/{id}/like (auth)
			* Moderation (staff only):
				* POST /topics/{id}/pin { \"pinned\": true }
				* POST /topics/{id}/lock { \"locked\": true }
				* POST /moderation/act { \"target_type\":\"topic|post\",\"target_id\":..,\"action\":\"hide|delete|spam|restore\" }
		* Data Models (Adapter -> WP/bbPress mapping):
			* Forum: id, name, description, topic_count, post_count, last_activity_at.
			* Topic: id, forum_id, title, author (UserLite), created_at, last_activity_at, pinned, locked, reply_count.
			* Post: id, topic_id, author (UserLite), content_html (sanitized), created_at, like_count, is_owner.
			* UserLite: id, display_name, avatar_url.
		* Server Responsibilities:
			* Integration with WP: Run as a WP plugin or sidecar service.
			* Sanitization: Allow basic HTML, block scripts/iframes.
			* Spam control: Rate limiting, simple bad-word filter, optional Akismet hook.
			* Capabilities: Map JWT user to WP user roles (subscriber, moderator, admin).
			* Pinned/Locked: Store as post meta.
			* CORS: Restrict to mobile app origins.
		* Rate Limits (adapter & forum writes):
			* Reads (public): 60 req/min/IP.
			* Reads (auth): 120 req/min/token.
			* Writes (topics/replies): 10 req/min/token, burst 5.
			* Reports/Likes: 30 req/min/token.
			* On exceed: 429 + Retry-After + JSON error.

	C) Authentication Flows (shared)
		1. JWT Issue: POST /wp-json/jwt-auth/v1/token -> { token, user_email, user_nicename, user_display_name }
		2. Use Token: Add Authorization: Bearer <token> to forum/CMS write requests.
		3. Refresh/Validate: If plugin supports it, call /token/validate; otherwise, implement short-lived tokens (15-30 min) + refresh token endpoint on the adapter.
		* Security: Store tokens in Keychain/Keystore; never log PII; enforce role-based permissions; apply Cloudflare/Nginx rate limiting and WAF bot rules.

	D) Error & Status Conventions
		* 400 {\"error\":\"bad_request\",\"message\":\"...\"}
		* 401 {\"error\":\"unauthorized\",\"message\":\"Invalid or expired token\"}
		* 403 {\"error\":\"forbidden\",\"message\":\"Insufficient privileges\"}
		* 404 {\"error\":\"not_found\"}
		* 409 {\"error\":\"conflict\",\"message\":\"Duplicate post detected\"}
		* 422 {\"error\":\"validation\",\"fields\":{\"title\":\"required\"}}
		* 429 {\"error\":\"rate_limited\",\"retry_after\":30}
		* 500 {\"error\":\"server_error\",\"request_id\":\"...\"}
		* All timestamps in ISO 8601; arrays paginated with per_page/page; include total when feasible.

	E) Integration Checklist (for the coding agent)
		* Confirm https://kadinatlasi.com/wp-json/ responds; enable WP REST and JWT plugin if blocked.
		* Implement CMS reads via wp/v2 with _embed=1; cache in app (SQLite) for offline capability.
		* Implement the thin backend adapter for forum functionality.
		* Implement rate limiting and 429 handling with exponential backoff on 5xx errors.
		* Sanitize user-submitted HTML; disallow images in forum v1.
		* Add moderation toggles for pin/lock; implement a user reporting workflow.
		* Restrict CORS to mobile app origins.
		* Implement logging with request IDs; avoid logging PII or tokens.

6. Brand Identity & Visual Aesthetic

The Kadın Atlası mobile app will convey a warm, trustworthy, and empowering identity, balancing modern minimalism with friendly, approachable visuals to ensure credibility and relatability.

6.1. Colors
	* Primary Palette: Soft, calming tones such as warm pinks, corals, and lilacs, combined with neutrals (white, light gray, beige).
	* Accent Colors: Emerald green or turquoise for highlights and call-to-action buttons, ensuring strong contrast for accessibility.
	* Accessibility: All color choices must meet WCAG 2.1 AA contrast ratios.

6.2. Typography
	* Headlines: A modern sans-serif (e.g., Inter, Poppins) for clarity and friendliness.
	* Body Text: A highly legible sans-serif (e.g., Roboto, Open Sans) that scales well for mobile screens.
	* Hierarchy: Emphasize readability, clean structure, generous line spacing, and adjustable font sizes.

6.3. Imagery Style
	* Illustrations & Photography: Authentic, diverse, and inclusive (women of different ages, backgrounds, styles). Imagery supports themes of health, care, empowerment, and positivity, avoiding unattainable ideals.
	* Icons: Simple, rounded, friendly line icons, consistent in weight and style.

6.4. UI/UX Principles
	* Minimal Clutter: Focus on clear navigation and content-first layouts.
	* Friendly Interactions: Soft shadows, rounded corners, subtle, smooth micro-animations.
	* Accessibility First: Scalable text, high contrast mode, screen reader support.
	* Consistency: Utilize a design system with reusable components.

6.5. Tone of Voice (Brand Personality)
	* Supportive, empathetic, trustworthy, approachable. Avoid overly technical or formal phrasing. Communicate in clear, conversational Turkish, empowering the user.

7. Target Audience Nuances & UX (Turkey-specific Cultural & UX Considerations)

7.1. Cross-cutting Principles (all segments)
	* Language & Tone: Use plain, empathetic Turkish; avoid jargon; include short TL;DR blocks and bullets. Respect diacritics (ç, ğ, ı, İ, ö, ş, ü). Use DD.MM.YYYY, 24-hour time, kg/cm, week+day for pregnancy. Offer polite, supportive microcopy (avoid shame/blame language, especially around weight, fertility, mental health).
	* Privacy & Safety Expectations: Provide pseudonyms and avatar-only profiles. Offer incognito posting for sensitive topics. Make consent explicit, default to privacy-first. Implement harassment-zero-tolerance banners and one-tap report functionality.
	* Religious/Cultural Rhythm: Be mindful of Ramadan and religious holidays. Offer a "Ramadan mode" with quieter notifications; opt-in tips for fasting & wellness. Default notification window: 09:00–21:00 Europe/Istanbul.
	* Connectivity & Device: Assume mid-range Android, variable bandwidth. Keep APK size low, images compressed, prioritize offline-first reading, and implement draft-save everywhere.
	* Trust & Authority: Cite reputable Turkish/international sources. Label medical content with "educational, not medical advice"; encourage consulting a clinician.

7.2. Segment-specific Insights -> Product Decisions
	1. General Wellness:
		* Content: Short reads with evidence boxes. Normalize therapy; avoid moralizing language.
		* UX: Save-to-read-later, low-friction search, topic follows.
		* Moderation: Ban victim-blaming, require source links for health advice, auto-flag unverified claims.
	2. Pregnant Users:
		* Content: Week-by-week guidance with Turkey-specific cues (test timing, SGK/private clinic context). Gentle nutrition/meds disclaimers; loss support resources.
		* UX: Local, encrypted notes; weekly push opt-in; EDD method label; trigger-aware UI (e.g., "Hide pregnancy-loss topics").
		* Moderation: Separate, safer sub-forums with stricter rules and faster SLA on reports. Disallow unsafe medical instructions; escalate misinformation.
	3. Fitness & Diet:
		* Content: Focus on function over form; avoid weight-shaming; include home-friendly routines. Modest-friendly visuals. Highlight beginner/low-impact.
		* UX: Goal choices not weight-centric. Unit toggles (kg/cm) and accessible cues.
		* Moderation: Remove "before/after" shaming, extreme diet promotion, supplement spam; mark ED-risky content.
	4. Astrology:
		* Content: Light, uplifting phrasing; avoid prescriptive life/medical advice. Keep distinct from health guidance.
		* UX: Daily/weekly cards; opt-in daily notification with do-not-disturb windows; quick mute control.
		* Moderation: No exploitation claims, no financial/medical directives presented as facts.

7.3. Localization Playbook (microcopy & style)
	* Do: "Bu içerik bilgilendirme amaçlıdır; kişisel durumunuz için hekiminize danışın." (This content is for informational purposes; consult your physician for your personal situation.)
	* Do: "İsterseniz bu konuyu incognito paylaşabilirsiniz." (If you wish, you can share this topic incognito.)
	* Do: "İsterseniz Ramazan modu için bildirim saatlerini kısaltalım." (If you wish, let's shorten notification hours for Ramadan mode.)
	* Don’t: Use moralizing language ("tembellik", "iradesizlik" - laziness, lack of willpower).
	* Don’t: Imply medical certainty; avoid fear-based hooks.
	* UI Defaults: TR first; future-proof i18n; DD.MM.YYYY, 24h, metric; accessible Turkish: short sentences, bold key words, list bullets.

7.4. Community Structure & Moderation Nuances
	* Spaces: Dedicated, opt-in spaces: Pregnancy, Trying to Conceive, Loss Support, Wellness, Fitness, Astrology Lounge. Women-first environment; optional visibility rules (e.g., hide content from web crawlers).
	* Rules (surface at composer): No harassment, gendered insults, regional/ethnic slurs, doxxing. Health advice must include "not medical advice" and avoid prescribing meds/supplements. No MLM/supplement sales; no miracle cures.
	* Tools: Incognito posts, topic-based mutes, keyword mutes. Sensitive-content blur with opt-in reveal. Fast-track queue for: harassment, self-harm, medical misinformation in pregnancy spaces.

7.5. Notification Strategy (Turkey-aware)
	* Default window 09:00–21:00; avoid Friday noon spikes. Respect Ramadan: suggest iftar+1h or mid-morning windows; one-tap "Snooze during Ramadan."
	* Tune frequency caps: ≤1/day per category by default; visible unsubscribe in every notification card.

7.6. Accessibility & Inclusivity
	* WCAG-aligned color contrast; dynamic text support; screen reader labels in Turkish.
	* Provide modest-friendly imagery options; avoid stereotyping (age, region, clothing).
	* Low-literacy mode: add icon + label pairs and short video/illustrations where helpful.

7.7. Measurement & Research Plan
	* Qual/Quant: 8–12 remote interviews (Istanbul, Ankara, İzmir + Anatolian cities) across segments, including modest/conservative users. Track Negative Interactions per 1k posts, Report rate, Mute/Blur usage, Incognito adoption. For Pregnancy: D1/D7 open rates for weekly cards; Loss Support opt-in and retention (with care).
	* Success Indicators (culture fit): High opt-in to sensitive-space community rules (>85%). Declining harassment reports after first 3 months (–30%). Notification opt-out stays below 20% with Ramadan mode active.

7.8. Acceptance Criteria (for the coding agent)
	* Incognito posting toggle in composer; hides handle; staff can still see user ID.
	* Sensitive-content blur + "Always reveal in this space" preference.
	* Keyword mute per user; persists across devices.
	* Ramadan mode switch moves notifications to safe windows; defaults suggested during Ramadan.
	* TR locale: dates (DD.MM.YYYY), units (kg/cm), 24h time, Turkish diacritics handled in search and slugs.
	* Evidence callouts component in articles (sources, red flags, when to seek help).
	* Harassment quick-report and fast-track moderation in pregnancy/loss forums.
	* Privacy-first profiles: pseudonym by default, avatar optional, hide last-seen setting.
	* Offline drafts everywhere; loss-safe autosave every 3 s.
	* Push caps and easy mute per channel (+ global snooze).

7.9. TL;DR
Design for privacy, empathy, and choice: pseudonyms, incognito, sensitive-content controls, Ramadan-aware notifications, plain Turkish, and strong moderation in pregnancy/loss spaces. Keep content evidence-based and non-judgmental; keep UX offline-capable and light on bandwidth.

8. Explicit Consent & Privacy Controls

8.1. Consent Mechanisms by Data Interaction
	1. Local Calculator Saves
		* Consent Flow: Default is no persistence. First "Save result" tap prompts an explicit opt-in modal: "Do you want to store your results locally on this device? These results never leave your phone unless you later choose to sync." Consent is stored locally and revocable via Privacy Settings.
		* Implementation: Data encrypted in SQLite with OS keychain. Local-only unless future cloud sync (v2) is opted in. Withdrawal: Deleting app data or "Clear local results" erases records.
	2. Push Notifications
		* Consent Flow: OS permission requested after an in-app explanation. Separate toggles in Profile -> Notifications for "Pregnancy weekly updates", "Daily astrology horoscopes", "New forum replies/mentions."
		* Implementation: FCM/APNs tokens bound to user ID only after opt-in. Silent background notifications for cache refresh only. Withdrawal: Toggling off immediately invalidates the token.
	3. Analytics & Telemetry
		* Consent Flow: First launch displays an explicit consent screen: "Help us improve the app by sharing anonymized usage data." Two toggles: "Essential diagnostics" (crash logs, legitimate interest) and "Usage analytics" (requires opt-in).
		* Implementation: Privacy-safe analytics SDK (e.g., Firebase with anonymized IDs). No PII or health inputs collected; only aggregate event counts. Withdrawal: Switching off deletes the analytics identifier and stops logging.
	4. Account Creation
		* Consent Flow: Registration requires mandatory checkboxes for "I agree to the Terms of Service" and "I consent to the processing of my personal data in accordance with the Privacy Policy" (KVKK-mandatory). An optional checkbox for "I would like to receive promotional emails" is available. Cannot proceed without mandatory consents.
		* Implementation: Store timestamp, IP, and policy version for audit. Email confirmation (double opt-in) for activation. Withdrawal: Users can revoke optional marketing consent. Account deletion triggers full data purge.

8.2. User Privacy Controls (KVKK/GDPR)
	1. Data Export (Right of Access/Portability)
		* UI: Profile -> Privacy -> "Download My Data" button.
		* Process: One-click request generates a JSON/CSV bundle of profile data, forum contributions, favorites, and saved calculator records (if synced). An email link with a secure, expiring token is sent. Format: Zipped, password-protected JSON/CSV with ISO timestamps. Timeline: Delivered within 30 days.
	2. Data Deletion (Right to Erasure)
		* UI: Profile -> Privacy -> "Delete My Account" button.
		* Process: Two-step confirmation (e.g., re-enter password). Immediate anonymization of forum posts (author -> "Deleted User") unless legally mandated deletion. Purge user profile, tokens, consents, analytics IDs. Secure erase queued tasks. Timeline: Immediate UI effect; backend purge within 30 days. Proof: Email confirmation.
	3. Transparency
		* Privacy Policy screen accessible during onboarding and in settings. Consent history viewable in Profile. Change logs of Terms & Privacy Policy must trigger renewed consent.
	4. Right to Restrict / Object
		* User can disable analytics, notifications, or data sharing at any time without deleting the account. Objection to processing (e.g., for marketing) must be honored immediately.

8.3. Technical & Compliance Notes
	* Consent storage: In relational DB with user_id, consent_type, status, timestamp, policy_version.
	* Proof of consent: Immutable audit trail required under KVKK/GDPR.
	* Withdrawal: Must be as easy as giving consent.
	* Special categories (health-adjacent): Cycle/gestation data treated as sensitive; stored locally by default; explicit opt-in for any cloud sync.
	* Children/minors: Block account creation under 16 without guardian consent.
	* Data Protection Officer (DPO): Contact provided in Privacy Policy.
	* Security: TLS 1.2+, at-rest encryption, access logs for admins.

8.4. TL;DR for the coding agent
Implement explicit, granular consent prompts (local saves, notifications, analytics, account creation). All toggles in Profile -> Privacy with clear labels and easy withdrawal. Build data export (JSON/CSV) and data deletion (anonymize + purge) pipelines. Store all consent decisions with timestamps and versions for auditability. Default is privacy-first: no sync, no marketing, no telemetry without opt-in.

9. Onboarding & Engagement Strategy (Ideal First-Time User Experience - FTUX)

9.1. App Download & First Launch
	* Store Listing: Clear positioning as "Kadınlara özel sağlıklı yaşam ve topluluk uygulaması" (Women's exclusive healthy living and community app). Visuals for wellness, pregnancy, fitness, astrology.
	* Permissions upfront: Ask for notification permission *after* explaining categories. Ask for local storage consent *only* when saving calculator results.

9.2. Onboarding Flow
	* Step 1: Warm Welcome: Hero illustration + message: "Sağlığın, yıldızların ve topluluk desteği burada birleşiyor." (Health, stars, and community support unite here.) Quick value props: Takvim (Calendar), Hesaplayıcılar (Calculators), Astroloji (Astrology), Forum.
	* Step 2: Quick Personalization Quiz (2–3 screens):
		* Select focus areas (checkboxes): 🌸 General wellness, 🤰 Pregnancy, 🏋️ Fitness, 🔮 Astrology.
		* Optional info (skippable): Birth date (auto-detect zodiac), Pregnancy (LMP or due date), Fitness goal. Result: Tailored home feed modules + calculators unlocked.
	* Step 3: Account Setup: Offer guest mode (read-only). Highlight benefits of free account (save favorites, join forum, updates). Consent checkboxes for privacy, analytics (opt-in), notifications (opt-in categories).
	* Step 4: Feature Walkthrough: Carousel or tooltip highlights for core features ("Discover personalized articles," "Track your cycle or pregnancy," "Join safe, women-first forums," "Check your horoscope daily.")

9.3. Early Engagement (Day 0–3)
	* Feature Discovery: Auto-show first article matching chosen interests. Prompt to bookmark/favorite. Suggest trying BMI or cycle calculator. Show today’s horoscope for astrology fans.
	* Community Activation: Encourage first incognito post: "Paylaşmak istersen burası güvenli alan." (If you want to share, this is a safe space.) Pinned forum intro thread: "Kendini Tanıt" (Introduce Yourself).
	* Notifications (opt-in only): D0 evening: "Hoş geldin! İlk makalen hazır." (Welcome! Your first article is ready.) D1: Short push tied to chosen focus. D3: "Toplulukta yeni sohbetler var. Katılmak ister misin?" (New chats in the community. Would you like to join?)

9.4. Mid-Term Engagement (Day 4–7)
	* Personalization Reinforcement: Feed adapts to clicked/favorited categories. Show "Recommended for You" strip. Pregnancy users: unlock week-specific guide automatically.
	* Deeper Feature Nudges: Tooltip: "Takvimi denedin mi?" (Have you tried the calendar?) after 2 article reads. Prompt: "Sonuçlarını kaydet" (Save your results) after 1 calculator use. Highlight a trending safe forum topic.
	* Notifications: Pregnancy: weekly milestone card. Astrology: weekly horoscope overview. Wellness/Fitness: motivational message. Forum: direct mentions/replies only by default.

9.5. UX Design Notes
	* Respect for privacy: Default profile = pseudonym + avatar; incognito toggle in composer. Sensitive forum spaces (Pregnancy loss, TTC) = opt-in with rules banner.
	* Cultural localization: Dates in DD.MM.YYYY, 24h format. Weight/height in kg/cm. Ramadan-aware notification window.
	* Visual style: Soft pastel palette. Clear section icons (🌸 🤰 🏋️ 🔮).

9.6. Metrics & Retention Targets
	* Activation (D0): ≥70% complete personalization quiz. ≥50% try 1 calculator or save 1 article.
	* Retention: D1 retention ≥45%. D7 retention ≥25%.
	* Engagement: Average 3+ articles viewed in first week. ≥20% of users post or comment in forum within D7.

9.7. TL;DR for the coding agent
Build lightweight onboarding quiz (interests, DOB, optional pregnancy info). Support guest mode, but funnel toward account creation for personalization. Implement category-specific notifications. Ensure early feature exposure: article, calculator, horoscope, and forum. Provide safe defaults (pseudonyms, incognito, muted sensitive spaces until opt-in). Drive retention with personalized pushes.

10. Community Moderation — Workflows, Roles, Tools

10.1. Objectives
Keep discussions safe, respectful, on-topic, and KVKK/GDPR compliant. Minimize abuse/spam with preventive (rate limits, heuristics) and responsive (reports, triage, actions) controls. Provide auditable, privacy-preserving moderation with fair appeals.

10.2. Roles & Permissions (RBAC)
	* Visitor: View public forums, topics, posts.
	* Member: View all public, own flags/reports. Create topic/post (rate-limited), edit own within grace window, report content, like.
	* Trusted Member (optional): Same as Member + view community guidelines prompts. Slightly higher limits, limited auto-approval. (Granted by moderator).
	* Moderator: View all content, reports, user profiles (non-sensitive), mod logs. Hide/restore, lock/unlock, pin/unpin, move, warn user, apply cooldowns, accept/decline reports, mark duplicates, escalate. (No destructive delete).
	* Admin: Everything Moderator can do + Hard delete, suspend/ban, edit roles, configure filters/rate limits, export audit logs, manage policy lists. (Small, trusted set only).
	* Permissions Model: Capability checks enforced server-side. All mod actions generate immutable audit log records.

10.3. Content States & Actions
	* States: visible, hidden, pending_review, locked, spam, deleted (admin only).
	* Post/Topic Actions: Hide/Unhide, Lock/Unlock, Pin/Unpin, Move, Mark Spam/Not Spam, Warn User, Cooldown, Suspend, Delete (admin only).
	* User Actions: warn, cooldown (e.g., 1 post/10 min), suspend (24h/7d/perm), reset reputation.

10.4. Reporting & Triage Workflow
	1. User Report Submission: In UI: "Report" -> choose reason (spam, abuse, harassment, medical_misinformation, off_topic, other + free text). API: POST /api/forum/v1/reports { "target_type":"topic|post", "target_id":123, "reason":"abuse", "note":"..." }.
	2. Queue Ingestion: Each report creates a Report entity with priority (reason weight, distinct reporters, content age, reporter trust score, ML toxicity score). Duplicates aggregated.
	3. Moderator Queue: Queues: High Priority, Spam, General, Appeals. Default SLA targets: High (≤ 4h), Spam (≤ 12h), General (≤ 24–48h). Filters: status, reason, category, user ID.
	4. Triage Actions: One-click actions (Hide, Lock, Mark Spam, Warn, Cooldown). Bulk actions for spam waves. On resolve: set report_resolution, add moderator_note, optionally notify reporter.
	5. Escalation: To Admin if policy ambiguity, for context and proposed action.
	6. Post-Action Automation: If user accumulates N valid reports -> auto-cooldown/suspend suggestion. If topic gets M valid reports -> auto-hide pending review.
	7. Appeals: Affected author can appeal once per action within 7 days. Reviewed by a moderator not involved in original decision; Admin is final arbiter.

10.5. Moderator Tools (Console Requirements)
	* Queue Dashboard: Tabs (High, Spam, General, Appeals) with counts and aging.
	* Work Item View: Content snapshot, full context, reporter list, ML flags, prior actions, policy quick links.
	* One-Click Actions: Hide/Unhide, Lock/Unlock, Pin/Unpin, Move, Spam/Not Spam, Warn, Cooldown, Suspend, Delete (admin).
	* Bulk Ops: Select by filter + action.
	* User Card: Reputation, warnings, cooldowns, suspensions; actions.
	* Audit Log Viewer: Filter by user, content, moderator, action, time; export CSV/JSON.
	* Policy Assistant: Inline guidelines, canned responses, decision checklist.
	* Rate-Limit Monitor: Show per-user/per-IP write counts.
	* UX details: Actions require confirmations and reason codes; all changes show toast and update queue.

10.6. Data Models
	* Report: id, target_type, target_id, reasons[], note_sample, reporter_count, priority, status, created_at, updated_at, ml_scores.
	* ModerationAction: id, actor_id, target_type, target_id, action, reason_code, note, meta, created_at.
	* Appeal: id, target_action_id, appellant_user_id, status, message, created_at, updated_at.
	* UserReputation: user_id, score, last_decay_at.
	* Retention: Reports + ModerationAction logs retained ≥ 12 months. PII minimization: store reporter IDs hashed or pseudonymized.

10.7. Profanity, Abuse & Safety Filtering
	* Goal: Minimize false negatives/positives, especially in Turkish (diacritics, agglutinative, leetspeak).
	* Multi-Layer Approach:
		* Layer 1: Heuristics: Case/diacritic-insensitive wordlists (TR + EN), fuzzy matching (Damerau-Levenshtein ≤ 1–2), regex for obfuscations. Ban slurs, threats, sexualized harassment, self-harm encouragement.
		* Layer 2: ML Scoring (server-side): Lightweight toxicity model for toxicity, threat, sexual, insult scores [0,1]. Language detection. 
		* Layer 3: Policy Lists & Phrases: Maintain allow/deny lists; allow reclaimed words contextually.
	* Action Thresholds: Toxicity ≥ 0.90 -> auto-hold pending_review. 0.70 ≤ toxicity < 0.90 -> publish but flag for review. Repeated medium scores -> auto-cooldown suggestion.
	* Contextual Checks: Negation reduces severity. Quoting previous text is marked as "quoted."
	* Link & Media Safety: Deny known malicious domains, strip tracking params, validate expanded shorteners. (v2 image policy: hash-based safety checks).
	* User Behavior Heuristics: New users: stricter rate limits, first 3 posts pre-moderated if ML score medium/high. Reputation increases limits; negative actions decrease it.
	* Explainability & Controls: Friendly error message if blocked; provide appeal link for automatic blocks.

10.8. Preventive Anti-Spam Controls
	* Rate Limits (Write): Topic create: 10/min (member), 3/min (new member). Reply: 30/min (member), 6/min (new member). Backoff on 429. 
	* Honeypot Fields for bots. 
	* Time-To-Post minimum (e.g., 5 seconds).
	* Duplicate Detection (minhash/similarity).
	* Invite-Only/Email Verification for initial posting rights (optional).

10.9. Endpoints for Moderation (Thin Adapter)
	* GET /api/forum/v1/reports?status=open&priority=high&page=1
	* POST /api/forum/v1/reports
	* POST /api/forum/v1/moderation/act
	* GET /api/forum/v1/moderation/audit?target_type=post&target_id=123
	* POST /api/forum/v1/appeals
	* GET /api/forum/v1/appeals?status=open
	* POST /moderation/act body examples: { "target_type":"post", "target_id":123, "action":"hide", "reason_code":"abuse" }; { "target_type":"topic", "target_id":88, "action":"lock", "reason_code":"off_topic", "note":"Heated derail" }; { "target_type":"user", "target_id":456, "action":"cooldown", "meta": { "duration_minutes": 60 }, "reason_code":"spam_wave" }
	* Responses: 200 { "ok": true, "action_id": 999 }; Errors per standard spec.

10.10. Moderator Notifications & On-Call
	* Email/Push to moderators for high-priority items and rapid spikes. Digest emails for normal queues. Optional on-call rotation.

10.11. Audit, Privacy, and Compliance
	* Audit Trail: Every moderation action logged with actor id, target, timestamps, reason code, and previous state snapshot.
	* User Data Requests: Admins can export user contributions; deletion follows KVKK rules. Config Versioning: Store versions of wordlists, thresholds, and policy docs.

10.12. Metrics & Quality
	* Moderation Metrics: Median time-to-first-action; false positive/negative rates; % auto-handled vs manual; report volume; repeat offender rate.
	* Community Health: Topic closure rates, new user retention after first post, sentiment trends.

10.13. Implementation Notes
	* Sanitization: HTML sanitized server-side; block scripts/iframes; allow minimal markup. Idempotency: like/report endpoints idempotent. Concurrency: Optimistic locking on content state. Feature Flags: Enable/disable ML scoring. Testing: Seeded fixtures, golden tests, load test.

11. Wellness Calculators — Exact Specs

11.1. Menstrual Cycle Calculator
	* Purpose: Estimate next period start date, ovulation date, and fertile window for informational use.
	* Inputs: lmp_date (ISO YYYY-MM-DD, required), avg_cycle_length_days (integer 21–45, required, default 28), period_length_days (integer 2–8, optional), variability_days (integer 0–9, optional).
	* Validation: lmp_date not in future. avg_cycle_length_days within 21–45. 
	* Calculation Logic:
		1. Next period (NP): lmp_date + avg_cycle_length_days. If variability_days > 0, compute range: NP ± variability_days.
		2. Ovulation date (OV): NP − 14 days.
		3. Fertile window (FW): OV − 5 days to OV + 1 day. If variability_days > 0, widen by ± variability_days.
		4. Cycle day numbers: Compute for calendar UI.
		5. Assumptions: Less accurate with irregular cycles; show confidence. Edge cases: If irregular (variability ≥ 7) show wider ranges + stronger disclaimer. If cycle length < 24 or > 35, recommend medical advice.
	* Output (JSON): { "lmp_date": "2025-09-01", "avg_cycle_length_days": 28, "period_length_days": 5, "variability_days": 2, "next_period": { "date": "2025-09-29", "range": { "earliest": "2025-09-27", "latest": "2025-10-01" } }, "ovulation": { "date": "2025-09-15", "fertile_window": { "start": "2025-09-10", "end": "2025-09-16" } }, "confidence": "medium", "disclaimer": "Calendar-based estimates only; not for contraception or diagnosis." }
	* UI Notes: Calendar shading; "Estimates only" badge; link to cycle variability details.
	* Disclaimer: "This tool provides educational estimates (not medical advice). Cycles vary; do not use for contraception or to make medical decisions. Consult a clinician for personalized guidance."

11.2. Pregnancy Week & Estimated Due Date (EDD)
	* Purpose: Compute gestational age (GA) and EDD from LMP (Naegele’s rule) and optionally redate using early ultrasound.
	* Inputs: lmp_date (ISO, optional), avg_cycle_length_days (optional, only for display note), usg_date (ISO, optional), usg_ga_weeks (0–42) & usg_ga_days (0–6) (optional), conception_method (spontaneous|IVF_day3|IVF_day5).
	* Validation: USG GA consistent. Dates not in future.
	* Calculation Logic:
		1. EDD by LMP (Naegele’s rule): lmp_date + 280 days.
		2. EDD by USG: usg_date + (280 days − (usg_ga_weeks*7 + usg_ga_days)).
		3. Redating Rules (ACOG): Replace EDD_LMP with EDD_USG if discrepancy exceeds thresholds (e.g., >5 days for ≤8w6d, >7 days for 9w0d–13w6d).
		4. IVF cases: Day-5 embryo: transfer_date + 261 days; Day-3: +263 days.
		5. Current Gestational Age (today): 280 days − (EDD_final − today).
		6. Milestones & Term Definitions: Standard ACOG definitions.
	* Output (JSON): { "inputs": { "lmp_date": "2025-01-10", "usg_date": "2025-02-28", "usg_ga_weeks": 7, "usg_ga_days": 5, "conception_method": "spontaneous" }, "edd": { "by_lmp": "2025-10-17", "by_ultrasound": "2025-10-22", "final": "2025-10-22", "method": "USG_redated", "redating_rule_applied": "≤13w6d >7d discrepancy" }, "gestational_age_today": { "weeks": 8, "days": 2 }, "flags": { "suboptimally_dated": false }, "notes": [ "First-trimester CRL dating is most accurate (±5–7 days)." ], "disclaimer": "Educational estimate; not a diagnosis. Follow clinical guidance." }
	* UI Notes: Always show method of final EDD. Banner if suboptimally dated. Explain early USG for irregular cycles.
	* Disclaimer: "These dates are estimates based on commonly used clinical rules (ACOG). Only your clinician can assign or change your official due date. If ultrasound and LMP differ, clinical guidance may favor ultrasound dating."

11.3. Body Mass Index (BMI)
	* Purpose: Compute adult BMI and classify by standard categories.
	* Inputs: height_cm (decimal 100–250, required), weight_kg (decimal 25–300, required), age_years (integer ≥ 20, optional).
	* Validation: Reject extreme entries.
	* Calculation Logic:
		1. BMI (metric): weight_kg / (height_m ^ 2) where height_m = height_cm / 100.
		2. Rounding: Round to one decimal for display.
		3. Classification (Adults 20+): Underweight (< 18.5), Healthy (18.5–24.9), Overweight (25.0–29.9), Obesity Class 1 (30.0–34.9), Class 2 (35.0–39.9), Class 3 (≥ 40.0).
	* Output (JSON): { "height_cm": 165, "weight_kg": 68, "bmi": 25.0, "category": "Overweight", "ranges": { "underweight": "<18.5", "healthy": "18.5–24.9", "overweight": "25.0–29.9", "obesity_class_1": "30.0–34.9", "obesity_class_2": "35.0–39.9", "obesity_class_3": "≥40.0" }, "disclaimer": "BMI is a screening tool only and does not diagnose body fatness or health." }
	* UI Notes: Contextual guidance: "BMI is one indicator; body composition, muscle mass, and clinical factors also matter." Link to official info. No aggressive language.
	* Disclaimer: "BMI is a screening measure, not a diagnosis. It may misclassify athletes or people with high muscle mass. Always consult a healthcare professional for advice."

11.4. Shared Engineering Notes
	* Internationalization: ISO for API; localized display in Turkish. Precision: UTC for date arithmetic; normalize lmp_date at local midnight. Schema versions: Include in output. Telemetry: Log usage counts, not raw inputs. Accessibility: Label inputs with units; numeric keypad; plain language validation.

11.5. Source Summary (for auditors)
	* EDD & Redating: ACOG Committee Opinion No. 700. Gestational age & Naegele’s rule. 
	* Fertile window & ovulation timing: Ovulation ~12–14 days before next period; fertile window spans five days before through day of ovulation.
	* BMI: Formula and adult categories per CDC/NHLBI/WHO.

12. Offline Capabilities & Performance Goals

12.1. Offline-Critical Data & Behaviors
	* Favorited articles: Metadata + HTML + hero image. Storage: SQLite/Drift + file cache; TTL 30 days (LRU). Sync: Background refresh when online. Quotas: Up to 200 items; 100–150 MB cap. Security: No PII.
	* Recently viewed articles: SQLite list + image cache; TTL 7–14 days (LRU). Sync: Pre-fetch next page when online. Quotas: 50–100 items; 50 MB cap.
	* Forum: draft topics & replies: Encrypted SQLite; no TTL. Sync: Auto-save every 3 s; queued POST when online. Quotas: 50 drafts max; each ≤ 32 KB. Security: Encrypted at rest.
	* Queued forum actions (likes, reports): Outbox table. Sync: FIFO dispatch with retry & exponential backoff. Quotas: Outbox ≤ 200 ops.
	* Calculators: inputs + results: Encrypted SQLite; TTL 12 months or user delete. Sync: No server sync by default (local-only). Quotas: 100 records per tool. Security: Sensitive; opt-in cloud sync (v2).
	* Pregnancy guide: SQLite + image cache; TTL 30 days. Sync: Prefetch next 2–3 weeks on view. Quotas: 50–100 MB.
	* User session & prefs: SecureStorage + tiny SQLite. Sync: Refresh token on app open. Quotas: <1 MB. Security: Tokens in Keychain/Keystore.
	* Search history & local suggestions: SQLite; TTL 90 days. Quotas: 500 entries.
	* Support form drafts: Encrypted SQLite; 30-day TTL. Sync: Send when online. Quotas: 10 drafts.
	* Offline constraints & UX rules: Show "last updated" timestamps. Composer warns about policy filters. Outbox shows pending actions.

12.2. Sync & Caching Policy (mobile)
	* HTTP cache: Respect ETag/Last-Modified; 1–5 min default for feeds, 24 h for static pages.
	* Pre-fetch: On Wi-Fi and charging, prefetch next feed page, next pregnancy weeks. 
	* Image caching: In-app disk cache with 150–250 MB global cap; LRU eviction.
	* Backoff: Network retry at 1–2–4–8–16 s; cap at 5 attempts; surface "Try again" after 30–60 s.
	* Data limits: Respect OS "Low Data Mode"; skip prefetch on cellular unless user opts in.

12.3. First-2-Year Scale Assumptions & Capacity Planning
	* Users & Concurrency:
		* Year 1: MAU: 150k; DAU: 40–60k; Peak concurrent: 2.5k–4.8k.
		* Year 2: MAU: 500k; DAU: 180–220k; Peak concurrent: 9k–17k.
	* Traffic & Throughput (backend):
		* Read-heavy (≈92–95% GET). Requests per active user/hour: 20–35. 
		* RPS at peak: Year 1: 200–400 RPS (bursts up to 600). Year 2: 700–1,200 RPS (bursts up to 1,800).
		* CDN offload target: ≥85% for images, ≥70% for article JSON.
	* Content Volume (first 24 months):
		* Articles: 5k–12k. Forum topics: 60k–120k. Forum posts/replies: 400k–1.2M. Media assets: 40k–100k images.
	* Data Storage (logical):
		* DB (operational): Year 1: 30–80 GB; Year 2: 120–300 GB.
		* Object storage: Year 1: 0.8–2.5 TB; Year 2: 3–8 TB.

12.4. Performance Benchmarks & SLOs
	* Mobile App UX:
		* Cold start: ≤ 2.0 s (p50), ≤ 3.5 s (p95). Warm start ≤ 1.0 s (p95).
		* Feed first contentful paint: ≤ 1.0 s (p50) with skeleton; scroll 60 fps.
		* Article open (cached): ≤ 300 ms (p95); (uncached): ≤ 1.0 s (p95) on 4G.
		* Search results: ≤ 500 ms (p95).
		* Calculator compute: ≤ 50 ms (local). Draft auto-save: ≤ 100 ms.
	* API/Backend:
		* Read endpoints (GET): p50 <120 ms, p95 <400 ms. Write endpoints (POST): p50 <180 ms, p95 <600 ms.
		* Auth token issue/refresh: p95 <450 ms.
		* Availability SLO: 99.9%. Error budget: ≤ 0.1% 5xx; client-visible failure rate < 0.3%.
		* Queue latency (moderation high-prio): < 4 h to action. Background jobs: complete cycle ≤ 5 min.
	* CDN & Images:
		* Cache hit ratio: images ≥ 85%, JSON ≥ 70%. Image processing: on-the-fly resize/webp/avif; TTFB p95 < 200 ms.

12.5. Rate Limits (client-visible policy)
	* Unauthenticated GET: 60 rpm/IP; burst 120. Authenticated GET: 120 rpm/token; burst 240.
	* Write (topic/reply): 10 rpm/token; burst 5 (per 30 s). Reports/Likes: 30 rpm/token.
	* 429 handling: Retry-After header + client backoff with jitter.

12.6. Scaling & Topology (summary)
	* Edge: CDN in front of origin (images + JSON), WAF rules. 
	* API tier: Stateless containers (2–4 pods Y1; 6–12 pods Y2), HPA on CPU & RPS; blue-green deploys.
	* DB: Managed SQL (Primary + Read Replicas). 
	* Cache: Redis for hot lists, sessions, rate limiting.
	* Search: DB full-text initially; OpenSearch/Meilisearch by mid-Y2.
	* Observability: Structured logs (PII-free), traces, RED metrics dashboards, alerting by SLOs.

12.7. Tests & Acceptance (performance)
	* Load test: Emulate Y2 peak (1,200 RPS mixed, 30-min soak). Offline test: Airplane mode browsing, composing, queueing actions, then reconnect. Resilience test: Drop DB read replica, throttle bandwidth. Battery/data: 30-min browsing uses < 20 MB on cellular with prefetch disabled.

12.8. Privacy & Retention (offline data)
	* Sensitive local data: Encrypted at rest, user-clearable. Local retention: Follow TTLs; "Clear Downloads/Cache" control; account deletion purges local keys.

13. Project Success Criteria & Constraints

13.1. Primary Success Criteria (Beyond Metrics)
	1. User Trust & Safety: Users feel safe; forum reports handled quickly (median time-to-action < 6h for abuse, <24h for spam); low harassment incidence.
	2. Cultural Relevance: Content localized to Turkish norms; empathetic, plain, inclusive language; astrology/wellness resonates without blending into pseudo-medical advice.
	3. Content Depth & Credibility: Regular flow of new, high-quality articles; medical content cites trusted guidelines; astrology in positive, non-deterministic tone.
	4. Feature Adoption: ≥50% new users try 1 calculator in week 1; ≥30% active users engage with forum monthly; favoriting used by ≥25% DAU.
	5. Operational Excellence: Clear privacy-first UX (consent, export/delete tools functional); crash-free sessions ≥ 99.5%; offline functionality works reliably.

13.2. Anticipated Risks & Challenges
	1. Content Availability & Creation:
		* Risk: Insufficient pipeline of Turkish, evidence-based content.
		* Impact: Empty/repetitive feeds, hurting retention.
		* Mitigation: Build content calendar (3 months preloaded); partner with clinicians; automate translation/adaptation.
	2. Moderator Capacity:
		* Risk: Understaffed moderation -> slow responses to harassment/misinformation.
		* Impact: Loss of user trust, reputation damage.
		* Mitigation: Train core mod team day 1; fast-track queue for flagged content; auto-filters.
	3. Timeline / Delivery Constraints:
		* Risk: Implementing too many verticals at once -> delays in core flows.
		* Impact: MVP feels shallow or buggy.
		* Mitigation: Prioritize MVP paths (calculators + forum + article feed); stage astrology daily cards and advanced personalization as Phase 2.
	4. Budget & Resource Constraints:
		* Risk: Limited funds for continuous content, QA/moderation, infrastructure scaling.
		* Impact: Bottlenecks in growth and engagement.
		* Mitigation: Lean on community-generated content (with strong moderation); use serverless/managed services; phase content spend.
	5. Stakeholder Availability:
		* Risk: SMEs (gynecologists, fitness coaches, astrologers) unavailable for content validation.
		* Impact: Missing credibility, reduced user trust.
		* Mitigation: Identify backup contributors; build content templates.
	6. Community Moderation & Safety:
		* Risk: Sensitive disclosures (domestic violence, miscarriage, health emergencies).
		* Impact: Liability if mishandled, user harm if ignored.
		* Mitigation: Add emergency disclaimers; train mods in sensitive response protocols; anonymous posting defaults for sensitive forums.
	7. Scalability & Performance:
		* Risk: Growth > projections -> backend bottlenecks.
		* Impact: Sluggish feeds, outages.
		* Mitigation: Add CDN caching for articles; lightweight forum adapter with rate limiting; plan early migration path to managed DB/search.

13.3. Success = Balance of Content, Safety, UX
To succeed in the first 6–12 months, the app must deliver:
	1. Safe community experience (fast moderation, harassment-free).
	2. Culturally resonant, trustworthy content (especially for pregnancy & wellness).
	3. Smooth UX (offline-first, localized, quick calculators).
	4. Steady feature rollout (avoid overloading v1).
	5. Operational resilience (budget-conscious, but scalable and mod-ready).

## Technology Stack
1.  **Mobile Application (Frontend)**
    *   **Framework**: Flutter
        *   _Justification_: Chosen for its ability to deliver native-quality, high-performance applications across both iOS and Android from a single codebase. This significantly reduces development time and maintenance costs compared to separate native development, aligning with the "mobile only" platform assumption and rapid MVP delivery. Flutter's comprehensive widget library also aids in implementing accessibility features.
    *   **Language**: Dart
        *   _Justification_: The programming language for Flutter, offering strong typing, asynchronous programming, and a rich ecosystem.
    *   **UI Framework**: Material Design (with extensive custom theming based on brand identity) / Cupertino (for iOS nuances)
        *   _Justification_: Leverages Flutter's built-in widget sets for a familiar and accessible user interface on both platforms. Custom theming and components will be built upon this foundation to align with the "Brand Identity & Visual Aesthetic" guidelines, ensuring WCAG-aligned accessibility (color contrast, scalable text, screen reader support) and a cohesive brand look.
    *   **State Management**: Riverpod
        *   _Justification_: Recommended for its compile-time safety, simplicity, testability, and robust dependency management, which is crucial for maintaining a clean architecture and managing complex data flows (e.g., user profiles, content feeds, calculator states, forum interactions) across the application.
    *   **Networking**: Dio
        *   _Justification_: A powerful HTTP client for Dart/Flutter, offering features like interceptors (for auth tokens, logging), request cancellation, and global configuration. This is essential for interacting with both the WordPress REST API and the custom Forum Adapter, handling rate limits and error responses gracefully.
    *   **Local Storage (Caching & Offline Support)**: Drift (formerly Moor) with SQLite
        *   _Justification_: Provides an easy-to-use, type-safe API for SQLite database operations in Flutter. Critical for enabling offline access to articles, pregnancy guides, calculator results (opt-in), and for persisting user drafts, search history, and cached content to meet "Performance & Offline" non-functional requirements and the detailed "Offline-Critical Scenarios & Scale Targets". Sensitive user data stored locally is encrypted.
    *   **Secure Storage**: flutter_secure_storage
        *   _Justification_: Utilizes platform-specific secure storage mechanisms (Keychain on iOS, Keystore on Android) for sensitive data like authentication tokens (JWTs) and user preferences, adhering to "Security" non-functional requirements and "Explicit Consent & Privacy Controls".
    *   **Image Loading & Caching**: cached_network_image
        *   _Justification_: Efficiently loads and caches images from the network, reducing bandwidth usage and improving perceived performance, especially for content-rich feeds and `_embedded` images from the WordPress API.
    *   **Analytics & Crash Reporting**: Firebase (Analytics, Crashlytics, Remote Config)
        *   _Justification_: Offers a comprehensive suite for understanding user behavior and identifying issues. Firebase Analytics will be configured in a privacy-safe manner (anonymized IDs, no PII collected by default) with explicit user consent. Crashlytics provides real-time crash reporting for stability. Remote Config allows for dynamic UI/feature adjustments and small A/B experiments.
    *   **Push Notifications**: Firebase Cloud Messaging (FCM) & Apple Push Notification service (APNs)
        *   _Justification_: Standard services for sending targeted notifications (weekly pregnancy updates, daily astrology, forum replies), integrated with the app's notification preferences and respecting explicit opt-in consent flows and "Turkey-specific Cultural & UX Considerations" (e.g., Ramadan mode).

2.  **Backend Services (APIs & Data Sources)**
    *   **Content Management System (CMS)**: WordPress REST API (`wp/v2`)
        *   _Justification_: Leverages the existing `kadinatlasi.com` WordPress instance and its established content creation workflows. The standard `wp/v2` REST API endpoints will be used for fetching articles, categories, tags, pages, and media, reducing backend development effort for content delivery. JWT authentication will be used for any privileged write operations.
    *   **Forum & Community API**: Custom Thin Backend Adapter (Node.js/TypeScript)
        *   _Justification_: Given the specific moderation requirements, rate limiting needs, and custom data models for the community features, a custom adapter is the most flexible solution. This adapter will provide a stable, minimal REST API (`/api/forum/v1/`) optimized for mobile interactions, while interfacing with the WordPress/bbPress database or internal APIs. Node.js with TypeScript is chosen for its performance, development speed, and strong type checking, aligning with modern web development practices.
        *   **Forum Database Integration**: The adapter will integrate directly with the WordPress/bbPress database to store forum data (forums, topics, posts, user activities, reports, likes), leveraging existing WordPress user capabilities and roles.
    *   **Authentication & Authorization**: JWT (JSON Web Tokens) via WordPress JWT Auth Plugin
        *   _Justification_: A standard, stateless authentication mechanism. Users sign in via the WordPress JWT plugin, receiving a token used for authenticated requests to both the WordPress REST API (for content writes, if any) and the custom Forum Adapter. Tokens will be stored securely on the client-side. The adapter will validate and enforce role-based permissions based on the JWT.
    *   **Search**: WordPress built-in search (initial MVP), with future upgrade path to a dedicated search engine.
        *   _Justification_: For MVP, the `/search?search=<q>` endpoint of WordPress will be used for global search across articles. The Forum Adapter will include basic search capabilities for topics. This approach minimizes initial setup costs. For enhanced performance, relevancy, and scalability (especially by Year 2 as per `offlineCapabilitiesAndPerformanceGoals`), migration to a dedicated, optimized search engine (e.g., OpenSearch/Elasticsearch or Meilisearch) is planned.

3.  **Database & Data Storage**
    *   **Primary Database**: MySQL / MariaDB (managed by WordPress/bbPress)
        *   _Justification_: The underlying database for the WordPress CMS and bbPress forum. This is a robust, well-established relational database solution, suitable for content and community data, and proven for WordPress deployments.
    *   **Object Storage (Media)**: S3-compatible Object Storage (e.g., AWS S3)
        *   _Justification_: For storing media assets (images from articles, forum avatars if enabled in future versions). Provides scalability, high availability, and integrates well with CDNs. A WordPress plugin would handle the offloading of media from the local filesystem to S3, optimizing WordPress performance and storage.
    *   **Cache Store (Backend)**: Redis (potential future addition)
        *   _Justification_: While not strictly MVP, Redis would be invaluable for caching hot data (e.g., forum topic lists, popular articles, session management for the adapter) and implementing robust server-side rate limiting, significantly improving API performance under higher load.

4.  **Infrastructure & DevOps**
    *   **Cloud Provider**: AWS (Amazon Web Services) - or equivalent like Azure/GCP
        *   _Justification_: Provides a comprehensive suite of scalable, reliable, and secure services suitable for hosting, scaling, and managing web applications. Services like EC2 (for the adapter), RDS (for database), S3 (for storage), CloudFront (CDN), WAF, and CloudWatch (monitoring) offer the flexibility and resilience required.
    *   **Content Delivery Network (CDN)**: Cloudflare / AWS CloudFront
        *   _Justification_: Essential for global content delivery, caching static assets (images, CSS, JS) and frequently accessed API responses (articles, general forum lists), reducing latency, and offloading traffic from the origin server. Crucial for meeting "Performance & Offline" goals and scaling targets (`offlineCapabilitiesAndPerformanceGoals`). Also provides WAF capabilities.
    *   **Web Application Firewall (WAF) & Rate Limiting**: Cloudflare / AWS WAF
        *   _Justification_: Protects against common web exploits, bot traffic, and enables strict rate limiting at the edge, as specified in `existingApiSpecifications` for both CMS and Forum APIs. This enhances security and helps ensure fair resource usage and prevent abuse.
    *   **CI/CD (Continuous Integration/Continuous Deployment)**: GitHub Actions
        *   _Justification_: Automates the build, test, and deployment processes for both the mobile application and the backend adapter, ensuring consistent and rapid releases. Integrates seamlessly with GitHub for version control.
    *   **Monitoring & Logging**: AWS CloudWatch (or cloud provider equivalent) + Sentry (for error tracking)
        *   _Justification_: Centralized logging, metric collection, and alerting are critical for proactive identification and resolution of operational issues, ensuring the application meets its availability SLOs (`offlineCapabilitiesAndPerformanceGoals`). Sentry provides enhanced error tracking and performance monitoring for both the mobile app and backend services.

5.  **Tools & Ecosystem**
    *   **Version Control**: Git (GitHub)
        *   _Justification_: Industry standard for collaborative software development, providing robust change tracking, code review, and team collaboration features.
    *   **IDE**: Visual Studio Code / Android Studio / Xcode
        *   _Justification_: Standard development environments for Flutter and Node.js projects, offering rich features for coding, debugging, and project management.
    *   **Design & Prototyping**: Figma
        *   _Justification_: Collaborative tool for UI/UX design, creating a consistent design system, and prototyping, aligned with "Brand Identity & Visual Aesthetic" and "UI/UX Principles".
    *   **Project Management**: Jira / Trello
        *   _Justification_: Tools for agile project planning, task tracking, and team communication, facilitating efficient development cycles and transparency.

6.  **Justifications Summary**
    The technology stack is carefully selected to address the core project goals and non-functional requirements:
    *   **Privacy-First & Compliance (KVKK/GDPR)**: Secure local storage, local-first data persistence, Firebase anonymized analytics, explicit consent flows (`privacyConsentAndUserControls`), and a robust moderation backend are central to the architecture.
    *   **Performance & Offline Experience**: Flutter's native performance, Dio for efficient networking, Drift/SQLite for robust caching, and CDN for content delivery are critical for fast perceived load and offline capabilities (`offlineCapabilitiesAndPerformanceGoals`).
    *   **Scalability**: Cloud-native services (AWS), CDN, and a dedicated, optimized Forum Adapter are chosen with future growth in mind, aiming to handle substantial user traffic and content volume (`offlineCapabilitiesAndPerformanceGoals`).
    *   **Developer Efficiency**: Flutter's single codebase, Node.js for backend flexibility, and a comprehensive CI/CD pipeline accelerate development and deployment, making efficient use of resources.
    *   **Leveraging Existing Assets**: Utilizing the existing WordPress CMS for content saves significant development time and leverages established content creation workflows, allowing focus on the unique mobile features and community.
    *   **Community Safety & Moderation**: The custom Forum Adapter design supports sophisticated moderation workflows, rate limiting, and multi-layered content filtering (heuristics, ML scoring), ensuring a safe and supportive environment for the target audience (`moderationWorkflowsAndTools`, `Turkey-specific Cultural & UX Considerations`).

This comprehensive stack aims to provide a reliable, performant, and secure platform for Kadın Atlası to achieve its mission of delivering trustworthy content and fostering a supportive community for women in Turkey.

## Project Structure
PROJECTSTRUCTURE

## 1. Overview

This document outlines the file and folder organization for the "Kadın Atlası" mobile application. The structure adheres to a Clean Architecture pattern, emphasizing separation of concerns, testability, and maintainability. It is designed to scale with future features while ensuring clarity for developers working on different parts of the application. The primary goals are to encapsulate features, manage dependencies cleanly, and support both local caching/offline capabilities and integration with external APIs.

## 2. Top-Level Directories

*   **`.github/`**: (Optional, if GitHub Actions is used) Contains GitHub Actions workflows for CI/CD (e.g., automated testing, build, deployment).
*   **`android/`**: Android-specific project files (Gradle, manifest, native code).
*   **`assets/`**: All static assets used by the application, such as images, icons, fonts, and localization files.
*   **`doc/`**: Project documentation, including architectural diagrams, API specifications, and this project structure document.
*   **`ios/`**: iOS-specific project files (Xcode, Pods, native code).
*   **`lib/`**: The core Dart source code for the Flutter application. This is where most development will occur.
*   **`scripts/`**: Utility scripts for development, build, or deployment automation (e.g., code generation, environment setup).
*   **`test/`**: Contains all automated tests for the application (unit, widget, and integration tests).
*   **`web/`**: (Optional, if web support is enabled) Web-specific project files.

## 3. `lib/` Directory (Core Application Logic)

The `lib/` directory is structured around Clean Architecture principles, dividing the application into three main layers: **Data**, **Domain**, and **Presentation**. This structure is applied per **Feature** to achieve modularity.

```
lib/
├── main.dart             # Application entry point
├── app_config/           # Environment configuration, dependency injection setup
│   ├── app_constants.dart
│   ├── app_env.dart      # Environment variables (dev, prod, staging)
│   ├── injector.dart     # Service Locator / Dependency Injection setup (e.g., Riverpod initialization)
│   └── logger.dart
├── core/                 # Cross-cutting concerns, utilities, and base classes
│   ├── error/            # Base failure classes, custom exceptions
│   │   └── failures.dart
│   ├── constants/        # App-wide constants, string literals, enums
│   │   ├── app_constants.dart
│   │   └── strings.dart
│   ├── network/          # Network utilities, Dio setup, interceptors, error handling for API calls
│   │   ├── api_client.dart
│   │   ├── network_info.dart
│   │   └── custom_interceptor.dart
│   ├── utils/            # General-purpose helper functions (date formatters, validators)
│   │   └── date_utils.dart
│   ├── localization/     # Internationalization setup (arb files handled in assets/localization)
│   │   └── app_localizations.dart
│   ├── theme/            # App theme, color palette, typography definitions
│   │   ├── app_colors.dart
│   │   ├── app_text_styles.dart
│   │   └── app_theme.dart
│   └── widgets/          # Global reusable UI widgets (e.g., custom buttons, loading indicators)
│       └── custom_app_bar.dart
├── features/             # Feature-driven modules (most significant part of the app)
│   ├── authentication/   # User sign-up, sign-in, session management, profile data
│   │   ├── data/
│   │   │   ├── models/           # User, Token models
│   │   │   ├── datasources/      # Remote (API), Local (SecureStorage for tokens)
│   │   │   │   ├── auth_remote_datasource.dart
│   │   │   │   └── auth_local_datasource.dart
│   │   │   └── repositories/     # AuthRepository implementation
│   │   │       └── auth_repository_impl.dart
│   │   ├── domain/
│   │   │   ├── entities/         # UserEntity, AuthTokenEntity
│   │   │   ├── repositories/     # AuthRepository interface
│   │   │   │   └── auth_repository.dart
│   │   │   └── usecases/         # SignIn, SignUp, GetCachedToken use cases
│   │   │       ├── sign_in.dart
│   │   │       └── sign_up.dart
│   │   └── presentation/
│   │       ├── pages/            # LoginScreen, RegisterScreen
│   │       ├── providers/        # AuthStateNotifier, AuthController (Riverpod)
│   │       └── widgets/          # LoginForm, SignUpForm
│   │
│   ├── content/          # Explore feed, article detail, categories, search
│   │   ├── data/
│   │   │   ├── models/           # Article, Category, Tag models
│   │   │   ├── datasources/      # Remote (WordPress REST API), Local (Drift/SQLite for caching)
│   │   │   │   ├── article_remote_datasource.dart
│   │   │   │   └── article_local_datasource.dart
│   │   │   └── repositories/     # ContentRepository implementation
│   │   │       └── content_repository_impl.dart
│   │   ├── domain/
│   │   │   ├── entities/         # ArticleEntity, CategoryEntity
│   │   │   ├── repositories/     # ContentRepository interface
│   │   │   └── usecases/         # GetArticles, SearchArticles, GetArticleDetail
│   │   └── presentation/
│   │       ├── pages/            # ExploreScreen, ArticleDetailScreen, SearchScreen
│   │       ├── providers/
│   │       └── widgets/          # ArticleCard, CategoryFilter
│   │
│   ├── community/        # Forum, topics, posts, moderation actions, reporting
│   │   ├── data/
│   │   │   ├── models/           # Forum, Topic, Post, Report models
│   │   │   ├── datasources/      # Remote (Forum API adapter), Local (Drift/SQLite for drafts/outbox)
│   │   │   │   ├── forum_remote_datasource.dart
│   │   │   │   └── forum_local_datasource.dart
│   │   │   └── repositories/     # CommunityRepository implementation
│   │   │       └── community_repository_impl.dart
│   │   ├── domain/
│   │   │   ├── entities/         # ForumEntity, TopicEntity, PostEntity
│   │   │   ├── repositories/     # CommunityRepository interface
│   │   │   └── usecases/         # GetTopics, CreatePost, ReportContent
│   │   └── presentation/
│   │       ├── pages/            # ForumListScreen, TopicDetailScreen, NewTopicScreen
│   │       ├── providers/
│   │       └── widgets/          # TopicCard, PostItem, ReportDialog
│   │
│   ├── calculators/      # Menstrual Cycle, Pregnancy Week, BMI calculators
│   │   ├── data/
│   │   │   ├── models/           # CalculatorInput, CalculatorResult models
│   │   │   ├── datasources/      # Local (Encrypted SQLite for opt-in local saves)
│   │   │   │   └── calculator_local_datasource.dart
│   │   │   └── repositories/     # CalculatorRepository implementation
│   │   │       └── calculator_repository_impl.dart
│   │   ├── domain/
│   │   │   ├── entities/         # CycleResultEntity, PregnancyResultEntity, BMIResultEntity
│   │   │   ├── repositories/     # CalculatorRepository interface
│   │   │   └── usecases/         # CalculateCycle, CalculatePregnancyWeek, CalculateBMI
│   │   └── presentation/
│   │       ├── pages/            # CycleCalculatorScreen, PregnancyCalculatorScreen, BMICalculatorScreen
│   │       ├── providers/
│   │       └── widgets/          # CalculatorForm, ResultCard
│   │
│   ├── pregnancy_guide/  # Week-by-week educational content
│   │   ├── data/
│   │   │   ├── models/           # WeekGuide models
│   │   │   ├── datasources/      # Remote (CMS API), Local (Drift/SQLite for caching)
│   │   │   │   ├── pregnancy_guide_remote_datasource.dart
│   │   │   │   └── pregnancy_guide_local_datasource.dart
│   │   │   └── repositories/     # PregnancyGuideRepository implementation
│   │   │       └── pregnancy_guide_repository_impl.dart
│   │   ├── domain/
│   │   │   ├── entities/         # WeekGuideEntity
│   │   │   ├── repositories/     # PregnancyGuideRepository interface
│   │   │   └── usecases/         # GetWeekGuide
│   │   └── presentation/
│   │       ├── pages/            # PregnancyGuideScreen, WeekDetailScreen
│   │       ├── providers/
│   │       └── widgets/          # WeekCard
│   │
│   ├── profile_settings/ # User profile, app settings, privacy controls
│   │   ├── data/
│   │   │   ├── models/           # Profile, Settings models
│   │   │   ├── datasources/      # Remote (Auth API), Local (SecureStorage for prefs, Drift for data export)
│   │   │   │   ├── user_remote_datasource.dart
│   │   │   │   └── user_local_datasource.dart
│   │   │   └── repositories/     # ProfileSettingsRepository implementation
│   │   │       └── profile_settings_repository_impl.dart
│   │   ├── domain/
│   │   │   ├── entities/         # UserProfileEntity, AppSettingsEntity
│   │   │   ├── repositories/     # ProfileSettingsRepository interface
│   │   │   └── usecases/         # UpdateProfile, ManageNotifications, ExportUserData, DeleteAccount
│   │   └── presentation/
│   │       ├── pages/            # ProfileScreen, SettingsScreen, PrivacySettingsScreen
│   │       ├── providers/
│   │       └── widgets/          # NotificationToggle, DataExportButton
│   │
│   └── support/          # FAQ, contact form
│       ├── data/
│       │   ├── models/           # FAQ, ContactForm models
│       │   ├── datasources/      # Remote (CMS API for FAQ, dedicated for contact form)
│       │   │   ├── faq_remote_datasource.dart
│       │   │   └── contact_remote_datasource.dart
│       │   └── repositories/     # SupportRepository implementation
│       │       └── support_repository_impl.dart
│       ├── domain/
│       │   ├── entities/         # FAQEntity, ContactFormEntity
│       │   ├── repositories/     # SupportRepository interface
│       │   └── usecases/         # GetFAQs, SubmitContactForm
│       └── presentation/
│           ├── pages/            # FAQScreen, ContactFormScreen
│           ├── providers/
│           └── widgets/          # FAQCategoryList
│
└── router/               # Application navigation setup (e.g., GoRouter)
    ├── app_router.dart
    └── routes.dart
```

### 3.1. Explanation of `lib/` Sub-Directories

*   **`main.dart`**: The entry point of the Flutter application. It typically initializes the app, sets up dependency injection, and runs the root widget.
*   **`app_config/`**:
    *   **`app_constants.dart`**: Global, immutable constants used throughout the application.
    *   **`app_env.dart`**: Manages environment-specific variables (e.g., API base URLs, keys) for different build types (development, staging, production) to ensure seamless switching without code changes.
    *   **`injector.dart`**: Centralizes the setup of dependency injection (using a package like Riverpod, GetIt, or Provider) for providing instances of repositories, data sources, and use cases to the presentation layer.
    *   **`logger.dart`**: Provides a centralized logging utility, configurable for different environments.
*   **`core/`**: This directory holds code that is shared across multiple features or represents fundamental infrastructure that doesn't belong to a specific business domain.
    *   **`error/`**: Defines custom `Failure` classes (representing business errors) and `Exception` classes (technical errors) for consistent error handling across the application.
    *   **`constants/`**: Contains app-wide constants, magic strings, numeric values, and enums. Includes `app_constants.dart` for general numerical or static configuration and `strings.dart` for localization keys or unlocalized fallback strings.
    *   **`network/`**: Encapsulates network-related utilities, including the `Dio` HTTP client setup, network connectivity checks, and custom interceptors for authentication, logging, and error handling (e.g., automatically retrying on 429 Rate Limited errors).
    *   **`utils/`**: Houses general-purpose helper functions (e.g., date formatters, input validators, string manipulation, metric unit conversions for Turkey).
    *   **`localization/`**: Contains classes related to internationalization, managing translations loaded from `.arb` files (stored in `assets/localization`).
    *   **`theme/`**: Defines the visual identity of the application, including color palettes, typography, and light/dark theme data, ensuring a consistent and accessible UI.
    *   **`widgets/`**: Reusable UI components that are general enough to be used across multiple features without modification (e.g., generic app bars, loading spinners, empty state widgets).
*   **`features/`**: This is the core of the feature-driven architecture. Each sub-directory represents a distinct feature of the application.
    *   Each `feature/X/` folder contains its own `data/`, `domain/`, and `presentation/` layers.
        *   **`data/`**: Responsible for data retrieval and persistence.
            *   **`models/`**: Data Transfer Objects (DTOs) that map directly to API responses or database schemas. These often extend `Domain Entities` and include `fromJson`/`toJson` methods.
            *   **`datasources/`**: Defines abstract interfaces and concrete implementations for retrieving data from specific sources:
                *   `remote/`: Interacts with external APIs (e.g., `Dio` client).
                *   `local/`: Interacts with local storage (e.g., `Drift`/`SQLite` for caching and local data, `FlutterSecureStorage` for sensitive data like tokens).
            *   **`repositories/`**: Implementations of the `Domain Repository` interfaces. These coordinate data sources to fulfill the `Domain`'s requests, handling caching, error mapping, and data transformation between `Models` and `Entities`.
        *   **`domain/`**: Represents the core business logic of the feature, independent of UI or data storage details.
            *   **`entities/`**: Plain Dart objects representing the core business concepts, free from any framework or data source specifics.
            *   **`repositories/`**: Abstract interfaces that define the contracts for data operations required by the `Domain` layer. These are implemented by the `Data` layer.
            *   **`usecases/`**: Encapsulate specific business operations or workflows. They orchestrate interactions between one or more `Repositories` to perform a single, well-defined task (e.g., `SignInUser`, `GetArticlesByCategory`).
        *   **`presentation/`**: Handles all UI-related concerns.
            *   **`pages/`**: Top-level screens or views of the application (e.g., `LoginScreen`, `ExploreScreen`).
            *   **`providers/` or `blocs/`**: Manages the state and logic required for the UI. Using Riverpod, this would include `StateNotifier` classes and associated `Provider` definitions to expose state to widgets. For BLoC, this would be BLoC/Cubit classes.
            *   **`widgets/`**: Reusable UI components specific to that feature (e.g., `ArticleCard`, `ForumPostItem`).
*   **`router/`**: Manages the navigation flow of the application, defining routes and handling navigation logic. Using `GoRouter` or similar.

## 4. `assets/` Directory

This directory contains all non-code assets.

*   **`assets/images/`**: Raster images (PNG, JPG) for illustrations, banners, and general UI.
*   **`assets/icons/`**: Vector images (SVG) or specific icon fonts.
*   **`assets/fonts/`**: Custom fonts used in the application.
*   **`assets/localization/`**: `.arb` files for storing localized strings (e.g., `app_en.arb`, `app_tr.arb`).

## 5. `doc/` Directory

Holds various project documentation, separate from code.

*   **`architecture_decisions/`**: Records significant architectural decisions and their rationales.
*   **`api_specifications/`**: Detailed API contracts (e.g., Postman collections, OpenAPI specs for the Forum Adapter).
*   **`project_structure.md`**: This document itself.
*   **`deployment_guide.md`**: Instructions for building and deploying the application.
*   **`database_schema.md`**: Documentation of the local SQLite database schema.

## 6. `scripts/` Directory

Contains utility scripts to automate development tasks.

*   **`generate_localization.sh`**: Script to generate Dart code from `.arb` files.
*   **`build_runner.sh`**: Script to run `flutter pub run build_runner build --delete-conflicting-outputs` for code generation (models, providers, database).
*   **`env_switcher.sh`**: Script to easily switch between environment files (e.g., `.env.dev`, `.env.prod`).

## 7. `test/` Directory

Organized to reflect the `lib/` structure, ensuring comprehensive test coverage.

*   **`test/unit/`**: Tests for individual functions, use cases, models, and providers/blocs in isolation.
*   **`test/widget/`**: Tests for UI widgets, ensuring they render correctly and respond to interactions.
*   **`test/integration_test/`**: End-to-end tests that simulate user flows across multiple features.

## 8. Platform-Specific Directories (`android/`, `ios/`)

These directories contain platform-specific configuration and code.

*   **`android/app/src/main/`**: Android Manifest, Java/Kotlin code for native features (e.g., FCM setup, custom push notification handlers, secure keystore access).
*   **`ios/Runner/`**: Info.plist, Swift/Objective-C code for native features (e.g., APNs setup, Keychain access).
*   **`android/gradle/` & `ios/Pods/`**: Dependency management files for Android and iOS respectively.

## 9. Configuration Files (Root Level)

Key project configuration files at the root of the project.

*   **`pubspec.yaml`**: Flutter project configuration, including dependencies, assets, and environment overrides.
*   **`analysis_options.yaml`**: Dart static analysis rules for code quality and consistency.
*   **`.env`**: Contains environment variables for local development, sourced by `flutter_dotenv`.
*   **`.gitignore`**: Specifies files and directories to be ignored by Git.

## 10. Database Structure (Local - Drift/SQLite)

The application will utilize `Drift` (formerly Moor) with `SQLite` for local data persistence and caching.

*   **`lib/data/local/app_database.dart`**: Defines the main `Drift` database class and its tables.
*   **`lib/data/local/dao/`**: Data Access Objects (DAOs) for interacting with specific tables (e.g., `ArticleDao`, `ForumDraftDao`, `CalculatorResultDao`).
*   **`lib/data/local/secure_storage_service.dart`**: Abstraction for `flutter_secure_storage` to handle sensitive data like JWT tokens, user preferences (e.g., notification settings), and encrypted local calculator results/pregnancy notes.

**Key Tables/Entities (Examples):**

*   **`articles`**: For cached content from the WordPress REST API, including HTML body, metadata, and image URLs.
*   **`categories`**: Cached list of content categories.
*   **`forum_drafts`**: User-composed forum topics or replies saved offline or in draft state. Encrypted.
*   **`forum_outbox`**: Queue for forum actions (likes, reports, posts) to be sent when online. Encrypted.
*   **`calculator_results`**: Opt-in saved results from wellness calculators (menstrual cycle, pregnancy week, BMI). Encrypted.
*   **`pregnancy_guide_weeks`**: Cached week-by-week pregnancy content.
*   **`user_preferences`**: Various app settings and user preferences (e.g., notification channels, theme).

## 11. API Client Integration

*   **`lib/core/network/api_client.dart`**: Configures `Dio` with base URLs, interceptors (for authentication, rate-limit handling, logging), and error parsers.
*   **`lib/features/*/data/datasources/remote/*_remote_datasource.dart`**: Each feature's remote data source will use an instance of the configured `api_client` to make specific API calls (WordPress REST for content, custom adapter for forum).
*   **`lib/core/network/error_parser.dart`**: Translates raw API error responses (e.g., 401, 429, custom JSON error formats) into consistent `Failure` types that the `Domain` layer understands.

## Database Schema Design
1. Overview and Rationale
The Kadın Atlası mobile application employs a hybrid data architecture, relying on external APIs for core content (articles, forum discussions) and a robust local SQLite database (managed by Drift for Flutter) to provide a privacy-first, performant, and offline-capable user experience. The local database stores cached content, user-generated data (drafts, calculator results), personal settings, and queued actions, minimizing reliance on constant network connectivity and prioritizing user data privacy.

Key Principles:
*   Privacy-First: Sensitive health-related calculator inputs/results are stored locally and encrypted by default, with no cloud sync without explicit future user consent. User IDs are pseudonymized where possible.
*   Offline-Capable: Critical content, user settings, and drafts are available and functional without an active internet connection.
*   Performance: Extensive caching reduces API calls and improves perceived load times.
*   Data Minimization: Only necessary data is stored, with defined retention policies and eviction strategies (e.g., LRU for cache).
*   API-Driven: The app primarily consumes data from established WordPress REST and a custom Forum API, mapping external models to local cache structures.

2. Local Database Schema (SQLite/Drift)
This section details the primary tables and their fields within the mobile application's local SQLite database.

2.1. Authentication & User State

*   Table: `UserSession` (Stores current authenticated user's metadata for quick access; tokens are in SecureStorage)
    *   `id` TEXT PRIMARY KEY (Local user ID, often matches `backendUserId` GUID)
    *   `backendUserId` TEXT NOT NULL UNIQUE (ID from the authentication backend)
    *   `email` TEXT NULL (Only if explicitly provided and consented)
    *   `displayName` TEXT NOT NULL
    *   `avatarUrl` TEXT NULL
    *   `isLoggedIn` BOOLEAN NOT NULL DEFAULT 0
    *   `lastLoginAt` TIMESTAMP
    *   `sessionTokenExpiry` TIMESTAMP (Expiry of the main JWT token)
    *   `refreshTokenExpiry` TIMESTAMP NULL (Expiry of a refresh token, if implemented by backend)

2.2. Content Caching

*   Table: `Article` (Cached articles from CMS)
    *   `id` TEXT PRIMARY KEY (CMS post ID)
    *   `title` TEXT NOT NULL
    *   `slug` TEXT NOT NULL
    *   `authorName` TEXT NULL
    *   `publishDate` TIMESTAMP NOT NULL
    *   `imageUrl` TEXT NULL (Featured media URL)
    *   `contentHtml` TEXT NOT NULL (Full article body)
    *   `excerpt` TEXT NULL
    *   `readTimeMinutes` INTEGER NULL
    *   `categoryIds` TEXT NOT NULL (JSON array of category IDs)
    *   `tagIds` TEXT NOT NULL (JSON array of tag IDs)
    *   `cachedAt` TIMESTAMP NOT NULL
    *   `etag` TEXT NULL (HTTP ETag for conditional fetching)
    *   `lastModified` TIMESTAMP NULL (HTTP Last-Modified for conditional fetching)

*   Table: `Category` (Cached categories from CMS)
    *   `id` TEXT PRIMARY KEY (CMS category ID)
    *   `name` TEXT NOT NULL
    *   `slug` TEXT NOT NULL
    *   `parentCategoryId` TEXT NULL REFERENCES `Category(id)`
    *   `cachedAt` TIMESTAMP NOT NULL

*   Table: `Tag` (Cached tags from CMS)
    *   `id` TEXT PRIMARY KEY (CMS tag ID)
    *   `name` TEXT NOT NULL
    *   `slug` TEXT NOT NULL
    *   `cachedAt` TIMESTAMP NOT NULL

*   Table: `PregnancyWeekGuide` (Cached week-by-week guide content)
    *   `week` INTEGER PRIMARY KEY (Gestational week, 1-42)
    *   `title` TEXT NOT NULL
    *   `contentHtml` TEXT NOT NULL
    *   `imageUrl` TEXT NULL
    *   `cachedAt` TIMESTAMP NOT NULL

2.3. Forum Data (Cached)

*   Table: `Forum` (Cached forum categories/boards)
    *   `id` TEXT PRIMARY KEY (Forum API ID)
    *   `name` TEXT NOT NULL
    *   `description` TEXT NULL
    *   `topicCount` INTEGER NOT NULL DEFAULT 0
    *   `postCount` INTEGER NOT NULL DEFAULT 0
    *   `lastActivityAt` TIMESTAMP NULL
    *   `cachedAt` TIMESTAMP NOT NULL

*   Table: `Topic` (Cached forum topics)
    *   `id` TEXT PRIMARY KEY (Forum API Topic ID)
    *   `forumId` TEXT NOT NULL REFERENCES `Forum(id)`
    *   `title` TEXT NOT NULL
    *   `authorId` TEXT NOT NULL (User ID from Forum API)
    *   `authorDisplayName` TEXT NOT NULL
    *   `authorAvatarUrl` TEXT NULL
    *   `createdAt` TIMESTAMP NOT NULL
    *   `lastActivityAt` TIMESTAMP NOT NULL
    *   `pinned` BOOLEAN NOT NULL DEFAULT 0
    *   `locked` BOOLEAN NOT NULL DEFAULT 0
    *   `replyCount` INTEGER NOT NULL DEFAULT 0
    *   `contentHtml` TEXT NOT NULL (Initial post content)
    *   `cachedAt` TIMESTAMP NOT NULL

*   Table: `Post` (Cached forum posts/replies)
    *   `id` TEXT PRIMARY KEY (Forum API Post ID)
    *   `topicId` TEXT NOT NULL REFERENCES `Topic(id)`
    *   `authorId` TEXT NOT NULL
    *   `authorDisplayName` TEXT NOT NULL
    *   `authorAvatarUrl` TEXT NULL
    *   `contentHtml` TEXT NOT NULL
    *   `createdAt` TIMESTAMP NOT NULL
    *   `likeCount` INTEGER NOT NULL DEFAULT 0
    *   `cachedAt` TIMESTAMP NOT NULL

2.4. User-Generated Content & Actions

*   Table: `Favorite` (User's favorited articles or topics)
    *   `id` TEXT PRIMARY KEY (Local GUID)
    *   `userId` TEXT NOT NULL REFERENCES `UserSession(backendUserId)`
    *   `targetType` TEXT NOT NULL CHECK (`targetType` IN ('article', 'topic'))
    *   `targetId` TEXT NOT NULL
    *   `favoritedAt` TIMESTAMP NOT NULL
    *   UNIQUE (`userId`, `targetType`, `targetId`)

*   Table: `Like` (User's likes on forum posts)
    *   `id` TEXT PRIMARY KEY (Local GUID)
    *   `userId` TEXT NOT NULL REFERENCES `UserSession(backendUserId)`
    *   `postId` TEXT NOT NULL REFERENCES `Post(id)`
    *   `likedAt` TIMESTAMP NOT NULL
    *   UNIQUE (`userId`, `postId`)

*   Table: `Draft` (Unsent forum topics or posts, or support forms)
    *   `id` TEXT PRIMARY KEY (Local GUID)
    *   `userId` TEXT NOT NULL REFERENCES `UserSession(backendUserId)`
    *   `type` TEXT NOT NULL CHECK (`type` IN ('topic', 'post', 'support_form'))
    *   `targetForumId` TEXT NULL REFERENCES `Forum(id)` (For new topics)
    *   `targetTopicId` TEXT NULL REFERENCES `Topic(id)` (For replies)
    *   `title` TEXT NULL (For new topics)
    *   `contentHtml` BLOB NOT NULL ENCRYPTED (Encrypted, user-editable content)
    *   `createdAt` TIMESTAMP NOT NULL
    *   `lastSavedAt` TIMESTAMP NOT NULL
    *   `status` TEXT NOT NULL DEFAULT 'draft' CHECK (`status` IN ('draft', 'queued', 'failed'))
    *   `errorMessage` TEXT NULL (If status is 'failed')

*   Table: `QueuedAction` (Offline actions waiting to be sent to API)
    *   `id` TEXT PRIMARY KEY (Local GUID)
    *   `userId` TEXT NOT NULL REFERENCES `UserSession(backendUserId)`
    *   `actionType` TEXT NOT NULL CHECK (`actionType` IN ('create_topic', 'create_post', 'like_post', 'unlike_post', 'report_content', 'submit_support_form'))
    *   `targetType` TEXT NULL CHECK (`targetType` IN ('article', 'topic', 'post', 'user', 'forum'))
    *   `targetId` TEXT NULL (ID of the entity being acted upon, if applicable)
    *   `payload` BLOB NOT NULL ENCRYPTED (JSON payload for the action, e.g., topic content, report reason, encrypted)
    *   `createdAt` TIMESTAMP NOT NULL
    *   `status` TEXT NOT NULL DEFAULT 'pending' CHECK (`status` IN ('pending', 'sent', 'failed'))
    *   `retryCount` INTEGER NOT NULL DEFAULT 0
    *   `lastAttemptAt` TIMESTAMP NULL
    *   `errorMessage` TEXT NULL

2.5. Wellness Calculators (Local & Encrypted)

*   Table: `MenstrualCycleResult`
    *   `id` TEXT PRIMARY KEY (Local GUID)
    *   `userId` TEXT NOT NULL REFERENCES `UserSession(backendUserId)`
    *   `lmpDate` DATE NOT NULL
    *   `avgCycleLengthDays` INTEGER NOT NULL
    *   `periodLengthDays` INTEGER NULL
    *   `variabilityDays` INTEGER NULL
    *   `resultJson` BLOB NOT NULL ENCRYPTED (Full calculator output JSON, encrypted)
    *   `savedAt` TIMESTAMP NOT NULL
    *   `schemaVersion` INTEGER NOT NULL DEFAULT 1

*   Table: `PregnancyResult`
    *   `id` TEXT PRIMARY KEY (Local GUID)
    *   `userId` TEXT NOT NULL REFERENCES `UserSession(backendUserId)`
    *   `lmpDate` DATE NULL
    *   `usgDate` DATE NULL
    *   `usgGaWeeks` INTEGER NULL
    *   `usgGaDays` INTEGER NULL
    *   `conceptionMethod` TEXT NULL CHECK (`conceptionMethod` IN ('spontaneous', 'IVF_day3', 'IVF_day5'))
    *   `resultJson` BLOB NOT NULL ENCRYPTED
    *   `savedAt` TIMESTAMP NOT NULL
    *   `schemaVersion` INTEGER NOT NULL DEFAULT 1

*   Table: `BmiResult`
    *   `id` TEXT PRIMARY KEY (Local GUID)
    *   `userId` TEXT NOT NULL REFERENCES `UserSession(backendUserId)`
    *   `heightCm` REAL NOT NULL
    *   `weightKg` REAL NOT NULL
    *   `resultJson` BLOB NOT NULL ENCRYPTED
    *   `savedAt` TIMESTAMP NOT NULL
    *   `schemaVersion` INTEGER NOT NULL DEFAULT 1

2.6. Notifications

*   Table: `Notification` (Received push notifications, for display in app inbox)
    *   `id` TEXT PRIMARY KEY (Backend notification ID or local GUID)
    *   `userId` TEXT NOT NULL REFERENCES `UserSession(backendUserId)`
    *   `type` TEXT NOT NULL (e.g., 'pregnancy_week', 'astrology_daily', 'forum_reply', 'content_update')
    *   `title` TEXT NOT NULL
    *   `body` TEXT NOT NULL
    *   `payload` TEXT NULL (JSON for deep linking or contextual data)
    *   `sentAt` TIMESTAMP NOT NULL
    *   `displayedAt` TIMESTAMP NULL
    *   `readAt` TIMESTAMP NULL
    *   `actionedAt` TIMESTAMP NULL

2.7. Search History

*   Table: `SearchHistory`
    *   `id` TEXT PRIMARY KEY (Local GUID)
    *   `userId` TEXT NOT NULL REFERENCES `UserSession(backendUserId)`
    *   `query` TEXT NOT NULL
    *   `searchedAt` TIMESTAMP NOT NULL

2.8. Privacy & Consent Records

*   Table: `Consent` (Records user consent decisions)
    *   `id` TEXT PRIMARY KEY (Local GUID)
    *   `userId` TEXT NOT NULL REFERENCES `UserSession(backendUserId)`
    *   `consentType` TEXT NOT NULL CHECK (`consentType` IN ('analytics', 'notifications_pregnancy', 'notifications_astrology', 'notifications_forum', 'local_calculator_save', 'terms_of_service', 'privacy_policy', 'marketing_email'))
    *   `status` TEXT NOT NULL CHECK (`status` IN ('given', 'withdrawn'))
    *   `givenAt` TIMESTAMP NOT NULL
    *   `withdrawnAt` TIMESTAMP NULL
    *   `policyVersion` TEXT NULL (Hash or version string of the policy consented to)
    *   UNIQUE (`userId`, `consentType`, `policyVersion`) -- Allows for re-consenting to updated policies. The most recent `status` for a `consentType` indicates the current state.

3. External Data Models (Consumed via API)
These models represent the structure of data consumed from the headless CMS (WordPress REST) and the Forum API. They are not stored in their entirety in the local database but inform the structure of the cached tables (`Article`, `Category`, `Tag`, `Forum`, `Topic`, `Post`).

3.1. CMS (WordPress REST)

*   `Post` Model (JSON structure as received):
    *   `id`: INTEGER (Unique post identifier)
    *   `date`: ISO 8601 string
    *   `slug`: TEXT
    *   `title.rendered`: TEXT (HTML-encoded title)
    *   `content.rendered`: TEXT (Full HTML content)
    *   `excerpt.rendered`: TEXT (HTML-encoded excerpt)
    *   `categories`: ARRAY of INTEGER IDs
    *   `tags`: ARRAY of INTEGER IDs
    *   `_embedded.author[0].name`: TEXT
    *   `_embedded.wp:featuredmedia[0].source_url`: TEXT

*   `Category` Model:
    *   `id`: INTEGER
    *   `name`: TEXT
    *   `slug`: TEXT
    *   `parent`: INTEGER (Parent category ID)

*   `UserLite` Model (for `_embedded.author`):
    *   `id`: INTEGER
    *   `name`: TEXT

3.2. Forum API (Thin Backend Adapter)

*   `Forum` Model:
    *   `id`: INTEGER
    *   `name`: TEXT
    *   `description`: TEXT
    *   `topic_count`: INTEGER
    *   `post_count`: INTEGER
    *   `last_activity_at`: ISO 8601 string

*   `Topic` Model:
    *   `id`: INTEGER
    *   `forum_id`: INTEGER
    *   `title`: TEXT
    *   `author`: `UserLite` object
    *   `created_at`: ISO 8601 string
    *   `last_activity_at`: ISO 8601 string
    *   `pinned`: BOOLEAN
    *   `locked`: BOOLEAN
    *   `reply_count`: INTEGER

*   `Post` Model:
    *   `id`: INTEGER
    *   `topic_id`: INTEGER
    *   `author`: `UserLite` object
    *   `content_html`: TEXT (Sanitized HTML)
    *   `created_at`: ISO 8601 string
    *   `like_count`: INTEGER
    *   `is_owner`: BOOLEAN (Computed by server for client controls)

*   `UserLite` Model (for forum authors):
    *   `id`: INTEGER
    *   `display_name`: TEXT
    *   `avatar_url`: TEXT NULL

4. Relationships (Local Database)
The local database relationships primarily focus on user-centric actions and cached content.

*   `UserSession` is the central user entity, linking to:
    *   `Favorite` (1:N)
    *   `Like` (1:N)
    *   `Draft` (1:N)
    *   `QueuedAction` (1:N)
    *   `MenstrualCycleResult` (1:N)
    *   `PregnancyResult` (1:N)
    *   `BmiResult` (1:N)
    *   `Notification` (1:N)
    *   `SearchHistory` (1:N)
    *   `Consent` (1:N)
*   Content items (`Article`, `Topic`, `Post`) are referenced by user actions:
    *   `Article` <-> `Favorite` (Many-to-Many via `targetType`/`targetId`)
    *   `Topic` <-> `Favorite` (Many-to-Many via `targetType`/`targetId`)
    *   `Post` <-> `Like` (Many-to-Many)
    *   `Forum` <-> `Topic` (1:N)
    *   `Topic` <-> `Post` (1:N)
*   Drafts and Queued Actions reference their respective target entities (Forum, Topic, Post) via foreign keys where applicable.

5. Database Structure & Storage Considerations

*   Database Technology: SQLite, managed by Drift (Moor) for Flutter. This provides type-safe queries, migrations, and reactive streams.
*   Data Types: Standard SQLite types (`INTEGER`, `REAL`, `TEXT`, `BLOB`). `BOOLEAN` values are stored as `INTEGER` (0 for false, 1 for true). `DATE` and `TIMESTAMP` are stored as ISO 8601 `TEXT`.
*   Primary Keys: All tables use a `TEXT` UUID/GUID as primary keys where local generation is needed (e.g., `Draft`, `QueuedAction`, `Favorite`, calculator results). External IDs (e.g., from CMS/Forum API) are used for cached content.
*   Indexing: Indices will be created on foreign key columns (`userId`, `targetId`, `forumId`, `topicId`, `postId`) and frequently queried columns (`cachedAt`, `status`, `publishDate`, `createdAt`) to optimize query performance.
*   Encryption: Fields marked `ENCRYPTED` will use a secure, per-device encryption key derived from the OS's Keychain (iOS) or Keystore (Android). This key will be used to encrypt/decrypt the BLOB data for sensitive information, such as calculator results and forum drafts, before storing it in SQLite.
*   Data Minimization & Retention:
    *   Cached content (`Article`, `Topic`, `Post`, `PregnancyWeekGuide`): Implement LRU (Least Recently Used) caching strategy with configurable TTLs (e.g., 7-30 days) and hard size limits (e.g., 100-250MB) to manage disk usage.
    *   Drafts: Retain for a configurable period (e.g., 30-90 days) or until successfully sent/deleted by the user.
    *   Calculator results: Retain until explicitly deleted by the user or account deletion, provided consent to save locally was given.
    *   Notifications: Retain for a configurable period (e.g., 90 days) or until user clears them.
    *   Search History: Retain for a configurable period (e.g., 90 days) or until user clears it.
    *   Consents: Retained for auditability according to KVKK/GDPR requirements.
*   Privacy Implications:
    *   Local-Only Sensitive Data: Calculator inputs/results are stored and encrypted exclusively on the user's device. No cloud backup or synchronization for this data is in scope for MVP.
    *   User Pseudonyms: Forum contributions are linked to a `backendUserId` and `displayName`, not necessarily real names, aligning with privacy-first community guidelines.
    *   Auditability: `Consent` table and `QueuedAction` logs (if sent to backend for moderation) provide audit trails for user actions and privacy choices.
*   Schema Evolution: Drift's migration capabilities will be used to manage schema changes over time, ensuring data integrity during app updates.

6. Naming Conventions & Data Types

*   Table Names: Singular, PascalCase (e.g., `Article`, `UserSession`).
*   Column Names: camelCase (e.g., `backendUserId`, `publishDate`).
*   Foreign Keys: Named `referencedTableNameId` (e.g., `forumId`, `topicId`).
*   Date/Time: Stored as `TIMESTAMP` (ISO 8601 TEXT) and `DATE` (YYYY-MM-DD TEXT) for consistency and ease of sorting.
*   Booleans: Stored as `INTEGER` (0 or 1).
*   Enumerations: Stored as `TEXT` with `CHECK` constraints to ensure valid values.
*   JSON Arrays/Objects: Stored as `TEXT` and parsed/serialized in the application layer.

## User Flow
Kadın Atlası Kullanıcı Akışları

1. Onboarding & Hesap Yönetimi

1.1 İlk Kullanıcı Deneyimi (FTUX) & Kişiselleştirme
*   **Amaç:** Yeni bir kullanıcıyı uygulamanın ilk kurulumu, temel kişiselleştirme tercihleri ve isteğe bağlı olarak hesap oluşturma süreci boyunca yönlendirmek.
*   **Ön Koşullar:** Kullanıcı uygulamayı indirmiş ve ilk kez açmış olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Sistem:** Bir kahraman görseli ve "Sağlığın, yıldızların ve topluluk desteği burada birleşiyor." gibi empatik bir Türkçe mesaj içeren bir "Hoş Geldin" ekranı gösterir. Temel değer önerilerini (Takvim, Hesaplayıcılar, Astroloji, Forum) belirtir.
    2.  **Kullanıcı:** "Başla" düğmesine dokunur.
    3.  **Sistem:** Bir "Kişiselleştirme Anketi" (2-3 ekran) sunar.
    4.  **Kullanıcı:** Odak alanlarını (örneğin, Genel Sağlık, Gebelik, Fitness, Astroloji) onay kutuları aracılığıyla seçer. (Örn: "Hangi konularla ilgileniyorsun?").
    5.  **Kullanıcı (İsteğe Bağlı):** Seçimlerine göre ek ayrıntılar (örneğin, burç için doğum tarihi, Gebelik seçildiyse Son Adet Tarihi/Beklenen Doğum Tarihi) sağlar. Kullanıcı bunları atlayabilir.
    6.  **Kullanıcı:** "Devam Et" düğmesine dokunur.
    7.  **Sistem:** "Hesap Kurulumu" ekranını gösterir. "Misafir Modu" (salt okunur) veya "Hesap Oluştur" seçeneğini sunar. Bir hesabın faydalarını vurgular.
    8.  **Kullanıcı (İsteğe Bağlı):** Bir hesap oluşturmayı seçer (1.2 Kaydol Akışına ilerler) veya "Misafir Olarak Devam Et" seçeneğini seçer.
    9.  **Sistem:** "Gizlilik & Onay" ekranını gösterir (hesap oluşturuluyorsa veya analitik onayı için).
    10. **Kullanıcı:** Hizmet Şartlarını ve Gizlilik Politikasını (zorunlu) inceler ve kabul eder; isteğe bağlı olarak analitik ve pazarlama iletişimlerine onay kutuları aracılığıyla katılır/redder.
    11. **Sistem:** Ana bölümleri (Keşfet, Topluluk, Hesaplayıcılar, Gebelik Rehberi, Astroloji) vurgulayan kısa bir "Özellik Turu" (döngüsel veya ipucu balonları) gösterir.
    12. **Kullanıcı:** Turu tamamlar.
    13. **Sistem:** Seçilen ilgi alanlarına göre içerik modülleri gösteren kişiselleştirilmiş Ana Sayfa Akışına yönlendirir.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Kullanıcı isteğe bağlı bilgileri atlar:** Sistem varsayılan ayarlarla veya mümkün olduğunca çıkarılan tercihlerle devam eder.
    *   A.2 **Kullanıcı zorunlu onayları reddeder:** Sistem hesap oluşturmayı veya uygulamanın tam kullanımını engeller, gereksinimi açıklar.
*   **Ekran Tasarımı Açıklaması:**
    *   **Hoş Geldin Ekranı:** Tam ekran illüstrasyon, büyük dostane başlık, değer önerisi metni, tek "Başla" düğmesi.
    *   **Kişiselleştirme Anketi Ekranları:** İlgi alanı seçimi için simgeli kart benzeri düzen, "İstersen atla" seçeneği. Doğum tarihi/Son Adet Tarihi için tarih seçiciler.
    *   **Hesap Kurulum Ekranı:** "Hesap Oluştur" (birincil), "Misafir Olarak Devam Et" (ikincil) için belirgin seçenekler. Hesap avantajlarını açıklayan küçük metin.
    *   **Gizlilik & Onay Ekranı:** Hizmet Şartları/Gizlilik Politikası için kaydırılabilir metin, net onay kutuları (zorunlu ve isteğe bağlı), "Kabul Et ve Devam Et" düğmesi.
    *   **Özellik Turu:** Kısa metinler ve animasyonlu işaretçiler içeren tam ekran kaplamalar, "Anladım" veya "İleri" düğmeleri.
    *   **Ana Sayfa Akışı:** Üst navigasyon (Keşfet, Topluluk, Hesaplayıcılar, Profil), kişiselleştirilmiş içerik kartları (makaleler, burçlar, forum konuları).
*   **Etkileşim Kalıpları:** Akıcı ekran geçişleri, net CTA düğmeleri, onay kutusu seçimleri, tarih seçiciler. Özellik turu için ipucu balonları.
*   **API Etkileşimleri:** İlk anket sırasında doğrudan API çağrısı yapılmaz, ancak tercihler yerel olarak depolanır ve hesap oluşturma sırasında arka uca gönderilir (kişiselleştirme için UserLite verileri).
*   **Gizlilik/Erişilebilirlik Notları:** Veri işleme ve isteğe bağlı analitik için açık onay. Tüm ekranlar için ölçeklenebilir metin, yüksek kontrast. Dil, empatik Türkçedir.
*   **Çevrimdışı Destek:** Onboarding ekranları, ilk indirmeden sonra büyük ölçüde çevrimdışı çalışmalıdır. Hesap oluşturma için ağ bağlantısı gereklidir.

1.2 Kullanıcı Kaydı (E-posta/Şifre)
*   **Amaç:** Yeni bir kullanıcı, uygulamanın tüm özelliklerine erişmek için kimliği doğrulanmış bir hesap oluşturur.
*   **Ön Koşullar:** Kullanıcı "Hesap Kurulumu" ekranında olmalı veya bir özellik geçidinden kaydolmayı seçmiş olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** "Hesap Oluştur" seçeneğini seçer.
    2.  **Sistem:** "Kaydol" formunu gösterir.
    3.  **Kullanıcı:** E-posta, Şifre (min 8 karakter, güçlü gereksinimler), Şifreyi Onayla girer, bir Görünen Ad (takma ad teşvik edilir) seçer.
    4.  **Kullanıcı:** "Hizmet Şartları" ve "Gizlilik Politikası" için zorunlu onay kutularını işaretler. İsteğe bağlı pazarlama e-postalarına katılır/redder.
    5.  **Kullanıcı:** "Kaydol" düğmesine dokunur.
    6.  **Sistem:** Girişi doğrular. Geçerliyse, verileri arka uca gönderir (Kimlik Doğrulama Uç Noktaları: POST /jwt-auth/v1/token, potansiyel olarak bir kayıt uç noktası). Bir doğrulama e-postası gönderir.
    7.  **Sistem:** Kullanıcıya e-postalarını kontrol etmesini söyleyen bir "Doğrulama Gerekli" ekranı gösterir.
    8.  **Kullanıcı:** Doğrulama e-postasını açar ve bağlantıya tıklar.
    9.  **Sistem:** E-postayı (arka uç) doğrular ve hesabı etkinleştirir.
    10. **Sistem:** Kullanıcıyı uygulamaya geri yönlendirir (veya bir web başarı sayfasına), otomatik olarak giriş yapar.
    11. **Sistem:** Bir "Kadın Atlası'na Hoş Geldiniz" onayı gösterir, ardından Ana Sayfa Akışına yönlendirir.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Geçersiz giriş:** Sistem satır içi doğrulama hataları gösterir (örn: "Geçersiz e-posta formatı", "Şifreler eşleşmiyor", "Bu e-posta zaten kullanımda."). Kullanıcı düzeltir ve tekrar dener.
    *   A.2 **API hatası/ağ sorunu:** Sistem genel bir hata mesajı gösterir ("Bir hata oluştu, lütfen tekrar deneyin.") ve yeniden deneme sunar.
    *   A.3 **E-posta doğrulama zaman aşımı:** Sistem, kullanıcının "Doğrulama Gerekli" ekranından yeni bir doğrulama e-postası istemesine izin verir.
*   **Ekran Tasarımı Açıklaması:**
    *   **Kaydol Formu:** E-posta, Şifre, Şifre Tekrarı metin giriş alanları. Görünen Ad metin girişi. Hizmet Şartları, Gizlilik Politikası (zorunlu), Pazarlama (isteğe bağlı) için onay kutuları. "Kaydol" düğmesi. "Zaten hesabın var mı? Giriş Yap" bağlantısı.
    *   **Doğrulama Gerekli Ekranı:** Simge, belirgin mesaj, talimat metni, "E-postayı tekrar gönder" düğmesi.
*   **Etkileşim Kalıpları:** Form doğrulama, güvenli şifre girişi (görünürlük değiştirme), kaydol düğmesinde yükleme göstergesi.
*   **API Etkileşimleri:** POST /jwt-auth/v1/token (veya özel kayıt API'si). E-posta doğrulama hizmeti entegrasyonu.
*   **Gizlilik/Erişilebilirlik Notları:** Veri işleme için zorunlu onay. Görünen ad için takma ad seçeneği. Hassas veriler (şifre) güvenli bir şekilde işlenir. Erişilebilir form alanları etiketlerle.
*   **Çevrimdışı Destek:** Form gönderimi ağ bağlantısı gerektirir. Kullanıcı çevrimdışı hesap oluşturamaz.

1.3 Kullanıcı Girişi (E-posta/Şifre)
*   **Amaç:** Mevcut bir kullanıcı hesabına giriş yapar.
*   **Ön Koşullar:** Kullanıcının mevcut bir Kadın Atlası hesabı olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** Hesap Kurulumu, Profil veya özellik geçidinden "Giriş Yap" düğmesine dokunur.
    2.  **Sistem:** "Giriş Yap" formunu gösterir.
    3.  **Kullanıcı:** E-posta ve Şifreyi girer.
    4.  **Kullanıcı:** "Giriş Yap" düğmesine dokunur.
    5.  **Sistem:** Kimlik bilgilerini arka uca gönderir (Kimlik Doğrulama Uç Noktaları: POST /jwt-auth/v1/token).
    6.  **Sistem:** Kimlik doğrulama başarılı olursa, arka uç bir JWT döndürür. Uygulama bunu güvenli bir şekilde saklar (Keychain/Keystore).
    7.  **Sistem:** Kullanıcıyı artık tamamen kimliği doğrulanmış Ana Sayfa Akışına yönlendirir.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Geçersiz kimlik bilgileri:** Sistem "Yanlış e-posta veya şifre." mesajını gösterir. Kullanıcı tekrar deneyebilir veya "Şifremi Unuttum" başlatabilir.
    *   A.2 **Ağ hatası:** Sistem genel bir ağ hatası gösterir ve yeniden deneme sunar.
    *   A.3 **Belirteç (Token) süresi doldu:** Depolanan JWT'nin süresi dolarsa, uygulama yenilemeye çalışır (yenileme belirteçleri uygulanmışsa) veya kullanıcıdan tekrar kimlik doğrulamasını ister.
*   **Ekran Tasarımı Açıklaması:**
    *   **Giriş Yap Formu:** E-posta, Şifre metin giriş alanları. "Giriş Yap" düğmesi. "Şifremi Unuttum?" bağlantısı. "Hesabın yok mu? Kaydol" bağlantısı.
*   **Etkileşim Kalıpları:** Giriş yap düğmesinde yükleme göstergesi.
*   **API Etkileşimleri:** POST /jwt-auth/v1/token.
*   **Gizlilik/Erişilebilirlik Notları:** Belirteçler güvenli bir şekilde depolanır. Erişilebilir form alanları.
*   **Çevrimdışı Destek:** Kimlik doğrulama için ağ bağlantısı gereklidir.

1.4 Şifre Sıfırlama
*   **Amaç:** Kullanıcı, unutulan şifresini sıfırlar.
*   **Ön Koşullar:** Kullanıcının bir hesabı var ancak giriş yapamıyor.
*   **Aktörler:** Kullanıcı, Sistem, E-posta Hizmeti.
*   **Ana Akış:**
    1.  **Kullanıcı:** Giriş Yap ekranında "Şifremi Unuttum?" düğmesine dokunur.
    2.  **Sistem:** "Şifre Sıfırlama" ekranını gösterir.
    3.  **Kullanıcı:** Kayıtlı E-posta adresini girer.
    4.  **Kullanıcı:** "Şifre Sıfırlama Bağlantısı Gönder" düğmesine dokunur.
    5.  **Sistem:** E-postayı doğrular. Bulunursa, e-postaya bir şifre sıfırlama bağlantısı gönderir (arka uç API çağrısı aracılığıyla).
    6.  **Sistem:** Bir onay mesajı gösterir: "Şifre sıfırlama bağlantısı e-posta adresinize gönderildi."
    7.  **Kullanıcı:** E-postayı açar ve sıfırlama bağlantısına tıklar.
    8.  **Sistem (Web):** Kullanıcının yeni bir şifre belirleyebileceği bir web sayfası açar.
    9.  **Kullanıcı:** Yeni bir Şifre girer ve onaylar.
    10. **Sistem (Web):** Yeni şifreyi doğrular ve günceller. Başarılı sıfırlamayı onaylar.
    11. **Sistem (Web):** Kullanıcıyı uygulamaya geri yönlendirir (veya uygulamaya geri dönüp giriş yapmasını önerir).
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Geçersiz/kayıtlı olmayan e-posta:** Sistem kullanıcıya "Bu e-posta adresi sistemimizde kayıtlı değil." bilgisini verir.
    *   A.2 **Ağ/API hatası:** Genel hata mesajı.
    *   A.3 **Sıfırlama bağlantısının süresi doldu:** Web sayfası, bağlantının süresinin dolduğunu bildirir ve yeni bir tane istemesini ister.
*   **Ekran Tasarımı Açıklaması:**
    *   **Şifre Sıfırlama Ekranı:** E-posta giriş alanı, "Şifre Sıfırlama Bağlantısı Gönder" düğmesi.
    *   (Yeni şifre girişi için web tabanlı kullanıcı arayüzü, uygulama kapsamı dışındadır, ancak kullanıcı yolculuğunun bir parçasıdır).
*   **Etkileşim Kalıpları:** Standart e-posta girişi, düğme dokunuşu.
*   **API Etkileşimleri:** Sıfırlama e-postası göndermek için arka uç API'si.
*   **Gizlilik/Erişilebilirlik Notları:** Şifre sıfırlama e-postaları güvenli bir şekilde oluşturulmalı ve zaman sınırlı olmalı.
*   **Çevrimdışı Destek:** Ağ bağlantısı gereklidir.

1.5 Hesap Silme
*   **Amaç:** Kullanıcı hesabını ve ilişkili verileri kaldırır.
*   **Ön Koşullar:** Kullanıcı giriş yapmış olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** Profil -> Ayarlar -> Gizlilik yolunu izler.
    2.  **Kullanıcı:** "Hesabımı Sil" düğmesine dokunur.
    3.  **Sistem:** Veri kaybı hakkında güçlü bir uyarı ve iki adımlı bir doğrulama istemi (örn: "Hesabınızı silmek üzeresiniz. Bu işlem geri alınamaz. Devam etmek için şifrenizi girin.") içeren bir onay modalı gösterir.
    4.  **Kullanıcı:** Doğrulama için Şifresini tekrar girer.
    5.  **Kullanıcı:** Silme işlemini onaylar.
    6.  **Sistem:** Silme isteğini arka uca gönderir.
    7.  **Sistem:** Başarılı olursa, kullanıcının forum gönderileri anonimleştirilir (yazar "Silinmiş Kullanıcı" olur), profil verileri temizlenir ve yerel belirteçler/veriler silinir.
    8.  **Sistem:** Kullanıcının oturumunu kapatır ve bir onay ekranı gösterir. Silme işlemini onaylayan bir e-posta gönderir.
    9.  **Sistem:** Arka uç, tam veri temizliğini 30 gün içinde tamamlar.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Yanlış şifre:** Sistem bir hata gösterir.
    *   A.2 **Ağ/API hatası:** Genel hata, kullanıcı tekrar deneyebilir.
    *   A.3 **Kullanıcı iptal eder:** Modal kapanır, kullanıcı giriş yapmış kalır.
*   **Ekran Tasarımı Açıklaması:**
    *   **Gizlilik Ayarları:** "Hesabımı Sil" için liste öğesi.
    *   **Onay Modalı:** Uyarı metni, şifre girişi, "İptal" ve "Hesabı Sil" düğmeleri.
    *   **Onay Ekranı:** Başarı mesajı, uygulamaya dönmek için "Giriş Yap" bağlantısı.
*   **Etkileşim Kalıpları:** Modal iletişim kutuları, şifre girişi.
*   **API Etkileşimleri:** Hesap silme için arka uç API'si.
*   **Gizlilik/Erişilebilirlik Notları:** Güvenlik için iki adımlı doğrulama. Genel içeriğin (forum gönderileri) anonimleştirilmesi. Hangi verilerin silindiği hakkında açık iletişim. KVKK/GDPR uyumluluğu.
*   **Çevrimdışı Destek:** Silme isteği için ağ bağlantısı gereklidir. Yerel veriler, bir sonraki uygulama başlatmada/senkronizasyon denemesinde temizlenecektir.

2. İçerik Tüketimi (Keşfet & Gebelik Rehberi)

2.1 Ana Sayfa Akışında Gezinme
*   **Amaç:** Kullanıcı yeni ve ilgili makaleleri keşfeder.
*   **Ön Koşullar:** Kullanıcı giriş yapmış veya misafir modunda olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Sistem:** Öne çıkan makaleler için bir döngüsel (carousel), "Son Makaleler" bölümü ve potansiyel olarak kişiselleştirilmiş modüller (örneğin, Astroloji için "Bugün Burcun", hamileyse "Haftalık Hamilelik Rehberi") içeren Ana Sayfa Akışını gösterir.
    2.  **Kullanıcı:** Daha fazla içeriğe göz atmak için dikey olarak kaydırır.
    3.  **Sistem:** Kullanıcı kaydırdıkça daha fazla makale dinamik olarak yükler (sayfalandırma).
    4.  **Kullanıcı:** Başlıktaki veya özel bir kategori bölümündeki bir kategori filtresine (örneğin, "Gebelik", "Sağlık", "Astroloji") dokunur.
    5.  **Sistem:** Akışı yalnızca seçilen kategorideki makaleleri gösterecek şekilde filtreler ve kullanıcı arayüzünü filtreyi yansıtacak şekilde günceller.
    6.  **Kullanıcı:** Bir makale kartına dokunur.
    7.  **Sistem:** Makale Detay ekranına yönlendirir (bkz. 2.2).
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Ağ bağlantısı yok:** Sistem önbelleğe alınmış içeriği bir "Son Güncelleme" zaman damgasıyla gösterir. Önbelleğe alınmış içerik yoksa, bir ağ hata mesajı gösterir.
    *   A.2 **Daha fazla içerik yükleme hatası:** Sistem, "Daha fazla içerik yüklenemedi, lütfen tekrar deneyin." mesajını bir yeniden deneme düğmesiyle gösterir.
*   **Ekran Tasarımı Açıklaması:**
    *   **Ana Sayfa Akışı:** Kadın Atlası logosu, isteğe bağlı arama simgesi içeren üst uygulama çubuğu. Altında, yatay olarak kaydırılabilir bir kategori filtre çubuğu. Büyük döngüsel kartlar (öne çıkanlar) ve daha küçük dikey kartlar (en yeni/önerilen) içeren ana içerik alanı. Her kart bir başlık, görsel, kategori ve okuma süresi içerir.
    *   **Kişiselleştirilmiş Modüller:** "Bugün Burcun" kartı, ilerlemeyi gösteren "Hamilelik Haftan" kartı.
*   **Etkileşim Kalıpları:** İçerik için dikey kaydırma, kategoriler için yatay kaydırma. Navigasyon için dokunma. Yeni içerik için iskelet yükleme.
*   **API Etkileşimleri:** CMS (WordPress REST): öne çıkan/en yeni için GET /posts?_embed=1. GET /categories. Filtrelenmiş akışlar için GET /posts?categories=<id>.
*   **Gizlilik/Erişilebilirlik Notları:** İçerik filtreleme yereldir veya anonim tercihlere dayanır; hiçbir PII gönderilmez. Ölçeklenebilir yazı tipleri, yüksek kontrastlı metin. İçerik kartları ve kategoriler için ekran okuyucu desteği.
*   **Çevrimdışı Destek:** Önbelleğe alınmış makaleler ve kategoriler çevrimdışı kullanılabilir (kota dahilinde). Yeni içerik yüklenemez.

2.2 Bir Makaleyi Görüntüleme
*   **Amaç:** Kullanıcı seçilen bir makaleyi okur.
*   **Ön Koşullar:** Kullanıcı bir akıştan veya aramadan bir makale kartına dokunmuş olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Sistem:** Makale Detay ekranını gösterir. Başlık, kapak görseli, yazar bilgisi, okuma süresi, ana metin içeriği (HTML) ve ilgili gönderileri gösterir.
    2.  **Kullanıcı:** Makaleyi okumak için kaydırır.
    3.  **Sistem:** Varsa ilgili gönderileri otomatik olarak alta yükler.
    4.  **Kullanıcı:** Önceki akışa dönmek için "Geri" düğmesine dokunur.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Makale bulunamadı/API hatası:** Sistem, "İçerik bulunamadı veya bir hata oluştu." mesajını gösterir.
    *   A.2 **Ağ bağlantısı yok (önbelleğe alınmamış makale):** Sistem ağ hatası gösterir. Daha önce önbelleğe alındıysa, önbellekten yükler.
*   **Ekran Tasarımı Açıklaması:**
    *   **Makale Detay Ekranı:** Geri düğmesi, paylaşım simgesi, favori simgesi içeren üst uygulama çubuğu. Büyük kapak görseli. Makale başlığı. Yazar bilgisi, okuma süresi. Net tipografi, satır aralığı ve gömülü görseller/videolar (varsa) içeren kaydırılabilir HTML içerik gövdesi. "İlgili Yazılar" için alt bölüm.
    *   **Kanıt Açıklamaları:** İçerikte küçük, görsel olarak farklı kutular (örn: "Ne Biliyoruz?", "Kırmızı Bayraklar", "Ne Zaman Doktora Danışmalısın?") `targetAudienceNuancesAndUx` bölümünden.
*   **Etkileşim Kalıpları:** Dikey kaydırma. Eylemler için simgelere dokunma (paylaş/favori). Gezinmek için ilgili gönderilere dokunma.
*   **API Etkileşimleri:** CMS (WordPress REST): GET /posts/{id}?_embed=1.
*   **Gizlilik/Erişilebilirlik Notları:** HTML içeriği sunucu tarafında temizlenir. Ölçeklenebilir metin, yüksek kontrast. Ekran okuyucu makale içeriğini okur. Geçerli olduğunda "Eğitim amaçlıdır, tıbbi tavsiye değildir" uyarısı belirgindir.
*   **Çevrimdışı Destek:** Favori ve yakın zamanda görüntülenen makaleler (önbellek sınırları dahilinde) çevrimdışı okunabilir. İçerik SQLite ve dosya önbelleği aracılığıyla önbelleğe alınır.

2.3 Bir Makaleyi Favorilere Ekleme/Paylaşma
*   **Amaç:** Kullanıcı bir makaleyi daha sonra için kaydeder veya başkalarıyla paylaşır.
*   **Ön Koşullar:** Kullanıcı bir Makale Detay ekranını görüntülüyor. Favorilere eklemek için kullanıcının giriş yapmış olması gerekir.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış (Favorilere Ekleme):**
    1.  **Kullanıcı (Giriş Yapmış):** Uygulama çubuğundaki "Kalp" (Favori) simgesine dokunur.
    2.  **Sistem:** Simgenin durumunu değiştirir (örneğin, dolu kalp). Geçici bir "Favorilere eklendi" mesajı gösterir.
    3.  **Sistem:** Makaleyi kullanıcı için favori olarak işaretlemek üzere arka uca istek gönderir. (Profil & Ayarlar: Favorileri Yönet)
    4.  **Kullanıcı (Çıkış Yapmış):** Favori simgesine dokunur.
    5.  **Sistem:** Favorilere eklemenin bir hesap gerektirdiğini açıklayan bir "Giriş Yap veya Kaydol" istemi/modalı gösterir.
*   **Ana Akış (Paylaşma):**
    1.  **Kullanıcı:** Uygulama çubuğundaki "Paylaş" simgesine dokunur.
    2.  **Sistem:** Makalenin URL'si ve başlığı ile yerel işletim sistemi paylaşım sayfasını (iOS Share Sheet, Android Share Intent) çağırır.
    3.  **Kullanıcı:** Bir paylaşım seçeneği seçer (örneğin, WhatsApp, E-posta).
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Favorilere ekleme sırasında API hatası:** Sistem "Favorilere eklenirken bir hata oluştu." mesajını gösterir. Simge orijinal durumuna döner.
*   **Ekran Tasarımı Açıklaması:**
    *   **Makale Detay Ekranı:** Uygulama çubuğunda "Kalp" ve "Paylaş" simgeleri.
    *   **Toast Mesajı:** Ekranın altında küçük, dikkat çekmeyen bir açılır pencere.
    *   **Giriş İstem Modalı:** Başlık, mesaj, "Giriş Yap" ve "Kaydol" düğmeleri.
*   **Etkileşim Kalıpları:** Simgeye dokunma, bildirim mesajı, yerel paylaşım sayfası.
*   **API Etkileşimleri:** (Favorilere Ekleme) Kullanıcı tercihleri için özel veya Profil API'sinin bir parçası olan arka uç API'si. (Paylaşma) Doğrudan API yok, işletim sistemine bağlı.
*   **Gizlilik/Erişilebilirlik Notları:** Favorilere ekleme kişisel bir eylemdir, halka açık değildir. Paylaşım kullanıcı tarafından başlatılır.
*   **Çevrimdışı Destek:** Çevrimdışı ise favorilere ekleme isteği bir giden kutusuna sıraya alınır. Hedef uygulama ağa ihtiyaç duyuyorsa paylaşım başarısız olabilir.

2.4 Gebelik Rehberine ve Haftalık Güncellemelere Erişim
*   **Amaç:** Hamile kullanıcıya haftalık rehberlik ve ilgili bilgiler sunmak.
*   **Ön Koşullar:** Kullanıcı onboarding veya profilinde hamilelik durumunu belirtmiş ve gebelik bildirimlerine abone olmuş olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Sistem:** Kullanıcı Son Adet Tarihi/Beklenen Doğum Tarihi bilgilerini verdiyse, Ana Sayfa Akışında mevcut haftayı gösteren (örn: "8. Hafta") bir "Hamilelik Haftan" kartı gösterir.
    2.  **Kullanıcı:** "Hamilelik Haftan" kartına dokunur veya özel "Gebelik Rehberi" bölümüne gider (Keşfet içinde veya ayrı bir sekmede olabilir).
    3.  **Sistem:** Gebelik Rehberini, mevcut haftanın içeriğini göstererek (örn: "Hafta 8: Bebeğin Gelişimi ve Anne Adayındaki Değişimler") görüntüler.
    4.  **Kullanıcı:** İçeriği kaydırır, bu içerik bebeğin gelişimini, annenin değişikliklerini, ipuçlarını ve yaygın testleri (Türkiye'ye özgü) içerebilir.
    5.  **Kullanıcı:** Önceki veya sonraki haftaları görüntülemek için yatay olarak kaydırır veya navigasyonu kullanır.
    6.  **Sistem (İsteğe Bağlı Bildirim):** Önceden belirlenmiş bir günde haftalık bir anlık bildirim (eğer abone olunmuşsa) gönderir: "Hafta X: Bebeğinizin yeni gelişmeleri..."
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Gebelik bilgisi yok:** Sistem, rehberi etkinleştirmek için kullanıcının Son Adet Tarihi/Beklenen Doğum Tarihi bilgilerini girmesini ister.
    *   A.2 **İçerik yüklenmedi:** Hata gösterir, önbellekten yüklemeye çalışır.
    *   A.3 **Kullanıcı bildirimlerden vazgeçer:** Bu rehber için anlık bildirim gönderilmez.
*   **Ekran Tasarımı Açıklaması:**
    *   **Ana Sayfa Kartı:** Mevcut haftayı, ilerleme çubuğunu ve belki küçük bir görseli içeren "Hamilelik Haftan" kartı.
    *   **Gebelik Rehberi Ekranı:** Geri düğmesi içeren üst uygulama çubuğu. Haftalık numarası belirgin bir şekilde gösterilir. Makale Detayına benzer ancak haftalık ilerleme için yapılandırılmış ana içerik alanı. "Önceki Hafta" ve "Sonraki Hafta" için navigasyon.
    *   **Bildirimler:** Uygulama simgesi, başlık ve kısa mesaj içeren standart işletim sistemi anlık bildirimi.
*   **Etkileşim Kalıpları:** Karta dokunma, içerik için dikey kaydırma, hafta navigasyonu için yatay kaydırma. Ayarlar aracılığıyla abone olma/vazgeçme.
*   **API Etkileşimleri:** CMS (WordPress REST): GET /posts?categories=<geb_reh_kategori_id>&tag=<hafta_X_etiket>.
*   **Gizlilik/Erişilebilirlik Notları:** Gebelik verileri (Son Adet Tarihi/Beklenen Doğum Tarihi) hassastır ve yerel olarak depolanır, yalnızca kişiselleştirme için kullanılır. Bildirimler, Ramazan'a duyarlı pencerelere dikkat edilerek isteğe bağlıdır.
*   **Çevrimdışı Destek:** Gebelik Rehberi içeriği önceden alınır ve önbelleğe alınır, tamamen çevrimdışı kullanılabilir. Haftalık bildirim içeriği gönderilir, ancak rehberin kendisi çevrimdışı okunabilir.

3. Topluluk (Forum)

3.1 Forum Kategorilerine ve Konulara Göz Atma
*   **Amaç:** Kullanıcı, ilgi alanlarıyla ilgili tartışmaları bulur ve keşfeder.
*   **Ön Koşullar:** Kullanıcı uygulamada olmalı, giriş yapmış veya misafir olabilir.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** Alt navigasyondaki "Topluluk" sekmesine dokunur.
    2.  **Sistem:** Ana kategorilerin (örneğin, "Genel Sağlık", "Gebelik Süreci", "Astroloji Sohbetleri") bir listesini gösteren Forum Ana ekranını görüntüler.
    3.  **Kullanıcı:** Belirli bir Kategoriye (örneğin, "Gebelik Süreci") dokunur.
    4.  **Sistem:** O kategori için aktif konuların bir listesini gösteren Konu Listesi ekranına yönlendirir.
    5.  **Kullanıcı:** Konulara göz atmak için kaydırır.
    6.  **Sistem:** Kullanıcı kaydırdıkça daha fazla konu dinamik olarak yükler (sayfalandırma).
    7.  **Kullanıcı:** Bir konuya dokunur.
    8.  **Sistem:** Konu Detay ekranına yönlendirir (bkz. 3.2).
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Ağ bağlantısı yok:** Sistem, önbelleğe alınmış kategorileri/konuları bir "Son Güncelleme" zaman damgasıyla gösterir. Yeni konular yüklenemez.
    *   A.2 **Konu yükleme hatası:** Genel hata mesajı ve yeniden deneme seçeneği.
    *   A.3 **Hassas Kategori:** Bir kategori hassas olarak işaretlenmişse (örneğin, "Kayıp Desteği"), sistem bir uyarı gösterebilir ve içeriği göstermeden önce onay isteyebilir.
*   **Ekran Tasarımı Açıklaması:**
    *   **Forum Ana Ekranı:** "Topluluk" başlığı içeren üst uygulama çubuğu. Her biri adı, kısa açıklaması ve muhtemelen konu/gönderi sayılarını içeren Kategori kartlarının/liste öğelerinin listesi.
    *   **Konu Listesi Ekranı:** Geri düğmesi ve kategori adı içeren üst uygulama çubuğu. Başlığı, yazarını (takma ad), yanıt sayısını, son etkinlik zamanını ve muhtemelen bir "sabitlenmiş" simgesini içeren Konu kartlarının listesi. Filtreleme/sıralama seçenekleri (örneğin, "En Aktif", "En Yeni").
*   **Etkileşim Kalıpları:** Kategoriye dokunma, konuya dokunma. Dikey kaydırma. İskelet yükleme.
*   **API Etkileşimleri:** Forum API (İnce Arka Uç Adaptörü): GET /forums, GET /forums/{id}/topics.
*   **Gizlilik/Erişilebilirlik Notları:** Yazarlar için takma adlar. Hassas kategoriler açık onay gerektirebilir. Konu başlıkları için ölçeklenebilir metin.
*   **Çevrimdışı Destek:** Önbelleğe alınmış kategori adları ve ilk konu listeleri çevrimdışı kullanılabilir. Önbelleğe alınmamış bir konuya dokunma veya daha fazla konu yükleme ağ bağlantısı gerektirir.

3.2 Bir Konuyu ve Yanıtları Görüntüleme
*   **Amaç:** Kullanıcı bir tartışma başlığını ve yanıtlarını okur.
*   **Ön Koşullar:** Kullanıcı Konu Listesinden bir konuya dokunmuş olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Sistem:** Konu Detay ekranını gösterir. Orijinal konu gönderisini, yazarını (takma ad), oluşturulma tarihini ve altında sayfalandırılmış yanıt listesini gösterir.
    2.  **Kullanıcı:** Yanıtlar arasında gezinmek için kaydırır.
    3.  **Sistem:** Daha fazla yanıtı dinamik olarak yükler (sayfalandırma).
    4.  **Kullanıcı:** Yeni bir yanıt oluşturmak için "Yanıtla" düğmesine dokunur (bkz. 3.4).
    5.  **Kullanıcı:** Konu Listesine dönmek için "Geri" düğmesine dokunur.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Konu kilitli/gizli:** Sistem, yeni yanıtlara izin vermeyerek "Bu konu kilitlenmiştir" veya "Bu içerik kaldırılmıştır" mesajını gösterir.
    *   A.2 **Ağ bağlantısı yok:** Sistem, önbelleğe alınmış konuyu ve yanıtları gösterir. Yeni yanıtlar yüklenemez ve kullanıcı gönderi yayınlayamaz.
    *   A.3 **Hassas İçerik Bulanıklığı:** Bir konu veya yanıt işaretlenmiş hassas anahtar kelimeler içeriyorsa, bir "İçeriği Göster" düğmesiyle bulanıklaştırılabilir (targetAudienceNuancesAndUx bölümünden).
*   **Ekran Tasarımı Açıklaması:**
    *   **Konu Detay Ekranı:** Geri düğmesi, konu başlığı içeren üst uygulama çubuğu. Üstte ilk gönderi (yazar, içerik, oluşturulma tarihi, beğeni sayısı). Ayırıcı. Her biri yazar, içerik, oluşturulma tarihi, beğeni sayısı gösteren yanıt listesi. "Yanıtla" için alt yüzen eylem düğmesi veya giriş alanı.
    *   **Gönderi İçeriği:** Temizlenmiş HTML, net tipografi, avatar (isteğe bağlı), takma ad.
*   **Etkileşim Kalıpları:** Dikey kaydırma, "Yanıtla" düğmesine dokunma.
*   **API Etkileşimleri:** Forum API (İnce Arka Uç Adaptörü): GET /topics/{id}, GET /topics/{id}/posts.
*   **Gizlilik/Erişilebilirlik Notları:** Takma adlar. İçerik temizleme. Hassas içerik bulanıklığı (kullanıcı kontrollü onay). Ölçeklenebilir metin.
*   **Çevrimdışı Destek:** Önbelleğe alınmış konular ve yanıtlar çevrimdışı okunabilir. Yanıt oluşturma çevrimdışı yapılabilir (taslak olarak kaydedilir).

3.3 Yeni Bir Konu Oluşturma
*   **Amaç:** Kullanıcı seçilen bir forum kategorisinde yeni bir tartışma başlatır.
*   **Ön Koşullar:** Kullanıcı giriş yapmış ve belirli bir kategori için Konu Listesi ekranını görüntülüyor olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** Bir "Yeni Konu Oluştur" düğmesine/simgesine (örneğin, Konu Listesi ekranında FAB) dokunur.
    2.  **Sistem:** "Yeni Konu Oluşturucu" ekranını gösterir.
    3.  **Kullanıcı:** Konu için bir Başlık girer (örneğin, "Gebelik sürecinde beslenme önerileri").
    4.  **Kullanıcı:** Konu için ana metin içeriğini girer (örneğin, "Merhaba anneler, 12 haftalık hamileyim...").
    5.  **Kullanıcı (İsteğe Bağlı):** Bir "Gizli Gönderi" anahtarını açar (targetAudienceNuancesAndUx bölümünden).
    6.  **Sistem:** Moderasyon kuralları hatırlatıcısını oluşturucuda belirgin bir şekilde gösterir (moderationWorkflowsAndTools bölümünden).
    7.  **Kullanıcı:** "Gönder" düğmesine dokunur.
    8.  **Sistem:** İçeriği doğrular (küfür filtresi, hız limitleri). Geçerliyse, verileri arka uca gönderir (Forum API: POST /topics).
    9.  **Sistem:** "Konu başarıyla oluşturuldu." mesajını gösterir ve yeni konunun en üstte olduğu Konu Listesine geri yönlendirir.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Başlık/içerik eksik/geçersiz:** Sistem satır içi doğrulama hataları gösterir ("Başlık boş olamaz," "İçerik çok kısa.").
    *   A.2 **Küfür/spam algılandı:** Sistem gönderiyi engeller, "İçeriğiniz topluluk kurallarını ihlal ediyor." mesajını gösterir ve düzenleme veya itiraz etme seçenekleri sunar.
    *   A.3 **Hız limiti aşıldı:** Sistem "Çok hızlı gönderiyorsunuz, lütfen biraz bekleyin." mesajını bir geri sayım ile gösterir.
    *   A.4 **Ağ hatası:** Sistem içeriği yerel olarak taslak olarak kaydeder ve yeniden deneme sunar ("Taslak kaydedildi, ağ bağlantısı kurulduğunda otomatik gönderilecek.").
    *   A.5 **Misafir kullanıcı:** Giriş yapma/kaydolma istemi.
*   **Ekran Tasarımı Açıklaması:**
    *   **Yeni Konu Oluşturucu:** Geri/iptal düğmesi ve "Gönder" düğmesi içeren üst uygulama çubuğu. "Başlık" için metin girişi. "Mesajınız" için çok satırlı metin alanı. "Anonim Gönder" için değiştirme düğmesi. Topluluk kuralları afişi/bağlantısı.
    *   **Taslak Kaydetme:** "Taslak kaydedildi." göstergesi.
*   **Etkileşim Kalıpları:** Metin girişi, değiştirme düğmesi, yazılım klavyesi. Otomatik kaydetme. Başarı/başarısızlık için bildirim mesajları.
*   **API Etkileşimleri:** Forum API (İnce Arka Uç Adaptörü): POST /topics.
*   **Gizlilik/Erişilebilirlik Notları:** Gizli gönderi seçeneği. Gizli değilse takma ad kullanılır. İçerik güvenlik/küfür için filtrelenir. Erişilebilir giriş alanları. Çevrimdışı taslaklar şifrelenir.
*   **Çevrimdışı Destek:** Taslaklar otomatik olarak yerel olarak şifrelenir. Gönderi eylemi sıraya alınır ve çevrimiçi olduğunda gönderilir.

3.4 Yanıt Gönderme
*   **Amaç:** Kullanıcı mevcut bir tartışmaya yanıt göndererek katılır.
*   **Ön Koşullar:** Kullanıcı giriş yapmış ve bir Konu Detay ekranını görüntülüyor olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** Konu Detay ekranındaki "Yanıtla" düğmesine/giriş alanına dokunur.
    2.  **Sistem:** İsteğe bağlı olarak orijinal gönderiyi veya önceki yanıtı alıntılayarak "Yanıt Oluşturucu" ekranını gösterir.
    3.  **Kullanıcı:** Yanıt içeriğini girer.
    4.  **Kullanıcı (İsteğe Bağlı):** Bir "Gizli Gönderi" anahtarını açar.
    5.  **Sistem:** Topluluk kuralları hatırlatıcısını gösterir.
    6.  **Kullanıcı:** "Gönder" düğmesine dokunur.
    7.  **Sistem:** İçeriği doğrular (küfür filtresi, hız limitleri). Verileri arka uca gönderir (Forum API: POST /posts).
    8.  **Sistem:** "Yanıtınız gönderildi." mesajını gösterir ve Konu Detay ekranını yeni yanıtla günceller (hemen görünürse).
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Yeni Konu Oluşturma alternatif akışları ile aynı (içerik eksikliği, küfür, hız limiti, ağ hatası, misafir kullanıcı).**
*   **Ekran Tasarımı Açıklaması:**
    *   **Yanıt Oluşturucu:** Yeni Konu Oluşturucuya benzer ancak muhtemelen bir "Yanıtladığın Konu" bağlamı veya alıntı ile.
    *   **Konu Detay Ekranı:** Yeni yanıt listenin altında görünür.
*   **Etkileşim Kalıpları:** Metin girişi, değiştirme düğmesi, yazılım klavyesi. Otomatik kaydetme. Bildirim mesajları.
*   **API Etkileşimleri:** Forum API (İnce Arka Uç Adaptörü): POST /posts.
*   **Gizlilik/Erişilebilirlik Notları:** Gizli seçeneği, takma ad. İçerik filtreleme. Çevrimdışı taslaklar şifrelenir.
*   **Çevrimdışı Destek:** Taslaklar otomatik olarak yerel olarak kaydedilir. Gönderi eylemi sıraya alınır ve çevrimiçi olduğunda gönderilir.

3.5 Bir Gönderi/Konuyu Beğenme
*   **Amaç:** Kullanıcı bir forum gönderisi veya konusuna takdirini ifade eder.
*   **Ön Koşullar:** Kullanıcı giriş yapmış ve bir Konu Detay ekranını görüntülüyor olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** Bir gönderi veya ana konuyla ilişkili "Beğen" simgesine (örneğin, kalp veya başparmak yukarı) dokunur.
    2.  **Sistem:** Beğeni sayısını görsel olarak günceller ve simgenin durumunu değiştirir (örneğin, dolu kalp).
    3.  **Sistem:** Arka uca özdeş bir istek gönderir (Forum API: POST /topics/{id}/like veya POST /posts/{id}/like).
    4.  **Sistem:** Başarılı olursa, beğeniyi onaylar. Kullanıcı tekrar dokunursa, içeriğin beğenisini geri alır.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **API hatası:** Sistem geçici bir hata gösterir, simge durumunu orijinaline döndürür.
    *   A.2 **Misafir kullanıcı:** Giriş yapma/kaydolma istemi.
    *   A.3 **Çevrimdışı:** Eylem bir giden kutusuna sıraya alınır ve çevrimiçi olduğunda gönderilir.
*   **Ekran Tasarımı Açıklaması:**
    *   **Konu/Gönderi Kartı:** "Beğen" simgesi ve bitişiğinde sayısal bir sayaç.
*   **Etkileşim Kalıpları:** Simgelere dokunma, anında görsel geri bildirim, API çağrısı.
*   **API Etkileşimleri:** Forum API (İnce Arka Uç Adaptörü): POST /topics/{id}/like, POST /posts/{id}/like.
*   **Gizlilik/Erişilebilirlik Notları:** Beğeniler herkese açık sayılar olup, halka açık gösterim için belirli kullanıcı kimliklerine bağlanmaz.
*   **Çevrimdışı Destek:** Eylem daha sonraki senkronizasyon için sıraya alınır.

3.6 İçeriği Şikayet Etme
*   **Amaç:** Kullanıcı uygunsuz veya kural dışı içeriği moderatör incelemesi için işaretler.
*   **Ön Koşullar:** Kullanıcı giriş yapmış ve bir konu veya gönderiyi görüntülüyor olmalı.
*   **Aktörler:** Kullanıcı, Sistem, Moderatör.
*   **Ana Akış:**
    1.  **Kullanıcı:** Bir gönderi/konu üzerindeki üç nokta menüsünden "Şikayet Et" seçeneğine dokunur.
    2.  **Sistem:** Bir "İçeriği Şikayet Et" modalı/sayfası gösterir.
    3.  **Kullanıcı:** Önceden tanımlanmış bir listeden bir neden seçer (örneğin, "Spam", "Taciz", "Tıbbi Yanlış Bilgi", "Konu Dışı", "Diğer").
    4.  **Kullanıcı (İsteğe Bağlı):** Kısa bir açıklayıcı not ekler.
    5.  **Kullanıcı:** "Gönder" düğmesine dokunur.
    6.  **Sistem:** Şikayet detaylarını arka uca gönderir (Forum API: POST /reports).
    7.  **Sistem:** "Şikayetiniz gönderildi, moderatörlerimiz inceleyecek." mesajını gösterir.
    8.  **Sistem (Moderatör):** Şikayet moderasyon kuyruğunda görünür (moderationWorkflowsAndTools bölümüne bakınız). Moderatörler inceler ve eyleme geçer.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Ağ hatası:** Sistem şikayeti taslak olarak kaydeder, yeniden deneme sunar.
    *   A.2 **Misafir kullanıcı:** Giriş yapma/kaydolma istemi.
*   **Ekran Tasarımı Açıklaması:**
    *   **Gönderi/Konu Menüsü:** "Şikayet Et" seçeneği.
    *   **İçeriği Şikayet Et Modalı/Sayfası:** Başlık, nedenler için radyo düğmeleri listesi, notlar için isteğe bağlı metin alanı, "İptal" ve "Gönder" düğmeleri.
*   **Etkileşim Kalıpları:** Menü öğesine dokunma, seçim için modal/alt sayfa, düğmeye dokunma. Bildirim geri bildirimi.
*   **API Etkileşimleri:** Forum API (İnce Arka Uç Adaptörü): POST /reports.
*   **Gizlilik/Erişilebilirlik Notları:** Şikayetler gizlidir, şikayet edenin kimliği şikayet edilen kullanıcıya açıklanmaz. Denetim için moderasyon günlükleri.
*   **Çevrimdışı Destek:** Şikayet eylemi daha sonraki senkronizasyon için sıraya alınır.

4. Hesaplayıcılar

4.1 Adet Döngüsü Takvimi Kullanımı
*   **Amaç:** Kullanıcı bir sonraki adet dönemini ve doğurgan pencere tarihlerini tahmin eder.
*   **Ön Koşullar:** Kullanıcı uygulamada olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** Alt navigasyon veya Ana Sayfa kartı aracılığıyla "Hesaplayıcılar" bölümüne gider.
    2.  **Kullanıcı:** "Adet Döngüsü Takvimi"ni seçer.
    3.  **Sistem:** Hesaplayıcı giriş ekranını gösterir.
    4.  **Kullanıcı:** Bir tarih seçici kullanarak "Son Adet Tarihi" (Son Adet Döneminin ilk günü) girer.
    5.  **Kullanıcı:** "Ortalama Döngü Uzunluğu"nu (gün cinsinden, 21-45 gün), isteğe bağlı olarak "Adet Süresi"ni (gün cinsinden, 2-8 gün) ve "Döngü Değişkenliği"ni (gün cinsinden, 0-9 gün) girer.
    6.  **Kullanıcı:** "Hesapla" düğmesine dokunur.
    7.  **Sistem:** Hesaplamaları yapar (calculatorLogicAndMedicalGuidance bölümüne bakınız).
    8.  **Sistem:** Sonuçları gösterir: "Beklenen Bir Sonraki Adet Tarihi" (bir aralıkla), "Yumurtlama Tarihi", "Doğurgan Pencere". Tıbbi bir sorumluluk reddi içerir.
    9.  **Kullanıcı (İsteğe Bağlı):** "Sonucu Kaydet" düğmesine dokunur.
    10. **Sistem:** İlk kaydetme ise, bir "Yerel Hesaplayıcı Kayıtları Onayı" modalı gösterir (privacyConsentAndUserControls bölümüne bakınız).
    11. **Kullanıcı:** Yerel kaydetmeye onay verir.
    12. **Sistem:** Sonuçları yerel olarak kaydeder.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Geçersiz giriş:** Sistem satır içi doğrulama hataları gösterir (örneğin, "Geçersiz döngü uzunluğu").
    *   A.2 **Kullanıcı yerel kaydı reddeder:** Sonuçlar yalnızca oturum içinde gösterilir ancak depolanmaz.
    *   A.3 **Uç Durumlar:** `calculatorLogicAndMedicalGuidance` bölümüne göre oldukça düzensiz döngüler için belirli uyarılar/öneriler gösterir (ortalama döngü uzunluğu 24 günden az veya 35 günden fazla).
*   **Ekran Tasarımı Açıklaması:**
    *   **Hesaplayıcı Listesi:** Hesaplayıcı kartlarının listesi.
    *   **Adet Döngüsü Takvimi Girişi:** Son Adet Tarihi için tarih seçici. Döngü uzunluğu, adet süresi, değişkenlik için sayısal giriş alanları. "Hesapla" düğmesi.
    *   **Sonuç Ekranı:** Tarihlerin ve aralıkların net gösterimi. Açıklayıcı metin. "Sonucu Kaydet" düğmesi. Belirgin tıbbi sorumluluk reddi afişi.
    *   **Onay Modalı:** Başlık, yerel depolama açıklaması, "İptal" ve "Kabul Et ve Kaydet" düğmeleri.
*   **Etkileşim Kalıpları:** Tarih seçici, girişler için sayısal tuş takımı. Düğmeye dokunma. Onay için modal.
*   **API Etkileşimleri:** Yok (yerel hesaplama).
*   **Gizlilik/Erişilebilirlik Notları:** Tüm hesaplamalar yerel olarak yapılır. Sonuçlar sunucuya gönderilmez. Yerel kaydetme açık onay gerektirir ve veriler şifrelenir. Tıbbi sorumluluk reddi belirgindir. Erişilebilir girişler ve sonuç gösterimi.
*   **Çevrimdışı Destek:** Tamamen çevrimdışı işlevseldir.

4.2 Gebelik Haftası ve Tahmini Doğum Tarihi Hesaplayıcısı Kullanımı
*   **Amaç:** Kullanıcı mevcut gebelik haftasını ve tahmini doğum tarihini (TDT) hesaplar.
*   **Ön Koşullar:** Kullanıcı uygulamada olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** "Hesaplayıcılar" bölümüne gider.
    2.  **Kullanıcı:** "Hamilelik Haftası ve Tahmini Doğum Tarihi" hesaplayıcısını seçer.
    3.  **Sistem:** "Son Adet Tarihi (SAT)" veya "USG Sonucu" seçenekleriyle giriş ekranını gösterir.
    4.  **Kullanıcı:** Giriş yöntemini seçer.
    5.  **Kullanıcı (SAT):** "Son Adet Tarihi"ni girer.
    6.  **Kullanıcı (USG):** "USG Tarihi"ni ve "USG Haftası"nı (USG'den Gebelik Yaşı, örneğin, 8 hafta 3 gün) girer.
    7.  **Kullanıcı (İsteğe Bağlı):** Varsa "Tüp Bebek Yöntemi"ni belirtir.
    8.  **Kullanıcı:** "Hesapla" düğmesine dokunur.
    9.  **Sistem:** Hesaplamaları yapar (Naegele kuralı, ACOG yeniden tarihleme kuralları, Tüp Bebek ayarlaması) (calculatorLogicAndMedicalGuidance bölümüne bakınız).
    10. **Sistem:** Sonuçları gösterir: "Mevcut Hamilelik Haftası" (Mevcut Gebelik Yaşı), kullanılan yöntemle (SAT veya USG ile yeniden tarihlendirilmiş) "Tahmini Doğum Tarihi (TDT)". Tıbbi bir sorumluluk reddi içerir.
    11. **Kullanıcı (İsteğe Bağlı):** "Sonucu Kaydet" düğmesine dokunur. İlk kaydetme ise, onay modalını gösterir.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Geçersiz giriş:** Satır içi doğrulama.
    *   A.2 **Optimal olmayan tarihlendirme:** `calculatorLogicAndMedicalGuidance` bölümündeki koşullar karşılanırsa, klinisyen danışmanlığı öneren bir afiş gösterir.
    *   A.3 **Kullanıcı yerel kaydı reddeder:** Sonuçlar yalnızca oturum içinde gösterilir.
*   **Ekran Tasarımı Açıklaması:**
    *   **Gebelik Hesaplayıcı Girişi:** SAT ve USG girişi için geçiş düğmesi. Tarih seçiciler. Haftalar/günler için sayısal seçiciler. Tüp bebek yöntemi için açılır menü. "Hesapla" düğmesi.
    *   **Sonuç Ekranı:** Mevcut hafta ve günler belirgindir. TDT net bir şekilde gösterilir, kaynağı belirtilir (SAT, USG). Tıbbi sorumluluk reddi. "Sonucu Kaydet" düğmesi.
*   **Etkileşim Kalıpları:** Geçiş düğmesi, tarih seçici, sayısal kaydırıcı/giriş. Düğmeye dokunma. Modal.
*   **API Etkileşimleri:** Yok (yerel hesaplama).
*   **Gizlilik/Erişilebilirlik Notları:** Hassas sağlık verileri, yerel olarak depolanır, şifrelenir, kaydetme için açık onay. Tıbbi sorumluluk reddi.
*   **Çevrimdışı Destek:** Tamamen çevrimdışı işlevseldir.

4.3 Vücut Kitle İndeksi (VKİ) Hesaplayıcısı Kullanımı
*   **Amaç:** Kullanıcı Vücut Kitle İndeksini ve kategorisini hesaplar.
*   **Ön Koşullar:** Kullanıcı uygulamada olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** "Hesaplayıcılar" bölümüne gider.
    2.  **Kullanıcı:** "Vücut Kitle İndeksi (VKİ)" hesaplayıcısını seçer.
    3.  **Sistem:** Giriş ekranını gösterir.
    4.  **Kullanıcı:** "Boy (cm)" ve "Kilo (kg)" girer.
    5.  **Kullanıcı:** "Hesapla" düğmesine dokunur.
    6.  **Sistem:** Hesaplamayı yapar (VKİ = ağırlık / boy^2) ve kategoriyi belirler (calculatorLogicAndMedicalGuidance bölümüne bakınız).
    7.  **Sistem:** Sonuçları gösterir: VKİ değeri, kategori (örneğin, "Sağlıklı Kilo") ve aralıklarla dostane bir açıklama. Tıbbi bir sorumluluk reddi içerir.
    8.  **Kullanıcı (İsteğe Bağlı):** "Sonucu Kaydet" düğmesine dokunur. İlk kaydetme ise, onay modalını gösterir.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Geçersiz giriş:** Gerçekçi olmayan boy/kilo için satır içi doğrulama.
    *   A.2 **Kullanıcı yerel kaydı reddeder:** Sonuçlar yalnızca oturum içinde gösterilir.
*   **Ekran Tasarımı Açıklaması:**
    *   **VKİ Hesaplayıcı Girişi:** Boy (cm) ve kilo (kg) için sayısal giriş alanları. "Hesapla" düğmesi.
    *   **Sonuç Ekranı:** Büyük yazı tipiyle VKİ değeri (örneğin, 25.0), kategori (örneğin, "Fazla Kilolu"). Açıklayıcı metin ve kategori aralıkları. Tıbbi sorumluluk reddi. "Sonucu Kaydet" düğmesi.
*   **Etkileşim Kalıpları:** Sayısal tuş takımı girişi. Düğmeye dokunma. Modal.
*   **API Etkileşimleri:** Yok (yerel hesaplama).
*   **Gizlilik/Erişilebilirlik Notları:** Hassas sağlık verileri, yerel olarak depolanır, şifrelenir, kaydetme için açık onay. Tıbbi sorumluluk reddi.
*   **Çevrimdışı Destek:** Tamamen çevrimdışı işlevseldir.

4.4 Yerel Hesaplayıcı Sonuçlarını Kaydetme ve Erişme
*   **Amaç:** Kullanıcı geçmiş hesaplayıcı sonuçlarını saklayabilir ve inceleyebilir.
*   **Ön Koşullar:** Kullanıcı bir hesaplayıcı kullanmış ve sonuçları yerel olarak kaydetmeyi seçmiş olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** "Hesaplayıcılar" bölümüne gider.
    2.  **Kullanıcı:** Belirli bir hesaplayıcıya dokunur.
    3.  **Sistem:** Hesaplayıcının giriş ekranında, kaydedilmiş sonuçlar varsa, bir "Kaydedilen Sonuçlarım" bağlantısı/düğmesi gösterir.
    4.  **Kullanıcı:** "Kaydedilen Sonuçlarım" düğmesine dokunur.
    5.  **Sistem:** O hesaplayıcı için daha önce kaydedilmiş sonuçların bir listesini gösterir (örneğin, döngü tahminleri için tarihler, VKİ için girişler).
    6.  **Kullanıcı:** Belirli bir kaydedilmiş sonuca dokunur.
    7.  **Sistem:** O kaydedilmiş sonucun tam ayrıntılarını gösterir.
    8.  **Kullanıcı (İsteğe Bağlı):** Kaydedilmiş bir sonuçta "Sil" düğmesine dokunur.
    9.  **Sistem:** Onay ister, ardından yerel kaydı siler.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Kaydedilmiş sonuç yok:** Sistem liste yerine "Kaydedilen sonuç bulunamadı." mesajını gösterir.
*   **Ekran Tasarımı Açıklaması:**
    *   **Hesaplayıcı Giriş Ekranı:** Küçük bir "Kaydedilen Sonuçlarım" bağlantısı/düğmesi.
    *   **Kaydedilen Sonuçlar Listesi:** Her kaydedilmiş sonucun kısa bir özetini içeren liste öğeleri (örneğin, "1 Eylül 2025: Beklenen Adet 29 Eylül", "VKİ: 25.0 - Fazla Kilolu"). Silmek veya düzenlemek için kaydırma seçenekleri.
    *   **Kaydedilen Sonuç Detayı:** Bireysel hesaplayıcı sonuç ekranı ile aynıdır.
*   **Etkileşim Kalıpları:** Bağlantıya dokunma, liste navigasyonu, detaya dokunma, silmek için kaydırma.
*   **API Etkileşimleri:** Yok (yerel veri).
*   **Gizlilik/Erişilebilirlik Notları:** Tüm kaydedilmiş sonuçlar cihazda şifrelenir. Kullanıcı, bunları görüntüleme ve silme konusunda tam kontrole sahiptir.
*   **Çevrimdışı Destek:** Tamamen çevrimdışı işlevseldir.

5. Arama

5.1 Küresel Arama
*   **Amaç:** Kullanıcı ilgili makaleleri veya forum konularını bulur.
*   **Ön Koşullar:** Kullanıcı uygulamada olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** "Ara" simgesine dokunur (örneğin, Ana Sayfa Akışındaki üst uygulama çubuğunda veya özel bir Arama sekmesinde).
    2.  **Sistem:** Belirgin bir arama çubuğu, son aramalar ve popüler etiketler/konular içeren Arama ekranını gösterir.
    3.  **Kullanıcı:** Bir arama sorgusu girer (örneğin, "hamilelik egzersizleri").
    4.  **Sistem:** Kullanıcı yazarken gerçek zamanlı arama önerileri gösterir (uygulanmışsa).
    5.  **Kullanıcı:** "Ara" düğmesine dokunur veya bir öneri seçer.
    6.  **Sistem:** Arama sorgusunu arka uca gönderir (CMS: GET /search?search=<q>, Forum API: GET /search?q=...).
    7.  **Sistem:** "Makaleler" ve "Forum Konuları" olarak kategorize edilmiş arama sonuçlarını sayfalandırma ile gösterir.
    8.  **Kullanıcı:** Makale Detayını görüntülemek için bir makale sonucuna veya Konu Detayını görüntülemek için bir forum konu sonucuna dokunur.
    9.  **Sistem:** Arama sorgusunu "Son Aramalar"a kaydeder.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Sonuç yok:** Sistem "Sonuç bulunamadı." mesajını gösterir.
    *   A.2 **Ağ hatası:** Sistem bir hata gösterir. Son aramalar ve popüler etiketler (önbelleğe alınmışsa) hala kullanılabilir.
    *   A.3 **Çevrimdışı:** Arama yalnızca yerel olarak önbelleğe alınmış içerik ve son aramalar üzerinde çalışır. Sunucu tarafı arama ağ bağlantısı gerektirir.
*   **Ekran Tasarımı Açıklaması:**
    *   **Arama Ekranı:** Üstte belirgin arama çubuğu. Altında, "Son Aramalar" listesi ve "Popüler Etiketler" listesi (yatay kaydırılabilir veya ızgara).
    *   **Arama Sonuçları Ekranı:** Arama çubuğu üstte kalır. "Makaleler" ve "Forum Konuları" için sekmeli navigasyon. Her sekme içinde makale kartlarına veya konu kartlarına benzer sonuç listeleri.
*   **Etkileşim Kalıpları:** Metin girişi, arama düğmesi, önerilere/sonuçlara dokunma. Arama çubuğunda temizle düğmesi.
*   **API Etkileşimleri:** CMS (WordPress REST): GET /search (içerik genelinde küresel arama için). Forum API (İnce Arka Uç Adaptörü): GET /search?q=... (forum konuları/gönderileri için).
*   **Gizlilik/Erişilebilirlik Notları:** Arama sorguları analitik için günlüğe kaydedilebilir (anonimleştirilmiş), ancak PII'ye bağlanmaz. Son aramalar yerel olarak depolanır.
*   **Çevrimdışı Destek:** Son aramalar ve popüler etiketler (önceden önbelleğe alınmışsa) kullanılabilir. Arka uca karşı gerçek arama ağ bağlantısı gerektirir.

6. Profil & Ayarlar

6.1 Bildirimleri Yönetme
*   **Amaç:** Kullanıcı uygulama bildirim tercihlerini özelleştirir.
*   **Ön Koşullar:** Kullanıcı giriş yapmış olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** Profil -> Ayarlar -> Bildirimler yolunu izler.
    2.  **Sistem:** Geçiş düğmeleriyle bildirim kategorilerinin bir listesini gösterir.
    3.  **Kullanıcı:** İstediği bildirimler için geçiş düğmelerini açar/kapar (örneğin, "Haftalık Gebelik Güncellemeleri", "Günlük Astroloji Burçları", "Yeni Forum Yanıtları/Bahsetmeler").
    4.  **Kullanıcı (İsteğe Bağlı):** Günlük pencereyi özelleştirmek için "Bildirim Saatleri"ne dokunur (varsayılan 09:00-21:00).
    5.  **Kullanıcı (İsteğe Bağlı):** Ramazan'a uygun bildirim zamanlarını ayarlamak için "Ramazan Modu"nu etkinleştirir.
    6.  **Sistem:** Değişiklikleri kullanıcı tercihlerine kaydeder (yerel ve arka uç).
    7.  **Sistem:** FCM/APNs belirteç aboneliklerini buna göre günceller.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **İşletim sistemi düzeyinde izin verilmedi:** Sistem, bildirimleri işletim sistemi ayarlarından etkinleştirmek için bir mesaj gösterir.
    *   A.2 **API hatası:** Sistem bir hata gösterir, güncelleme başarısız olursa kullanıcı arayüzü geçiş düğmesini orijinal durumuna döndürür.
*   **Ekran Tasarımı Açıklaması:**
    *   **Bildirim Ayarları:** Geçiş düğmelerinin listesi, net etiketler. Mevcut aralık ile "Bildirim Saatleri" girişi. "Ramazan Modu" geçiş düğmesi.
    *   **Saat Seçici:** Başlangıç/bitiş saatleri için standart işletim sistemi saat seçici.
*   **Etkileşim Kalıpları:** Geçiş düğmeleri, saat seçiciyi açmak için dokunma.
*   **API Etkileşimleri:** Kullanıcı bildirim tercihleri için arka uç API'si. Belirteç yönetimi için FCM/APNs.
*   **Gizlilik/Erişilebilirlik Notları:** Bildirimler yalnızca isteğe bağlıdır. Ayrıntılı kontroller. Ramazan'a duyarlı zamanlama.
*   **Çevrimdışı Destek:** Tercihler yerel olarak depolanır ve çevrimiçi olduğunda senkronize edilir.

6.2 Favorileri Yönetme
*   **Amaç:** Kullanıcı kayıtlı makalelerini inceler ve yönetir.
*   **Ön Koşullar:** Kullanıcı giriş yapmış ve favori makaleleri olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** Profil -> Favorilerim yolunu izler.
    2.  **Sistem:** Kullanıcının favorilere eklediği makalelerin bir listesini, bir içerik akışına benzer şekilde gösterir.
    3.  **Kullanıcı:** Favori makaleler arasında gezinmek için kaydırır.
    4.  **Kullanıcı:** Makalenin ayrıntılarını görüntülemek için bir makaleye dokunur.
    5.  **Kullanıcı (İsteğe Bağlı):** Bir makaleyi favorilerden çıkarmak için "Düzenle" düğmesine dokunur veya kaydırarak silme hareketini kullanır.
    6.  **Sistem:** Makaleyi favoriler listesinden kaldırır ve arka uca güncelleme gönderir.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Favori yok:** Sistem "Henüz favori makaleniz yok." mesajını gösterir.
    *   A.2 **Favoriden çıkarma sırasında ağ hatası:** Sistem bir hata gösterir, güncelleme başarısız olursa kullanıcı arayüzünü geri alır, eylemi çevrimdışı için sıraya alır.
*   **Ekran Tasarımı Açıklaması:**
    *   **Favoriler Listesi:** Normal bir akışa benzer şekilde makale kartlarının listesi, ancak bir favoriden çıkarma simgesi/hareketi ile.
*   **Etkileşim Kalıpları:** Dikey kaydırma, makaleye dokunma, favoriden çıkarmak için kaydırma/dokunma.
*   **API Etkileşimleri:** Kullanıcı favorileri için arka uç API'si (almak için GET, kaldırmak için DELETE).
*   **Gizlilik/Erişilebilirlik Notları:** Favoriler kullanıcıya özeldir.
*   **Çevrimdışı Destek:** Önbelleğe alınmış favoriler çevrimdışı görüntülenebilir. Çevrimdışı ise favoriden çıkarma sıraya alınır.

6.3 Forum Etkinliğini Görüntüleme
*   **Amaç:** Kullanıcı kendi forum konularını ve yanıtlarını inceler.
*   **Ön Koşullar:** Kullanıcı giriş yapmış ve forumda gönderi yayınlamış olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** Profil -> Forum Etkinliğim yolunu izler.
    2.  **Sistem:** "Konularım" ve "Yanıtlarım" olmak üzere iki sekme gösterir.
    3.  **Kullanıcı:** Kendi oluşturduğu konuları veya yanıtları görüntülemek için bir sekmeye dokunur.
    4.  **Sistem:** Kullanıcının konularının veya yanıtlarının sayfalandırılmış bir listesini gösterir.
    5.  **Kullanıcı:** Orijinal Konu Detay ekranına gitmek için bir öğeye dokunur (kendi gönderisini vurgulayarak).
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Etkinlik yok:** Sistem "Henüz bir konu oluşturmadınız/yanıt göndermediniz." mesajını gösterir.
    *   A.2 **Ağ hatası:** Sistem hata gösterir.
*   **Ekran Tasarımı Açıklaması:**
    *   **Forum Etkinliği Ekranı:** "Konularım" ve "Yanıtlarım" için üst sekme çubuğu. Her biri bağlam (örneğin, bir yanıt için konu başlığı) ile konu kartlarının veya yanıt özetlerinin listesi.
*   **Etkileşim Kalıpları:** Sekme navigasyonu, dikey kaydırma, gitmek için dokunma.
*   **API Etkileşimleri:** Forum API (İnce Arka Uç Adaptörü): GET /user/{id}/topics, GET /user/{id}/posts.
*   **Gizlilik/Erişilebilirlik Notları:** Kullanıcının kendi etkinliği, orijinal olarak yayınlananların ötesinde halka açık olarak ifşa edilmez.
*   **Çevrimdışı Destek:** Kullanıcının tam etkinlik listesini almak için ağ bağlantısı gereklidir.

6.4 Gizlilik Kontrolleri (Veri Dışa Aktarma/Silme)
*   **Amaç:** Kullanıcı, kişisel verilerini dışa aktarma veya silme dahil olmak üzere veri haklarını yönetir.
*   **Ön Koşullar:** Kullanıcı giriş yapmış olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış (Veri Dışa Aktarma):**
    1.  **Kullanıcı:** Profil -> Ayarlar -> Gizlilik yolunu izler.
    2.  **Kullanıcı:** "Verilerimi İndir" düğmesine dokunur.
    3.  **Sistem:** Bir onay/açıklama modalı gösterir.
    4.  **Kullanıcı:** İsteği onaylar.
    5.  **Sistem:** Veri dışa aktarma işlemini başlatır (arka uç). Bir mesaj gösterir: "Verileriniz hazırlanıyor. Bağlantı e-posta adresinize gönderilecektir."
    6.  **Sistem (E-posta):** Veri paketi hazır olduğunda (30 gün içinde) kullanıcının kayıtlı e-posta adresine güvenli bir indirme bağlantısı gönderir.
*   **Ana Akış (Veri Silme):**
    1.  **Kullanıcı:** Profil -> Ayarlar -> Gizlilik yolunu izler.
    2.  **Kullanıcı:** "Hesabımı Sil" düğmesine dokunur (tam akış için 1.5 Hesap Silme bölümüne bakınız).
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Ağ hatası:** Genel hata.
*   **Ekran Tasarımı Açıklaması:**
    *   **Gizlilik Ayarları Ekranı:** "Verilerimi İndir" ve "Hesabımı Sil" için liste öğeleri. "Gizlilik Politikası"na bağlantı.
    *   **Veri Dışa Aktarma Modalı:** İşlemin açıklaması, onay düğmesi.
    *   **Dışa Aktarma E-postası:** Güvenli, zaman sınırlı indirme bağlantısı içeren standart e-posta.
*   **Etkileşim Kalıpları:** Dokunma, modal onayı.
*   **API Etkileşimleri:** Veri dışa aktarma istekleri için arka uç API'si.
*   **Gizlilik/Erişilebilirlik Notları:** Tam KVKK/GDPR uyumluluğu. Veri hakları ve süreçlerinin açık iletişimi.
*   **Çevrimdışı Destek:** Çevrimdışı başlatılan istekler mümkünse sıraya alınacak veya ağ bağlantısı gerektirecektir.

7. Destek

7.1 Sıkça Sorulan Sorulara Erişim
*   **Amaç:** Kullanıcı sıkça sorulan sorulara yanıt bulur.
*   **Ön Koşullar:** Kullanıcı uygulamada olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** Profil -> Destek -> Sıkça Sorulan Sorular yolunu izler.
    2.  **Sistem:** Sıkça Sorulan Sorular kategorilerinin bir listesini veya aranabilir bir soru listesini gösterir.
    3.  **Kullanıcı:** Bir kategoriye veya soruya dokunur.
    4.  **Sistem:** Yanıt içeriğini gösterir.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Ağ hatası:** Sistem önbelleğe alınmış SSS içeriğini gösterir.
*   **Ekran Tasarımı Açıklaması:**
    *   **Destek Menüsü:** "Sıkça Sorulan Sorular" için liste öğesi.
    *   **SSS Listesi:** Sorular/yanıtlar için genişletilebilir liste öğeleri veya üstte bir arama çubuğu.
*   **Etkileşim Kalıpları:** Genişletmek/daraltmak veya gezinmek için dokunma.
*   **API Etkileşimleri:** CMS (WordPress REST): GET /pages?slug=<sss_sayfa_slug> veya SSS için özel API uç noktası.
*   **Gizlilik/Erişilebilirlik Notları:** Statik içerik, PII içermez.
*   **Çevrimdışı Destek:** SSS önbelleğe alınır ve çevrimdışı erişilebilir.

7.2 Destek ile İletişime Geçme
*   **Amaç:** Kullanıcı destek ekibine bir soru veya sorun gönderir.
*   **Ön Koşullar:** Kullanıcı uygulamada olmalı.
*   **Aktörler:** Kullanıcı, Sistem.
*   **Ana Akış:**
    1.  **Kullanıcı:** Profil -> Destek -> Bize Ulaşın yolunu izler.
    2.  **Sistem:** İletişim formunu gösterir. Kullanıcının e-postasını otomatik olarak doldurur (giriş yapmışsa).
    3.  **Kullanıcı:** Konu ve Mesajı girer.
    4.  **Sistem:** Spam önlemek için bir CAPTCHA sunar.
    5.  **Kullanıcı:** CAPTCHA'yı tamamlar.
    6.  **Kullanıcı:** "Gönder" düğmesine dokunur.
    7.  **Sistem:** Form verilerini arka uç destek sistemine gönderir.
    8.  **Sistem:** "Mesajınız başarıyla gönderildi." mesajını gösterir.
*   **Alternatif Akışlar/Hata Yönetimi:**
    *   A.1 **Ağ hatası:** Sistem mesajı taslak olarak kaydeder ve yeniden deneme sunar.
    *   A.2 **CAPTCHA hatası:** Kullanıcı CAPTCHA'yı tekrar dener.
    *   A.3 **Hız limiti:** Sistem "Çok fazla istek gönderdiniz, lütfen daha sonra tekrar deneyin." mesajını gösterir.
*   **Ekran Tasarımı Açıklaması:**
    *   **İletişim Formu:** Konu metin girişi, çok satırlı mesaj metin alanı. CAPTCHA widget'ı. "Gönder" düğmesi.
*   **Etkileşim Kalıpları:** Metin girişi, CAPTCHA etkileşimi, düğmeye dokunma.
*   **API Etkileşimleri:** Destek formu gönderimi için arka uç API'si.
*   **Gizlilik/Erişilebilirlik Notları:** Kullanıcı tarafından gönderilen veriler güvenli bir şekilde işlenir. Kötüye kullanımı önlemek için hız limitlidir.
*   **Çevrimdışı Destek:** Form çevrimdışı oluşturulabilir; gönderim çevrimiçi olunduğunda sıraya alınır.

## Styling Guidelines
**STYLING GUIDELINES: KADIN ATLASI**

**1. INTRODUCTION & DESIGN PHILOSOPHY**
The styling for Kadın Atlası is built upon a foundation of warmth, trustworthiness, and empowerment. Our design philosophy centers on creating an approachable and supportive digital space for women in Turkey. Every visual and interactive element is designed to foster credibility and relatability, ensuring a seamless, privacy-first, and accessible experience for everyday, on-the-go use. The aesthetic balances modern minimalism with friendly, empathetic interactions.

**2. BRAND IDENTITY & VISUAL AESTHETIC**
Kadın Atlası's visual identity should convey:
*   **Warmth & Approachability:** Inviting and friendly, not cold or clinical.
*   **Trust & Credibility:** Professional and reliable, especially for health-related content.
*   **Empowerment:** Inspiring and positive, supporting women in their journey.
*   **Modern Minimalism:** Clean, uncluttered, content-first layouts.
*   **Inclusivity & Diversity:** Reflecting the broad spectrum of women in Turkey.

**3. COLOR PALETTE**
The color palette is chosen to be calming, soft, and accessible, ensuring high contrast and a pleasant visual experience. All colors must comply with WCAG 2.1 AA accessibility contrast ratios.

*   **Primary Palette (Calming & Feminine):**
    *   **Warm Pinks / Rose:** Evokes care, comfort, and femininity.
    *   **Corals:** Adds a vibrant, energetic, yet soft touch.
    *   **Lilacs / Lavenders:** Conveys peace, wisdom, and thoughtfulness.
*   **Accent Palette (Highlight & Action):**
    *   **Emerald Green / Turquoise:** Used for important call-to-action buttons, interactive elements, highlights, and status indicators (e.g., "safe," "active"). Provides strong contrast against primary and neutral tones.
*   **Neutral Palette (Backgrounds & Text):**
    *   **White:** For clean backgrounds, primary content areas.
    *   **Light Gray (e.g., #F5F5F5):** For subtle section dividers, card backgrounds, inactive states.
    *   **Beige / Soft Cream:** For warmer backgrounds or secondary elements, adding depth without visual noise.
    *   **Dark Gray / Black:** For primary text, ensuring maximum readability and contrast.
*   **Semantic Colors:**
    *   **Success:** A clear, accessible green for positive feedback.
    *   **Warning:** A soft, accessible orange/yellow for caution.
    *   **Error:** A clear, accessible red for critical issues.
    *   **Info:** A calming, accessible blue for informational messages.

**4. TYPOGRAPHY**
Typography is selected for optimal readability, scalability, and a friendly yet professional appearance, supporting Turkish diacritics (ç, ğ, ı, İ, ö, ş, ü).

*   **Font Families:**
    *   **Headlines (H1-H6):** A modern sans-serif like **Inter** or **Poppins**. Chosen for its clarity, friendliness, and strong presence.
    *   **Body Text & UI Elements:** A highly legible sans-serif like **Roboto** or **Open Sans**. Selected for its excellent readability on mobile screens and consistent scaling across different sizes.
*   **Typography Hierarchy:**
    *   **H1 (Page Titles):** Prominent, bold, large.
    *   **H2 (Section Titles):** Clear, bold, slightly smaller than H1.
    *   **H3 (Card Titles, Sub-sections):** Legible, medium weight, good spacing.
    *   **Body Text (P):** Generous line height (1.5x) and letter spacing for comfortable reading.
    *   **Small Text (Captions, Labels):** Legible at smaller sizes, sufficient contrast.
*   **Font Sizing & Scaling:**
    *   **Base size:** 16px for body text, with a responsive scaling system.
    *   **Accessibility:** Support dynamic type/scalable text, allowing users to adjust font sizes through device settings. All text must remain readable and layout resilient at larger text sizes.
*   **Emphasis:** Use of **bold** for key phrases, TL;DR sections, and important terms to aid quick scanning. Avoid excessive italics or capitalization.

**5. ICONOGRAPHY**
*   **Style:** Simple, rounded, and friendly line icons. Consistent in stroke weight, corner radius, and overall style to maintain a cohesive visual language.
*   **Purpose:** To clarify navigation, denote features (e.g., 🌸 General wellness, 🤰 Pregnancy, 🏋️ Fitness, 🔮 Astrology), and enhance understanding of UI elements (e.g., save, share, report).
*   **Clarity:** Icons should be immediately recognizable and intuitive, even at small sizes.

**6. IMAGERY & ILLUSTRATIONS**
Imagery is crucial for conveying the app's supportive and inclusive tone.

*   **Style:**
    *   **Authentic Lifestyle Photography:** Featuring women of diverse ages, backgrounds, body types, and styles (including modest-friendly options). Images should evoke real-life situations and emotions.
    *   **Friendly Illustrations:** Clean, modern illustrations with a soft, warm aesthetic.
*   **Themes:** Imagery should reinforce themes of health, self-care, empowerment, joy, and positivity. Avoid visuals that promote unattainable ideals, body shaming, or perfectionism.
*   **Content:** Focus on supporting the article or feature. For sensitive topics, use abstract or gently symbolic imagery.
*   **Optimization:** All images must be compressed and optimized for mobile devices to ensure fast loading times and low data consumption, especially considering variable bandwidth in Turkey. Provide alt text for all meaningful images for screen reader users.

**7. UI PRINCIPLES (User Interface)**
*   **Minimal Clutter & Content-First:** Prioritize content presentation with clean layouts and minimal UI chrome. White space is utilized effectively to reduce cognitive load.
*   **Clear Navigation:** Intuitive and easy-to-understand navigation patterns, with consistent placement of primary navigation elements (e.g., bottom tabs).
*   **Friendly Interactions:**
    *   **Rounded Corners:** Applied consistently to cards, buttons, and input fields to convey softness and approachability.
    *   **Soft Shadows:** Subtle shadows for depth and hierarchy, avoiding harsh or flat designs.
    *   **Subtle Animations (Micro-interactions):** Smooth, non-distracting animations for transitions, feedback (e.g., tap states, loading), and to enhance the feeling of responsiveness.
*   **Component-Based Design:** Utilize a robust design system with reusable components (buttons, cards, input fields, calculators, forum post layouts) to ensure consistency, speed up development, and simplify maintenance.
*   **Feedback & States:** Clear visual feedback for interactive elements (hover, pressed, disabled, error states).

**8. UX PRINCIPLES & ACCESSIBILITY**
Kadın Atlası is designed for all women, emphasizing accessibility as a core requirement.

*   **Accessibility First (WCAG-aligned):**
    *   **High Contrast:** All color combinations meet WCAG 2.1 AA standards for text and interactive elements.
    *   **Scalable Text:** Support for dynamic type/system font sizes. Layouts must adapt gracefully without text truncation or overlap.
    *   **Minimum Touch Targets:** All interactive elements (buttons, links) must have a minimum target size of 44dp x 44dp.
    *   **Screen Reader Support:** Full support for VoiceOver (iOS) and TalkBack (Android) with meaningful labels and logical navigation order in Turkish.
    *   **Clear Focus States:** Visible focus indicators for keyboard navigation.
*   **Privacy-First UX:** Design choices reinforce privacy. E.g., clear consent prompts, easy access to privacy controls, incognito posting option, pseudonym defaults.
*   **Clarity & Simplicity:** Information is presented in an easy-to-understand manner, avoiding jargon. Short sentences, bullet points, and clear headings aid comprehension.
*   **Consistency:** Predictable user flows and UI elements across the entire application to reduce learning curve.
*   **Forgiveness:** Users should be able to easily undo actions, recover from errors (e.g., draft auto-save), and understand validation messages.

**9. LOCALIZATION & CULTURAL ADAPTATIONS**
The design explicitly caters to Turkish users.

*   **Language & Tone:** Empathetic, supportive, and conversational Turkish microcopy. Avoid moralizing or shaming language.
*   **Diacritics:** Full support for Turkish characters (ç, ğ, ı, İ, ö, ş, ü) in all text fields and rendering.
*   **Units & Formats:**
    *   **Dates:** DD.MM.YYYY format.
    *   **Time:** 24-hour format.
    *   **Measurements:** Metric system (kg, cm) for calculators.
*   **Cultural Nuances:**
    *   **Ramadan Mode:** Visual cues or settings to acknowledge cultural periods.
    *   **Modest-Friendly Imagery:** Ensure visual content is inclusive and respectful of diverse cultural norms.
    *   **Contextual Information:** For medical/health content, integrate Turkey-specific context (e.g., SGK vs. private clinic references).

**10. DESIGN SYSTEM & REUSABLE COMPONENTS**
A comprehensive design system will be established, containing:
*   **Style Guide:** Defines colors, typography, spacing, and elevation.
*   **Component Library:** Reusable UI elements (buttons, cards, input fields, navigation bars, loading indicators, alerts, modals, segmented controls, etc.) with defined states (default, active, disabled, error) and accessibility considerations.
*   **Templates:** Common page layouts (e.g., article detail, forum topic list, calculator form) to ensure consistency and accelerate development.
This system will be critical for maintaining consistency, reducing technical debt, and efficiently scaling the application.
