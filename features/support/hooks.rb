# frozen_string_literal: true

Before do
  page.driver.browser.manage.window.maximize
end

After do |scenario|
  screenshot = page.save_screenshot("log/screenshots/#{scenario.__id__}.png")
  embed(screenshot, 'image/png', 'Screenshot')
end

at_exit do
  info = { Environment: 'SEDUC', Date: Time.now, Tester: 'Vinicius Araujo' }
  ReportBuilder.configure do |config|
    config.input_path = 'log/report.json'
    config.report_path = "log/report_#{Time.now.strftime('%d%m%Y%H%M%S')}"
    config.report_types = [:html]
    config.report_title = 'Results'
    config.additional_info = info
    config.color = 'green'
  end
  ReportBuilder.build_report
end
