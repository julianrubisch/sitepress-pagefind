class Sitepress::Pagefind::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path("templates", __dir__)

  def install_javascript_deps
    # stimulus?
    if File.exist? Rails.root.join("config", "importmap.rb")
      say "Pinning @pagefind/default-ui"
      run "bin/importmap pin @pagefind/default-ui"
    else
      say "Installing @pagefind/default-ui"
      run "yarn add @pagefind/default-ui"
    end
  end

  def copy_search_controller
    say "Copying the Stimulus search controller"
    copy_file "search_controller.js", "app/javascript/controllers/search_controller.js"
  end

  def copy_search_partial
    say "Copying the template search partial"
    copy_file "_search.html.erb", "app/views/pagefind/_search.html.erb"
  end
end
