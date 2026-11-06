# Contributing

Every merge to `main` releases a new image that tjzimmerman.com runs, so changes come through PRs that TJ reviews.

1. Branch from the latest `main`.
2. Make one change per PR, and title it `type(scope): summary`, such as `feat(site): add a projects section`. The type sets the release: `feat` is a minor, `fix` and most others a patch, and a `!` a major.
3. Run it in Docker, as the README shows, and look at it at `http://localhost`.
4. Open the PR. `Docker Build` builds, scans and smoke-tests the image, and the `Release` dry run says what the merge will release ([docs/CICD.md](docs/CICD.md)).
