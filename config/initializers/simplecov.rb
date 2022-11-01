if ENV['RAILS_ENV'] == 'test'
  require 'simplecov'
  require 'simplecov-formatter-badge'

  SimpleCov.command_name 'RSpec'
  SimpleCov.start 'rails' do
    add_filter %w[bin db spec test jobs]
    add_group 'Mailers',    'app/mailers'
    add_group 'Services',   'app/services'
    add_group 'Validators', 'app/validators'
    add_group 'Decorators', 'app/decorators'
    SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
      SimpleCov::Formatter::HTMLFormatter,
      SimpleCov::Formatter::BadgeFormatter
    ])
  end
end
