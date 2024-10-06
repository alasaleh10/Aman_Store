String orderStatus(int status) {
  switch (status) {
    case 0:
      return 'جاري معالجة الطلب';
    case 1:
      return 'جاري تحضير الطلب';
    case 2:
      return 'تم تجهيز الطلب';
    case 3:
      return 'جاري توصيل الطلب';
    case 4:
      return 'تم التسليم السريع للطلب ';
    case 5:
      return 'تم تسليم الطلب';

    default:
      return 'تم الغاء طلبك';
  }
}
