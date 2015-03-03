Deface::Override.new(:virtual_path => "spree/shared/_sidebar",
                 :name => "shared_sidebar",
                 :replace => "#sidebar",
                 :text => "                     
<aside id='categories_nav'>
  <h3><%= Spree.t(:taxonomies) %></h3>
  <%= yield :sidebar %>
</aside>
                 ")