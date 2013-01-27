RSpec::Matchers::define :have_title do |text|
  match do |page|
    Capybara.string(page.body).has_selector?('title', text: text)
  end
end

RSpec::Matchers::define :have_no_title do |text|
  match do |page|
    Capybara.string(page.body).has_no_selector?('title', text: text)
  end
end
