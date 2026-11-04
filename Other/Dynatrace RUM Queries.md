#### Checkout journey
SELECT FUNNEL( 
  useraction.name = "CartPage" AS "Cart Page",
  useraction.name = "loading of page /uk/en/cart" AS "Cart",
  useraction.name = "loading of page /uk/en/login/checkout" AS "Checkout Login",
  useraction.name = "loading of page /uk/en/checkout" AS "Checkout",
  useraction.name = "loading of page /uk/en/checkout/multi" AS "Multi",
  useraction.name = "loading of page /uk/en/checkout/multi/delivery-method/checkoutOrderDetails" AS "Check Details",
  useraction.name = "loading of page /uk/en/checkout/multi/delivery-method/choose" AS "Delivery",
  useraction.name = "loading of page /uk/en/checkout/multi/payments/choose-payment-method" AS "Payment",
  useraction.name = "loading of page /uk/en/checkout/orderconfirmation/<masked>" AS "Order Confirmation"
)
FROM usersession
WHERE useraction.application = "TKMaxxUK"

#### Browsing Journey
SELECT FUNNEL(
  useraction.name = "loading of page /uk/en/search" AS "Search",
  useraction.name LIKE "loading of page */c/*" AS "PLP",
  useraction.name LIKE "loading of page */p/*" AS "PDP",
  useraction.name = "loading of page /uk/en/cart" AS "Cart"
)
FROM usersession
WHERE useraction.application = "TKMaxxUK"

#### UK - Registered - Cart to Order Confirmation
SELECT FUNNEL( 
  useraction.name = "loading of page /uk/en/cart" AS "Cart",
  useraction.name = "loading of page /uk/en/login/checkout" AS "Checkout Login",
  useraction.name = "loading of page /uk/en/checkout/multi/delivery-method/choose" AS "Delivery",
  useraction.name = "loading of page /uk/en/checkout/multi/payments/choose-payment-method" AS "Payment",
  useraction.name = "loading of page /uk/en/checkout/orderconfirmation/<masked>" AS "Order Confirmation"
)
FROM usersession
WHERE useraction.application = "TKMaxxUK"

#### UK - Search to Purchase
SELECT FUNNEL(
useraction.name = "loading of page /uk/en/search" AS "Search",
useraction.name = "loading of page /uk/en/cart" AS "Cart",
useraction.name = "loading of page /uk/en/checkout/orderconfirmation/<masked>" AS "Order Confirmation"
)
FROM usersession
WHERE useraction.application = "TKMaxxUK"

#### UK - Guest - Cart to Order Confirmation
SELECT FUNNEL( 
  useraction.name = "loading of page /uk/en/cart" AS "Cart",
  useraction.name = "loading of page /uk/en/login/checkout/guest" AS "Guest Checkout Login",
  useraction.name = "loading of page /uk/en/checkout/multi/delivery-method/choose" AS "Delivery",
  useraction.name = "loading of page /uk/en/checkout/multi/payments/choose-payment-method" AS "Payment",
  useraction.name = "loading of page /uk/en/checkout/orderconfirmation/<masked>" AS "Order Confirmation"
)
FROM usersession
WHERE useraction.application = "TKMaxxUK"

#### Browsing Journey
SELECT FUNNEL(
  useraction.name = "loading of page /uk/en/search" AS "Search",
  useraction.name LIKE "loading of page */c/*" AS "PLP",
  useraction.name LIKE "loading of page */p/*" AS "PDP",
)
FROM usersession
WHERE useraction.application = "TKMaxxUK"

#### Working
useraction.name = "loading of page /uk/en/search"
useraction.name = "loading of page /uk/en/cart"
useraction.name = "loading of page /uk/en/checkout/multi/delivery-method/choose"
useraction.name = "loading of page /uk/en/checkout/multi/payments/choose-payment-method"
useraction.name = "loading of page /uk/en/checkout/orderconfirmation/<masked>"
useraction.name = "loading of page/uk/en/login/checkout/guest"
useraction.name = "loading of page/uk/en/login/pw/request"
useraction.name = "loading of page/uk/en/login/checkout"
useraction.name = "loading of page/uk/en/login"
useraction.name = "loading of page/uk/en/checkout/multi/delivery-method/choose"
useraction.name = "loading of page/uk/en/checkout/orderConfirmation/<masked>"
useraction.name = "loading of page /uk/en/checkout/multi/payments/choose-payment-method"
useraction.name LIKE "/uk/en/checkout/address/billing"
useraction.name LIKE "/uk/en/checkout/multi/payments/choose-payment-method/place-order-giftcard-only"
useraction.name LIKE "/uk/en/cart/add"
useraction.name LIKE "/uk/en/register" AS "Register"


#### Login
/uk/en/login/checkout/guest
/uk/en/login/pw/request
/uk/en/login/checkout
/uk/en/login
/uk/en/register
/uk/en/my-account

#### Cart / Checkout
/uk/en/cart
/uk/en/cart/add
/uk/en/checkout/multi/delivery-method/choose
/uk/en/checkout/multi/payments/choose-payment-method
/uk/en/checkout/orderconfirmation/<masked>
/uk/en/checkout/orderConfirmation/<masked>
/uk/en/checkout/address/billing
/uk/en/checkout/multi/payments/choose-payment-method/place-order-giftcard-only

#### Search
/uk/en/search