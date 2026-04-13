# MedBioInfo Hugo site

A Hugo-based, Git-friendly rebuild of **www.medbioinfo.se**, designed to preserve the look and structure of the current site while removing the WordPress dependency.

## Stack

- Hugo for static site generation
- Plain Apache deployment
- Git-friendly file structure for maintenance in VS Code

## Commands

```bash
make serve
make build
make deploy TARGET=user@server:/var/www/html/medbioinfo/
```

## Structure

- `content/` site pages and news posts
- `data/` structured content for people, courses, links and recent posts
- `layouts/` Hugo templates
- `assets/css/site.css` styling
- `static/img/` downloaded logo and meeting images
- `scripts/deploy.sh` deployment helper

## Notes

- The site is intentionally styled to resemble the current MedBioInfo layout: utility bar, centered logo, navigation, content area with sidebar cards, and meeting images.
- Some pages have been modernised slightly for readability while retaining the original organisation and wording.
- If you want to migrate more archived WordPress posts, add them under `content/news/`.
