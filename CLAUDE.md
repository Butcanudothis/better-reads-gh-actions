# CI Environment

Ruby, Node, and all dependencies are pre-installed. Do NOT run `bundle install` or `yarn install`.

Linting runs automatically via the pre-commit hook when you commit. It handles:
- Ruby: rubocop autocorrect

If the commit fails due to lint errors, fix them and commit again.
