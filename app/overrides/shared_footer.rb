Deface::Override.new(:virtual_path => "spree/shared/_footer",
                 :name => "shared_footer",
                 :replace => "#spree-footer",
                 :text => "
<div class='clear'></div>
<footer>
    <div class='f_info'>
      <div class='container_12'>
        <div class='grid_6'>
          <p class='copyright'><%= t(:powered_by) %> © <%= link_to 'bestBOON', 'http://bestboon.com' %></p>
        </div><!-- .grid_6 -->

        <div class='grid_6'>
          <div class='soc'>
            <a class='google' href='#'></a>
            <a class='twitter' href='#'></a>
            <a class='facebook' href='#'></a>
          </div><!-- .soc -->
        </div><!-- .grid_6 -->

        <div class='clear'></div>
      </div><!-- .container_12 -->
    </div><!-- .f_info -->
  </footer>
                 ")