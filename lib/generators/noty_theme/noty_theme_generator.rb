class  NotyThemeGenerator < Rails::Generators::Base
	source_root File.expand_path("../templates", __FILE__)
  desc "This generator installs noty to Asset Pipeline"

	def add_assets
		copy_file "jquery.noty.js", "app/assets/javascripts/jquery.noty.js"
		copy_file "jquery.noty.css", "app/assets/stylesheets/jquery.noty.css"
		copy_file "noty_theme_default.css", "app/assets/stylesheets/noty_theme_default.css"
	end
end