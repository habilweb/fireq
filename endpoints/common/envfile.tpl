cat <<EOF
LANG=en_US.UTF-8
LANGUAGE=en_US:en
LC_ALL=en_US.UTF-8
PYTHONIOENCODING="utf-8"
PYTHONUNBUFFERED=1

MONGO_URI=${MONGO_URI:-"mongodb://localhost/${name}"}
LEGAL_ARCHIVE_URI=${LEGAL_ARCHIVE_URI:-"mongodb://localhost/${name}_la"}
ARCHIVED_URI=${ARCHIVED_URI:-"mongodb://localhost/${name}_ar"}
CONTENTAPI_MONGO_URI=${CONTENTAPI_MONGO_URI:-"mongodb://localhost/${name}_pa"}
ELASTICSEARCH_URL=${ELASTICSEARCH_URL:-"http://localhost:9200"}
ELASTICSEARCH_INDEX=${ELASTICSEARCH_INDEX:-"$name"}
CONTENTAPI_ELASTICSEARCH_INDEX=${CONTENTAPI_ELASTICSEARCH_INDEX:-"${name}_capi"}

C_FORCE_ROOT=1
CELERYBEAT_SCHEDULE_FILENAME=${CELERYBEAT_SCHEDULE_FILENAME:-/tmp/celerybeatschedule}
CELERY_BROKER_URL=${CELERY_BROKER_URL:-redis://localhost:6379/1}
REDIS_URL=${REDIS_URL:-redis://localhost:6379/1}

MAIL_FROM=${MAIL_FROM-''}
MAIL_SERVER=${MAIL_SERVER-localhost}
MAIL_PASSWORD=${MAIL_PASSWORD-''}
MAIL_PORT=${MAIL_PORT-25}
MAIL_USERNAME=${MAIL_USERNAME-''}
MAIL_USE_SSL=${MAIL_USE_SSL-False}
MAIL_USE_TLS=${MAIL_USE_TLS-False}

AMAZON_ACCESS_KEY_ID=${AMAZON_ACCESS_KEY_ID:-}
AMAZON_SECRET_ACCESS_KEY=${AMAZON_SECRET_ACCESS_KEY:-}
AMAZON_CONTAINER_NAME=${AMAZON_CONTAINER_NAME:-}
AMAZON_S3_SUBFOLDER=${AMAZON_S3_SUBFOLDER:-$(hostname)}
AMAZON_REGION=${AMAZON_REGION:-'eu-west-1'}
AMAZON_SERVER=${AMAZON_SERVER:-amazonaws.com}
AMAZON_SERVE_DIRECT_LINKS=${AMAZON_SERVE_DIRECT_LINKS:-True}
AMAZON_S3_USE_HTTPS=${AMAZON_S3_USE_HTTPS:-False}
AMAZON_PROXY_SERVER=${AMAZON_PROXY_SERVER:-}
AMAZON_URL_GENERATOR=${AMAZON_URL_GENERATOR:-default}

# TODO: need to get rid this for proper SaaS
SUPERDESK_CLIENT_URL=${SUPERDESK_CLIENT_URL:-"http://$host"}

# To work properly inside and outside container, must be
# - "proxy_set_header Host {{host}};" in nginx
# - the same "{{host}}" for next two settings
# TODO: try to fix at backend side, it should accept any host
SUPERDESK_URL=${SUPERDESK_URL:-"http://$host/api"}
CONTENTAPI_URL=${CONTENTAPI_URL:-"http://$host/contentapi"}

IFRAMELY_KEY=${IFRAMELY_KEY:-}

SENTRY_DSN=${SENTRY_DSN:-}
NEW_RELIC_APP_NAME=${NEW_RELIC_APP_NAME:-}
NEW_RELIC_LICENSE_KEY=${NEW_RELIC_LICENSE_KEY:-}
EOF