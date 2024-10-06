class ApiConstanses {
  static const String baseUrl = 'http://192.168.10.164:8000/api/';
// auth
  static const String signUp = 'users/signUp';
  static const String login = 'users/login';
  static const String virifyCode = 'users/virifyCode';
  static const String forgetPassword = 'users/forgetPassword';
  static const String restPassword = 'users/restPassword';
  static const String me = 'users/user';
  static const String editMyAccount = 'users/editMyAccount';
  static const String editImage = 'users/editImage';

  // Home

  static const String home = 'home';
  static const String searchProduct = 'home/searchProduct';

  // Location

  static const String addLocation = 'locations/add';
  static const String myLocations = 'locations/my';
  static const String spicificLocation = 'locations/spicific';
  static const String deleteLocation = 'locations/delete';
  static const String changeMainLocation = 'locations/changeMainLocation';


  // categories
  static const String allCategories = 'categoriees/all';

  // products
  static const String categorieeProducts = 'products/getProductsByCategoriees';
  static const String newAmanProducts = 'products/newAmanProducts';
  static const String getSpicificProduct = 'products/getSpicificProduct';

  // Favorite
  static const String addFavorite = 'favorites/addFavorite';
  static const String deleteFavorite = 'favorites/deleteFavorite';
  static const String myFavorite = 'favorites';

  // problems
  static const String addProblem = 'problems/addProblem';
  static const String getFaqQusetions = 'problems/getFaqQusetions';

  // Cart
  // static const String addToCart = 'carts/addToCart';
  static const String myCart = 'carts/myCart'; 
  static const String addOneToCart = 'carts/addOneToCart';
  static const String deleteOneFromCart = 'carts/deleteOneFromCart'; 
  static const String cartDelivery = 'carts/cartDelivery';
  static const String cheekMyWallet = 'carts/cheekMyWallet';
  static const String cheekCartItemsQuantity = 'carts/cheekCartItemsQuantity';


  // Coupons
  static const String cheekCoupon = 'coupons/cheekCoupon'; 
  
  // Orders
  static const String addOrder = 'orders/createOrder';
  static const String myPreviousOrders = 'orders/myPreviousOrders';
  static const String myCurrentOrders = 'orders/myCurrentOrders';





}
