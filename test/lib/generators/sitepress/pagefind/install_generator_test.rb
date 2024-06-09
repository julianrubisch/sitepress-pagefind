require "test_helper"
require "generators/sitepress/pagefind/install/install_generator"

class Sitepress::Pagefind::InstallGeneratorTest < Rails::Generators::TestCase
  tests Sitepress::Pagefind::InstallGenerator
  destination Rails.root.join("tmp/generators")
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
