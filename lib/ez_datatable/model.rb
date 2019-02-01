module EzDatatable
  module Model
    def self.included(klass)
      klass.include Rails.application.routes.url_helpers
      klass.scope :search, -> filters, operator = nil do
        conditions = []
        if filters
          config = self.datatable_config
          filters.each do |key, val|
            if config[:search]
              current_config = config[:search].select { |hash| hash[:attr] == key }.first

              # data_type
              if current_config && current_config[:data_type]
                if current_config[:data_type] == 'integer'
                  val = val.to_i
                else
                  val = val.to_s
                end
              end

              operator = current_config[:operator] ? current_config[:operator] : ''

              unless val.blank? || val == 0
                if operator == 'equal'
                  conditions << ["#{key} = '#{val}'"]
                elsif operator == 'start_between'
                  conditions << ["#{key} >= '#{val}'"]
                elsif operator == 'end_between'
                  conditions << ["#{key} <= '#{val}'"]
                elsif operator == 'between'
                  d_start = Date.strptime("#{val.split(' - ')[0]}", '%m/%d/%Y').to_formatted_s(:db)
                  d_end = Date.strptime("#{val.split(' - ')[1]}", '%m/%d/%Y').to_formatted_s(:db)
                  conditions << ["#{key} between '#{d_start}' AND '#{d_end}'"]
                else
                  conditions << ["#{key} LIKE '%#{val}%'"]
                end
              end
            end
          end
        end

        where(conditions.join(" AND "))
      end
    end
  end
end