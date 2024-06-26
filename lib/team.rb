class Team
  def initialize(
    use_labels: nil,
    security_alerts: nil,
    morning_seal_quotes: nil,
    seal_prs: nil,
    afternoon_seal_quotes: nil,
    dependapanda: nil,
    ci_checks: nil,
    gems: nil,
    compact: nil,
    exclude_labels: nil,
    exclude_titles: nil,
    quotes_days: nil,
    repos: nil,
    quotes: nil,
    slack_channel: nil
  )
    @use_labels = (use_labels.nil? ? false : use_labels)
    @security_alerts = (security_alerts.nil? ? false : security_alerts)
    @morning_seal_quotes = (morning_seal_quotes.nil? ? false : morning_seal_quotes)
    @seal_prs = (seal_prs.nil? ? false : seal_prs)
    @afternoon_seal_quotes = (afternoon_seal_quotes.nil? ? false : afternoon_seal_quotes)
    @dependapanda = (dependapanda.nil? ? false : dependapanda)
    @ci_checks = (ci_checks.nil? ? false : ci_checks)
    @gems = (gems.nil? ? false : gems)
    @compact = (compact.nil? ? false : compact)
    @quotes_days = quotes_days || []
    @exclude_labels = exclude_labels || []
    @exclude_titles = exclude_titles || []
    @repos = repos || []
    @quotes = quotes || []
    @channel = slack_channel
  end

  attr_reader(*%i[
    use_labels
    quotes_days
    security_alerts
    morning_seal_quotes
    seal_prs
    afternoon_seal_quotes
    dependapanda
    ci_checks
    gems
    compact
    exclude_labels
    exclude_titles
    repos
    quotes
    channel
  ])
end
