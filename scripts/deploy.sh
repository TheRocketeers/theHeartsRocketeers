#!/usr/bin/env bash
set -e # halt script on error

zip -r website.zip _site

curl -H "Content-Type: application/zip" \
     -H "Authorization: Bearer c4358aa7d451816ac2019cb73a4fd57193866d824fae13c11dff24aa3c3a434e" \
     --data-binary "@website.zip" \
     https://api.netlify.com/api/v1/sites/therocketeers.cr.rs/deploys