Shopbeam Flash Widget Example
====================

Shopbeam Overview
-----

Shopbeam provides tools for advertisers and publishers to create and serve display advertisements which load product detail windows on-site. These on-publisher site product detail modals windows can be used to add products to a universal cart and purchase them without leaving the host/publisher website.

The Shopbeam Widget
-----

The Shopbeam 'widget' is the element that is embedded onto a hosting site's page or served over an ad network which the user can interact with to begin their on-site shopping experience. The Shopbeam widget can be either an html image made active with javascript or a flash swf. The instructions below are for creating and embedding a flash swf Shopbeam widget.

Usage
-----
Linking MovieClips to Shopbeam products
-----

In "YourDocumentClass" file instantiate the Shopbeam class with your API key. Once instantiated call the onClickGoToProduct function passing the MovieClip name an product ID as arguments to wire up a movieclip to the Shopbeam product lightbox:

```as
    import com.shopbeam.*;

    public class YourDocumentClass extends MovieClip {

        public function YourDocumentClass() { 
          var shopbeam:Shopbeam = new Shopbeam("YOUR-API-KEY", this);
          shopbeam.onClickGoToProduct("movieClip1", "product1-id"); /* movieClip1 is the name of a Movie Clip in your flash AD
                                                                       and product1-id is the ID of a Shopbeam product */
          shopbeam.onClickGoToProduct("movieClip2", "product2-id");

      }
  }
```

You can find the com.shopbeam Actionscript library in the example on this repo  [here](https://raw.githubusercontent.com/yaplas/yaplas.github.io/master/com/shopbeam/Shopbeam.as).

In order for MovieClips to link to ShopBeam products, ensure your MovieClips have instance names (for the example above: MovieClip1, MovieClip2). Once you have your MovieClip instance name you need a productId, to get that search  http://www.shopbeam.com/products for the product you'd like to link to and obtain the product ID for that product from the product detail modal on that page. Once you have both a MovieCLip instance name and a product ID you can call the Actionscript function `Shopbeam.onClickGoToProduct` passing first the MovieClip instance name and second the product ID as function argumentss. 

Note: To find Shopbeam product ID, you can open the product detail on http://www.shopbeam.com/products, click the Text Link tab, copy the code and paste into a text editor, then look for the product id: 

```
data-shopbeam-url="/v1/products?id=9184101 ...
```


On the hosting page just embed an object as following:

```html
  <script class="shopbeam-script" type="text/javascript" src="https://www.shopbeam.com/js/widget.loader.js" async="true"></script>
  <object type="application/x-shockwave-flash" data="swfname.swf"
    id="shopbeam-widget-swf-unbootstrapped-UUID"
    width="403" height="253">
    <param name="movie" value="swfname.swf"/>
    <param name="FlashVars" value="widgetUuid=UUID"/>
    <param name="allowscriptaccess" value="always"/>
  </object>

```
