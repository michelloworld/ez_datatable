module EzDatatable
  module Controller
    def _table(collections, config)
	    context = Rails.configuration.paths['app/views']
	    view = ActionView::Base.new(context)
			view.class.include Rails.application.routes.url_helpers
			view.render partial: '/ez_datatable/table', locals: { collections: collections, config: config, params: params, request: request }
    end

    def self.send(collection, attr)
			val = collection
			attrs = attr.split('.')
			if attrs.count > 1
				attrs.each_with_index do |attr, i|
					if i == 0
						attr = attr.singularize
					end
					val = val.public_send(attr) if val
				end
			else
				val = val.public_send(attr)
			end
			val
		end
  end
end