#!/bin/bash
#
# GenAI API helpers — test functions for verifying connectivity.
# Keys are loaded from ~/.config/xenv/.env

# --- Google Gemini ---

function gemini_test() {
  curl -s "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=${GEMINI_API_KEY}" \
    -H 'Content-Type: application/json' \
    -X POST \
    -d '{"contents":[{"parts":[{"text":"Say hello in one sentence."}]}]}' \
    | python3 -m json.tool
}

# --- Anthropic Claude ---
function anthropic_test() {
  curl -s "https://api.anthropic.com/v1/messages" \
    --header "anthropic-version: 2023-06-01" \
    --header "content-type: application/json" \
    --header "x-api-key: ${ANTHROPIC_API_KEY}" \
    --data '{
      "model": "claude-sonnet-4-20250514",
      "max_tokens": 100,
      "messages": [{"role": "user", "content": "Say hello in one sentence."}]
    }' \
    | python3 -m json.tool
}

function unset_claude_api() {
  unset ANTHROPIC_API_KEY
}
