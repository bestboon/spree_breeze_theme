Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar",
                 :name => "main_nav_bar",
                 :replace => "nav.col-md-12",
                 :text => "
<div class='grid_3 '>
  <div class='mail_top'>
    <span><%= Spree::Config.mails_from %></span>
  </div><!-- .phone_top -->
</div><!-- .grid_3 -->

<div class='grid_6'>
  <div class='welcome'>
    <% if spree_current_user %>
      <%= Spree.t(:welcome_user, user: spree_current_user.email) %>
    <% else %>
      <%= Spree.t(:welcome_visitor) %> <%= link_to Spree.t(:login), login_path %> / <%= link_to Spree.t(:create_a_new_account), signup_path  %>.
    <% end %>
  </div><!-- .welcome -->
</div><!-- .grid_6 -->

<div class='grid_3'>
  <div class='lang'>
    <ul>
      <% supported_locales_options.each do |locale| %>
        <li class=<%='curent' if locale[1] == I18n.locale%> ><a href=<%= spree.set_locale_path(locale: locale[1]) %>  ><%= locale[1] %></a></li>
      <% end %>
    </ul>
  </div><!-- .lang -->
</div><!-- .grid_3 -->
                          ")