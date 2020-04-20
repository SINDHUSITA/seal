#!/bin/bash

teams=(
  govuk-corona-product
  govuk-coronavirus-notifications
  govuk-frontend-a11y
  govuk-platform-health
  govuk-step-by-step
)

for team in ${teams[*]} ; do
  ./bin/seal.rb $team quotes
done
