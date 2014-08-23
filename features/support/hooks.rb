Before() do
  @page = Capybara::Session.new(:selenium)
  @page.visit('http://derp-bear.herokuapp.com/')
end