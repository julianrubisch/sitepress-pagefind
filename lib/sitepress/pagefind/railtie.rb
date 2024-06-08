module Sitepress
  module Pagefind
    class Railtie < ::Rails::Railtie
      rake_tasks do
        load "tasks/sitepress/pagefind_tasks.rake"
      end
    end
  end
end
