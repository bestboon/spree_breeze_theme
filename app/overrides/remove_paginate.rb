Deface::Override.new(:virtual_path => "spree/shared/_products",
                 :name => "remove_paginate",
                 :remove => "erb[loud]:contains('paginate paginated_products')")