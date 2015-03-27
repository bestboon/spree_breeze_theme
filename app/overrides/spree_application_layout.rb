Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                 :name => "spree_application_layout",
                 :replace => "body",
                 :text => "
<body id='<%= @body_id || 'default' %>' data-hook='body'>
  <%= render partial: '/spree/shared/google_analytics' %>
  <%= render partial: '/spree/shared/header' %>                 
  <section id='main'>
    <div class='container_12'>
        <%= breadcrumbs(@taxon) %>
        <div id='sidebar' class='grid_3'>
          <%= render partial: 'spree/shared/sidebar' if content_for? :sidebar %>
        </div>
          <%= flash_messages %>
          <%= yield %>

        <%= yield :templates %>
    </div>                   
  </section>
  <div class='clear'></div>
  <%= render :partial => 'spree/shared/footer' %>
</body>                
                 ")