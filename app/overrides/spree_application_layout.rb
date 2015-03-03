Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                 :name => "spree_application_layout",
                 :replace => "div.container",
                 :text => "                     
<div class='container_12'>
    <%= breadcrumbs(@taxon) %>
    <div id='sidebar' class='grid_3'>
    	<%= render partial: 'spree/shared/sidebar' if content_for? :sidebar %>
    </div>
      <%= flash_messages %>
      <%= yield %>

    <%= yield :templates %>
</div>                   
                 ")