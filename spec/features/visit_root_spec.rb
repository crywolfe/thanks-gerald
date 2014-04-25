require "spec_helper"

describe "Visit Root" do
  it "should have Makarena on the page" do
    visit '/'
    expect(page).to have_content "Makarena"

  end
end

describe "Visit Root" do
  describe "clicking hey makarena", js: true do
    it "changes text" do
      visit root_path
      page.find("h1", :text => "Hey Makarena").click
      expect(page).to have_content("WOW YEHANERAKAM YEH WOW YEHANERAKAM YEH")

    end
    it "loves me" do
      visit root_path
      expect(page).to have_content("hi")
    end
  end
end
