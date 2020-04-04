#!/bin/bash

set -eu

cd $GITHUB_WORKSPACE
bundle install
bundle exec rake pdf
bundle exec rake epub
