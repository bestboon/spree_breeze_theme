Deface::Override.new(:virtual_path => "spree/shared/_taxonomies",
                 :name => "shared_taxonomies",
                 :replace => "#taxonomies",
                 :text => "
<% max_level = Spree::Config[:max_level_in_taxons_menu] || 1 %>
<nav id='tree' class='left_menu'>
  
</nav>
                      ")