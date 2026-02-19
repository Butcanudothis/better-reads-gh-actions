# CI Environment

Ruby and all gems are pre-installed. Do NOT run `bundle install` - it is already done.

# After Making Code Changes

Run `bundle exec rubocop --autocorrect <files>` on changed files and fix any remaining issues before committing.
Use `bundle exec rubocop -A <files>` for unsafe autocorrects if safe autocorrect leaves remaining offenses.

Always use `bundle exec rubocop` - never call rubocop directly or via vendor paths.
