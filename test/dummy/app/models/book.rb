class Book < ApplicationRecord
  include EzDatatable::Model
  
  belongs_to :category

  def self.datatable_config
    config = {
      cols: [
        { label: 'Id', attr: 'id' }, # "label" is table header text, "attr" is attribute name of this model
        { label: 'Title', attr: 'title_attr' }, # "title_attr" is an instant method of this model
        { label: 'Description', attr: 'description_attr' },
        { label: 'Category', attr: 'categories.name' },
        { label: 'Status', attr: 'status' },
        { label: 'Created at', attr: 'created_at_attr' },
        { label: 'Actions', actions:
          [
            { label: 'View', link: 'show_link', class: 'btn btn-xs btn-primary' }, # "label" is a link text, "link" is hash key in "datatable_link" method
            { label: 'Edit', link: 'edit_link', class: 'btn btn-xs btn-success' },
            { label: 'Delete', link: 'delete_link', class: 'btn btn-xs btn-danger', method: :delete, confirm: 'Are you sure?' }
          ]
        },
      ],
      # ### SEARCH ###
      # "label" is input label
      # "attr" is value to search (Format: table_name.column_name)
      # "operator" default = %LIKE%
      # "data_type" default = string (integer) *don't define if you want to use default 
      # "field" default = input text (select) *don't define if you want to use default
      # "options" use to define with "field: 'select'". It's an options for dropdown
      search: [
        { label: 'Id', attr: 'books.id', operator: 'equal', data_type: 'integer', class_name: 'test-class', data: { url: '/books' } },
        { label: 'Title', attr: 'books.title' },
        { label: 'Description', attr: 'books.description' },
        { label: 'Status', attr: 'books.status', field: 'select', options: [['-- Please Select --', ''], ['active', 'active'], ['inactive', 'inactive']] },
        { label: 'Category', attr: 'categories.id', operator: 'equal', field: 'select', options: [['-- Please Select --', '']] + Category.all.map { |c| [c.name, c.id] } }
      ],
      num_cols: 3, # (optinal) default 2
      hide_reset: false, # (optinal) default is false
      search_btn: { label: "Submit", class_name: 'btn btn-primary' }, # (optinal) default label is "Search" and class_name is "btn-sm btn-primary"
    }
  end

  def datatable_link
    links = {
      show_link: book_path(self),
      edit_link: edit_book_path(self),
      delete_link: book_path(self)
    }
  end

  def title_attr
    "#{self.title[0..30]}..."
  end

  def description_attr
    "#{self.description[0..10]}..."
  end

  def created_at_attr
    self.created_at.strftime("%d %b %Y")
  end
end
