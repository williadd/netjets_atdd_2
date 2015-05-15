require 'watir-webdriver'

Before do
  begin
    @browser = Watir::Browser.new :chrome
  rescue => e
    warn e
  end
end

After do
  @browser.close
end

After do |scenario|
  begin
    @browser.screenshot.save 'screenshot.png'
  rescue => e
    warn e
  end
end

