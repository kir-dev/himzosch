#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /himzosch/tmp/pids/server.pid


if [ "$RAILS_ENV" == "production" ]
then

  # If the database exists, migrate. Otherwise setup (create and migrate)
  echo "Running database migrations..."
  bundle exec rails db:prepare
  echo "Finished running database migrations."

  # Clean assets & precompile newest assets
  echo "Compiling assets..."
  bundle exec rails assets:clobber
  bundle exec rails assets:precompile
fi

exec "$@"