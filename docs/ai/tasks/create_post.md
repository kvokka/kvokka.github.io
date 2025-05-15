# Task: Create New Blog Post

## Goal

To generate a new blog post file ready for publishing, based on a given topic and key information, adhering to the site's formatting standards.

## Inputs from User/Requester

1. **Topic**: The main subject of the blog post.
2. **Key Points/Outline**: Core ideas, arguments, or information to be included.
3. **Desired Tone**: (e.g., technical, reflective, informal, "rockstar").
4. **Target Publish Date**: (Optional, if specific timing is needed, e.g., YYYY-MM-DD).
5. **Any Specific Links/References**: URLs or sources to incorporate.

## Process

1. **Understand Inputs**: Review the provided topic, key points, tone, and any other specific instructions.
2. **Consult Guidelines**: **Crucially, refer to and strictly follow all instructions in the [Blog Post Format Guidelines](</docs/ai/guidelines/post_format.md>)**. This includes:
    * File naming convention (`YYYY-MM-DD-your-post-title-here.md`).
    * All required and optional YAML frontmatter fields (`title`, `date`, `tags`, `style`, `color`, `description`, `external_url`, `comments`).
3. **Craft Content**:
    * Write engaging and informative content based on the inputs.
    * Structure the post logically with Markdown (headings, paragraphs, lists, etc.).
    * Incorporate any provided links or references naturally.
    * If images are relevant, suggest placeholders like `![Descriptive alt text for image](placeholder_for_image_url.png)`.
4. **Generate Filename**: Create the filename based on the target publish date (or current date if not specified) and the post title, as per the guidelines.
5. **Assemble File**: Combine the generated frontmatter and Markdown content into a single `.md` file.

## Output

A complete Markdown file for the new blog post, located in the `_posts` directory, named and formatted according to the [Blog Post Format Guidelines](</docs/ai/guidelines/post_format.md>).

---
**Keep It Simple!** The primary goal is a well-formatted, content-rich post. Rely heavily on the linked guidelines for all structural and metadata requirements.
