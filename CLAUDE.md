# Mel's City Quests — CLAUDE.md

## About this project
A static website published via GitHub Pages at **scavengerhunt.melissuikertje.com**.

- `index.html` — the hub/dispatcher page listing all available city quests
- `brussels.html`, `dresden.html`, etc. — individual city scavenger hunt pages
- No build tools, no npm, no frameworks — plain HTML, CSS, and JavaScript only

## About the owner
Mel is a webpage designer (not a programmer) and is not familiar with Git. She describes the changes she wants; Claude makes them. Her husband set up the repository and the publishing workflow.

## Making changes
- Edit HTML files directly as requested
- Each city page is self-contained — all CSS and JS is inline in the file
- The hub (`index.html`) should be kept in sync whenever city pages are added or removed
- Each city page gets its own distinct visual theme — do not reuse the look of another city. If Mel hasn't described a vibe for the new city, ask before designing.

## Publishing
When Mel says "publish the website" (or anything understood as that), run the publish script from the repo root:

```powershell
cd C:\src\scavenger-hunts
pwsh -File ai-publish.ps1
```

If working in a git worktree, copy any changed files to `C:\src\scavenger-hunts` first, then run the script from there.

Mel is already authenticated. The commit message "Push website" matches the established convention in the git log. After pushing, let her know the site may take up to 60 seconds to be visible online.

Do **not** ask for confirmation before publishing — when she says publish, just do it.

## What not to do
- Do not add npm, bundlers, frameworks, or any build tooling
- Do not create README or documentation files unless asked
- Do not leave the hub (`index.html`) out of sync after adding or removing a city page
