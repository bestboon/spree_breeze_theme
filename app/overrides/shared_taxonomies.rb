Deface::Override.new(:virtual_path => "spree/shared/_taxonomies",
                 :name => "shared_taxonomies",
                 :replace => "#taxonomies",
                 :text => "
<% max_level = Spree::Config[:max_level_in_taxons_menu] || 1 %>
<nav class='left_menu'>
  <ul>
    <% @taxonomies.each do |taxonomy| %>
      <% cache [I18n.locale, taxonomy, max_level] do %>
        <% taxonomy.root.children.map do |taxon| %>
          <li><%= link_to taxon.name, seo_url(taxon)  %></li>
        <% end %>
      <% end %>
    <% end %>
  </ul>
</nav>
                      ")