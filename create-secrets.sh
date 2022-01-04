if [[ -e .env ]]; then
  rm .env
  touch .env
fi

echo "REDASH_COOKIE_SECRET=$(pwgen -1s 32)" >> .env
echo "REDASH_SECRET_KEY=$(pwgen -1s 32)" >> .env
