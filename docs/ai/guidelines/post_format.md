# Blog Post Format Guidelines for AI Agent

This document outlines the format for creating new blog posts for this site. Please adhere to these guidelines to ensure consistency.

## File Naming Convention

Files should be placed in the `_posts` directory and follow the Jekyll naming convention:
`YYYY-MM-DD-your-post-title-here.md`

Example: `2025-05-15-my-awesome-ai-post.md`

## Frontmatter

Each post must begin with YAML frontmatter, enclosed by triple-dashed lines (`---`). Below are the common fields and their descriptions:

```yaml
---
title: "Your Engaging Post Title Here"
# (Required) String: The main title of the blog post. Keep it concise and descriptive.

date: YYYY-MM-DD HH:MM:SS +/-TTTT
# (Optional but Recommended) Full date and time of publication.
# Example: 2025-05-15 14:30:00 +0000

tags: [Tag1, Tag2, Another Tag]
# (Optional) Array of Strings: Relevant tags for categorizing the post.
# Choose from existing tags if possible, or create new sensible ones.
# Example: [AI, Machine Learning, Tech]

style: "fill"
# (Optional) String: Visual style for the post display. Common values observed: "fill", "border".
# If unsure, "fill" is a common default.

color: "primary"
# (Optional) String: A color theme hint for the post display.
# Common values: "primary", "secondary", "success", "danger", "warning", "info", "light", "dark".
# Choose one that semantically fits the post or a general one like "primary".
# avoid "dark", until it's fits too good with the post.

description: "A brief and compelling summary of your post (1-2 sentences)."
# (Required) String: A short teaser or summary of the post content. This is often used for SEO and previews.

# --- Optional fields based on post type ---

external_url: "https://example.com/your-external-article"
# (Optional) String: If this post is primarily a link to an article on another site, provide the full URL here.
# If this field is present, the post body might be omitted, because this link is redirect.

comments: true
# (Optional) Boolean: Set to `true` to enable comments for this post, if the theme supports it. Defaults to false or theme default if omitted.

# Add any other custom frontmatter fields if they become relevant for new features.
---
```

## Content

Below the frontmatter, write the main content of the post using Markdown.

You can include:

- Standard Markdown (headings, paragraphs, lists, bold, italics, links, images).
- Code blocks with syntax highlighting (e.g., ```python ...```).
- Jekyll includes if necessary (e.g., `{% raw %}{% include path/to/include.html %}{% endraw %}`), though try to keep posts self-contained with Markdown where possible.

### Content Suggestions for AI Agent

- **Topic Focus**: Align with the site's themes (e.g., AI, technology, software development, personal insights).
- **Originality**: Strive for original content or unique perspectives on existing topics.
- **Clarity & Conciseness**: Write clearly and get to the point.
- **Engagement**: Use engaging language, ask questions, or provide actionable insights.
- **Structure**: Use headings and subheadings to structure longer posts for readability.
- **Images/Media**: If relevant, suggest placeholders for images or describe the type of image that would fit, e.g., `[Placeholder for a diagram explaining AI model architecture]`. Actual image embedding syntax: `![Alt text for image](URL_or_path_to_image)`

Remember to tailor the `title`, `description`, and `tags` accurately to the content you generate.
If linking to an external article using `external_url`, ensure the `title` and `description` still provide good context.
