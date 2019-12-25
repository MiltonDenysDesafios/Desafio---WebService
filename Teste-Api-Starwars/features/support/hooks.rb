Before('@inm_web') do
    Capybara.current_session.driver.browser.manage.window.maximize
  end
  
  After('@inm_web') do |scenario|
    scenario.name.gsub(/[^\w\s]/, '').tr(' ', '_')
    Capybara.current_session.driver.quit
  end
  