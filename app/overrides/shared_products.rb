Deface::Override.new(:virtual_path => "spree/shared/_products",
                 :name => "shared_products",
                 :replace => "div#products",
                 :text => "
<% products.each do |product| %>
  <% url = spree.product_url(product, taxon_id: @taxon.try(:id)) %> 
  
  <% if li %> <li style='list-style-type: none;'> <% end %>
  <div class='grid_3 product'>
    <% cache(@taxon.present? ? [I18n.locale, current_currency, @taxon, product] : [I18n.locale, current_currency, product]) do %>
      <img class='sale' src='/assets/spree/images/new.png' alt='New'/>
      <div class='prev'>
         <%= link_to small_image(product, itemprop: 'image'), url, itemprop: 'url' %>
      </div><!-- .prev -->
      <h3 class='title'><%= link_to truncate(product.name, length: 50), url, class: 'info', itemprop: 'name', title: product.name %></h3>
      <div class='cart'>
         <div class='price'>
            <div class='vert'>
               <div class='price_new'>$550.00</div>
               <div class='price_old'>$725.00</div>
            </div>
         </div>
         <!--<a href='#' class='obn'></a>
         <a href='#' class='like'></a>-->
         <a href='#' class='bay'></a>
         <%= link_to '', url, class: 'obn' %>
      </div><!-- .cart -->
    <% end %>
  </div><!-- .grid_3 -->
  <% if li%></li><%end%>
<% end %>                                 
                          ")