$(document).ready(function() {
  handleProcess = {

    init: function(){
      this.bindUIActions();
    },

    bindUIActions: function() {
      this.listProduct();
      this.drawerToggle();
      this.makeVendor();
      this.addToCart();
      this.handleCalculations();
      this.placeYourOrder();
    },


    listProduct: function() {
      $(document).on('click', '.product-categories', function(e){
        e.preventDefault();
        categoryId = $(this).data('category-id');
          $(this).toggleClass('checked');


        $.ajax({
          url: "/categories/fetch_products",
          data: { category_id: categoryId },
          success: function(result){
            $(".product-list").html('');
            $(".product-list").html(result.html);
          }
        });
      });
    },

    drawerToggle: function() {
      $(document).ready(function() {
        $drawerRight = $('.cart-drawer-right');
        $cart_list = $('.cart-btn, .close-btn');
        
        $cart_list.click(function() {
          $(this).toggleClass('active');
          $('.cart-drawer-push').toggleClass('cart-drawer-pushtoleft');
          $drawerRight.toggleClass('cart-drawer-open');
        });
      });
     },

    makeVendor: function() {
      $(document).on('click', '.make-vendor', function(e){
        e.preventDefault();
        userId = $(this).data('user-id');
        if(userId){
          $.ajax({
            method: 'post',
            url: "/admin/users/"+userId+"/make_vendor",
            data: { authenticity_token: $('[name="csrf-token"]')[0].content},
            success: function(result){
            }
          });
        }
      });
    },

    addToCart: function(){
      var count = 0;
      $(document).on('click', '.add-to-cart', function(e){
        e.preventDefault();
        productId = $(this).data('product-id');

        if(productId){
          $.ajax({
            method: 'post',
            url: "/cart_items/"+productId+"/add_product_to_cart",
            data: { authenticity_token: $('[name="csrf-token"]')[0].content},
            success: function(result){

              count++;
              
              setTimeout(function() {
                  $("a.cart > span").addClass("counter");
                  $("a.cart > span.counter").text(count);
              }, 400);
              
            }
          });
        }

      });
    },


    handleCalculations: function(){
      var self = this;
      $(document).on('input', '.qty', function(){
        var total = 0;

        item = $(this).parents('.cart-item');
        qty = parseFloat($(this).val());
        price = parseFloat(item.find('.price').data('value'));
        amount = parseFloat(qty * price).toFixed(2)

        
        if(amount){
          item.find('.item-total').val(amount);


          $('.item-total').each(function(){
            total += parseFloat($(this).data('item-value'));
          })
        }
      })
    },

    placeYourOrder: function(){
      $(document).on('click', '.place-your-order', function(e){
        e.preventDefault();
        form = $(this).parents('form');


        console.log(form.serialize())

        if(form){
          $.ajax({
            method: 'post',
            url: "/orders/place_order",
            data: form.serialize(),
            success: function(result){
              if(result.error){
              }else{
                setTimeout(function(){ window.location = '/'; }, 2000);
              }
            }
          })
        }

      })
    },
  }
  handleProcess.init();
})