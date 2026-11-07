# Personal-Website

TJ's site, tjzimmerman.com: static `index.html`, `styles.css` and `javascript.js`, served by nginx (`nginx.conf`) from the image the `Dockerfile` builds. It runs as an Argo Rollout from zimmertr/Kubernetes-Manifests (`public/personal-website`). Start with [`docs/CICD.md`](docs/CICD.md).

This repo took a trimmed set of the files a new project starts with (zimmertr/yggdrasil record 0038). When a change here makes a decision, write its record under `docs/architectural-decision-records/`; when it needs a page `docs/` doesn't have yet, add it in the same PR.

## Rules

- **A merge is a deploy.** Every merge to `main` pushes a new image and opens a self-merging Kubernetes-Manifests PR; the Rollout's canary checks the site before it takes all the traffic. The PR title sets the version bump.
- **nginx serves the site on 80 and `stub_status` on 8080.** The Rollout relies on those ports.
- **UI changes start with a mockup,** and use the `frontend-design` skill.
- The README is TJ's: keep it accurate and in his voice, and never restructure it.

## Issues

File issues with the `create-issue` skill from zimmertr/ai-config: the two-sentence summary, the six sections, the hemingway and humanizer passes, one priority, one type, the area labels and the session label. The skill reads the four things below from this section.

- **The reader**: TJ, who owns the site and reads HTML, CSS and JavaScript.
- **The gates**: `Docker Build / Docker Build`, `PR Title / PR Title` and the three `Lint /` checks pass; the docs page that owns the topic changes in the same PR; the README changes only to stay accurate.
- **The constraints**: the image stays linux/amd64, which the cluster runs; ports 80 and 8080 stay as they are.
- **The areas**: `site` (the page, its styles and script), `ci` (the workflows, the image, nginx and Dependabot), `security`.

## Working in this repo

- Work in a fresh clone in the session's scratchpad, never in TJ's checkout. Branch from the latest `origin/main`.
- Everything reaches main through a squash-merged PR. Never push to main.
- The PR title is `type(scope): summary`; the `PR Title` check refuses anything else.
- Actions are pinned to commit SHAs with the version in a comment, and the base image to its tag and digest. Dependabot bumps both.
