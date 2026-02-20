# CI Environment

Ruby, Node, and all dependencies are pre-installed. Do NOT run `bundle install` or `yarn install`.

## Linting

Do NOT run rubocop manually. The pre-commit hook runs rubocop autocorrect automatically when you commit. Just commit your changes and the hook will fix style issues for you.

If the commit fails due to lint errors that can't be autocorrected, fix them in code and commit again.
