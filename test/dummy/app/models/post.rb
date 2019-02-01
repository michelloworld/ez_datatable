class Post < ApplicationRecord
	include EzDatatable::Model

	def self.datatable_config
		config = {
      cols: [
        { label: 'Id', attr: 'id' },
        { label: 'Title', attr: 'title' },
        { label: 'Created at', attr: 'created_at' },
        { label: 'Updated at', attr: 'updated_at' },
        { label: 'Actions', actions:
          [
            { label: 'View', link: 'show_link', class: 'btn btn-xs btn-primary' },
            { label: 'Edit', link: 'edit_link', class: 'btn btn-xs btn-success' },
            { label: 'Delete', link: 'delete_link', class: 'btn btn-xs btn-info', method: :delete, confirm: 'Are you sure?' }
          ]
        },
      ],
      search: [
        { label: 'Id', attr: 'posts.id', operator: 'equal', data_type: 'integer', class_name: 'test-class', data: { url: '/posts' } },
        { label: 'Title', attr: 'posts.title' },
        { label: 'Created at', attr: 'posts.created_at' }
      ],
      num_cols: 3, # default 2
      hide_reset: true, # default is false
      # search_btn: { label: "Submit", class_name: 'btn-custom' }, # default label is "Search" and class_name is "btn-sm btn-primary"
    }
	end

  def datatable_link
    links = {
      show_link: post_path(self),
      edit_link: edit_post_path(self),
      delete_link: post_path(self)
    }
  end
end

# *** search
# col[:attr]
# col[:label]
# col[:field]
# col[:class_name]
# col[:options]