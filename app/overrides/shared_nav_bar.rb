Deface::Override.new(:virtual_path => "spree/shared/_nav_bar",
                 :name => "shared_nav_bar",
                 :replace => "nav#top-nav-bar",
                 :text => "
      <div class='grid_3'>
        <%= render :partial => 'spree/shared/search' %>
      </div><!-- .grid_6 -->

      <div class='grid_6'>
        <ul id='cart_nav'>
          <% if spree_current_user %>
            <li>
              <%= link_to  '/cart', class: 'cart_li' do%>
                 <%= Spree.t(:cart) %>
              <% end %>
              <ul id='link-to-cart' class='cart_cont'>
              </ul>
            </li>
            <script>Spree.fetch_cart()</script>
          <% end %>
        </ul>
        <nav class='private'>
          <ul>
            <li><%= spree_current_user ? current_page?(account_path) ? link_to(Spree.t(:home), root_path) : link_to(Spree.t(:my_account), account_path) : link_to(Spree.t(:login), login_path) %> </li>
            <li class='separator'>|</li>
            <li><%= spree_current_user ? link_to(Spree.t(:logout), logout_path) : link_to(Spree.t(:signup), signup_path) %> </li>
            <li class='separator'>|</li>
          </ul>
        </nav><!-- .private -->
      </div><!-- .grid_3 -->
                          ")