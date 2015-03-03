Spree::BaseHelper.module_eval do
    # Helper 
    def taxons_tree2(root_taxon, current_taxon, max_level = 1)
      return '' if max_level < 1 || root_taxon.children.empty?
        root_taxon.children.map do |taxon|
          link_to(taxon.name , seo_url(taxon)) + taxons_tree(taxon, current_taxon, max_level - 1)
        end.join("\n").html_safe
    end

    def link_to_cart(text = nil)
      text = text ? h(text) : Spree.t('cart')
      css_class = nil

      if simple_current_order.nil? or simple_current_order.item_count.zero?
        li = "<li class='no_border'><p>#{Spree.t(:recently_added_item)} #{simple_current_order.item_count}</p></li>"
        text = "
                #{li}
                <span </span> #{text}: (#{Spree.t('empty')})
               "
      else
        line_items = simple_current_order.line_items.last(2)
        li = "<li class='no_border'>
                <p>#{Spree.t(:added_item)}: #{simple_current_order.item_count} </p>
                <p>#{Spree.t(:recently_added_item)}</p>
              </li>"
        line_items.each do |line|
          product = line.variant.product
          url = spree.product_url(product)
          li = li+"<li> 
                    #{link_to small_image(product, itemprop: 'image'), url, itemprop: 'url', class: 'prev_cart'} 
                    <div class='cont_cart'>
                      <h4>#{product.name}</h4>
                      <div class='price'>#{Spree.t(:quantity)}: #{line.quantity}</div>
                    </div>
                    <div class='clear'></div>
                  </li>"
          end
        text = "
                #{li}
                <li class='no_border'>
                  #{link_to Spree.t(:cart), cart_path, class: 'view_cart'}
                  #{link_to Spree.t(:checkout), checkout_state_path(simple_current_order.checkout_steps.first), class: 'checkout'}
                </li>
               "
      end
      text.html_safe
    end
end