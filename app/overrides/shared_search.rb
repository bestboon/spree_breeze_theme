Deface::Override.new(:virtual_path => "spree/shared/_search",
                 :name => "shared_search_remove_select",
                 :remove => "erb[loud]:contains('select_tag')")