class  NotyThemeGenerator < Rails::Generator::Base
	def manifest
		record do |m|
			m.file "jquery.noty.js","app/assets/javascripts/jquery.noty.js"
			m.file "jquery.noty.css","app/assets/stylesheets/jquery.noty.css"
			m.file "noty_theme_default.css","app/assets/stylesheets/noty_theme_default.css"
		end
	end
end