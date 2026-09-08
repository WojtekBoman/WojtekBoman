#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
SOURCE="$ROOT/readme.source.md"
LOGIN="${GITHUB_USER:-WojtekBoman}"

if [[ ! -f "$SOURCE" ]]; then
  echo "missing $SOURCE" >&2
  exit 1
fi

COUNT="$(gh api graphql \
  -f query='query($login:String!){user(login:$login){contributionsCollection{contributionCalendar{totalContributions}}}}' \
  -F login="$LOGIN" \
  --jq '.data.user.contributionsCollection.contributionCalendar.totalContributions')"

if [[ ! "$COUNT" =~ ^[0-9]+$ ]]; then
  echo "failed to fetch contributions: ${COUNT}" >&2
  exit 1
fi

if sed --version >/dev/null 2>&1; then
  sed -i "s/__CONTRIBUTIONS__/${COUNT}/g" "$SOURCE"
else
  sed -i '' "s/__CONTRIBUTIONS__/${COUNT}/g" "$SOURCE"
fi

echo "Injected ${COUNT} contributions into readme.source.md"
