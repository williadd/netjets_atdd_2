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