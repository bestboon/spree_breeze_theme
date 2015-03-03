Deface::Override.new(:virtual_path => "spree/products/show",
                 :name => "product_view_theme",
                 :replace => "[data-hook='product_show']",
                 :text => '
<div class="clear"></div>
<section id="main">
  <div class="container_12">
     <div id="content" class="grid_9">
        <h1 class="page_title"><%= @product.name %></h1>

      <div class="product_page">
          <div class="grid_4 img_slid" id="products">
              <img class="sale" src="images/sale.png" alt="Sale"/>
              <div class="preview slides_container">
                  <div class="prev_bg">
                      <a class="jqzoom" rel="gal1" href="<%= @product.images[0].attachment.url(:large)%>">
                          <img src="<%= @product.images[0].attachment.url(:original)%>"  style="width: 100%" title="" alt=""/>
                      </a>
                  </div>
              </div><!-- .prev -->

              <ul class="pagination clearfix" id="thumblist">
                <% @product.images.each do |i| %>                                
                  <li>
                    <a href="javascript:void(0);" rel="{gallery: \'gal1\', smallimage: \'<%= i.attachment.url(:original) %>\',largeimage: \'<%= i.attachment.url(:original) %>\'}" ><img src="<%= i.attachment.url(:original) %>" alt=""></a>
                  </li>
                <% end %>
              </ul>

              <div class="next_prev">
                  <a id="img_prev" class="arows" href="#"><span>Prev</span></a>
                  <a id="img_next" class="arows" href="#"><span>Next</span></a>
              </div><!-- . -->
          </div><!-- .grid_4 -->

          <div class="grid_5">
              <div class="entry_content">
                  <p><%= @product.description %></p>
                  <div class="ava_price">
                      <div class="availability_sku">
                          <div class="sku">
                              <%= Spree.t(:sku ) %>: <span><%= @product.sku %></span>
                          </div>
                      </div><!-- .availability_sku -->

                      <div class="price">
                          <div class="price_new"></div>
                          <div class="price_old"></div>
                      </div><!-- .price -->
                  </div><!-- .ava_price -->

                  <div class="block_cart">
                      <div class="cart">
                          <a href="#" class="bay">Add to Cart</a>
                          <input type="text" name="" class="number" value="1" />
                          <span><%= Spree.t(:quantity) %> :</span>
                      </div>
                      <div class="clear"></div>
                  </div><!-- .block_cart -->
              </div><!-- .entry_content -->

          </div><!-- .grid_5 -->

          <div class="clear"></div>

          <div class="grid_9" >
              <div id="wrapper_tab" class="tab1">
                  <a href="#" class="tab1 tab_link"><%= Spree.t("properties")%></a>

                  <div class="clear"></div>

                  <div class="tab1 tab_body">
                    <div class="clear"></div>
                      <table>
                          <% @product_properties.each do |product_property| %>
                            <tr>
                              <td class="bg"><strong><%= product_property.property.presentation %></strong></td>
                              <td class="bg"><%= product_property.value %></td>
                            </tr>
                          <% end %>
                      </table>
                  <div class="clear"></div>
                  </div><!-- .tab1 .tab_body -->
                  <div class="clear"></div>
              </div>​<!-- #wrapper_tab -->
              <div class="clear"></div>
          </div><!-- .grid_9 -->

          <div class="clear"></div>

          <div class="related">
              <div class="c_header">
                  <div class="grid_7">
                      <h2>Related Products</h2>
                  </div><!-- .grid_7 -->

                  <div class="grid_2">
                      <a id="next_c1" class="next arows" href="#"><span>Next</span></a>
                      <a id="prev_c1" class="prev arows" href="#"><span>Prev</span></a>
                  </div><!-- .grid_2 -->
              </div><!-- .c_header -->

              <div class="list_carousel">
                <%= render :partial => \'spree/shared/products\', :locals => { :products => @products.where(deleted_at: nil).limit(5), :taxon => @taxon } %>
              </div><!-- .list_carousel -->
          </div><!-- .carousel -->
      </div><!-- .product_page -->
      <div class="clear"></div>

     </div><!-- #content -->
     
     <div id="sidebar" class="grid_3">
        <aside id="categories_nav">
           <h3><%= Spree.t(:taxonomies) %></h3>
              <% @taxonomies = Spree::Taxonomy.all %>
              <%= render :partial => "spree/shared/taxonomies"%>
           </nav><!-- .left_menu -->
        </aside><!-- #categories_nav -->

     </div><!-- .sidebar -->

    <div class="clear"></div>

  </div><!-- .container_12 -->
</section><!-- #main -->
                 ')
