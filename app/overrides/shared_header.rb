Deface::Override.new(:virtual_path => "spree/shared/_header",
                 :name => "shared_header",
                 :replace => "div#spree-header",
                 :text => "
<div class='container_12'>
  <div id='top'>
    <%= render :partial => 'spree/shared/main_nav_bar' if store_menu? %>
  </div>
  <header id='branding' data-hook>
    <div class='grid_3'>
      <figure id='logo' data-hook>
        <%= logo %>
      </figure>
    </div>
    <%= render :partial => 'spree/shared/nav_bar' %>
  </header>
</div>
<div class='clear'></div>
                          ")