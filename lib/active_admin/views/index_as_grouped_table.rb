require 'active_admin/views/index_as_table'

module ActiveAdmin
  module Views
    class IndexAsGroupedTable < IndexAsTable

      def build(page_presenter, collection)
# super tetap menampilkan double id, supernya juga harus dibongkar
# query dibalik presenter harus dibongkar        
        if group_by_attribute = page_presenter[:group_by_attribute]
          collection.group_by(&group_by_attribute).sort.each do |group_name, group_collection|
            h3 group_name
            super page_presenter, group_collection
          end
        end
      end

    end
  end
end
