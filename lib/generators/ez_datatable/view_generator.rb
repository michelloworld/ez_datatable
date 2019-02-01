module EzDatatable
	class ViewGenerator < Rails::Generators::Base
  	source_root File.expand_path('templates', __dir__)

	  def create_initializer_file
	    copy_file "_table.html.erb", "app/views/ez_datatable/_table.html.erb"
	    copy_file "../locales/ez_datatable.en.yml", "config/locales/ez_datatable.en.yml"
	  end
	end
end