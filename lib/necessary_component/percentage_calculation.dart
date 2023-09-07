
class PercentageCalculation{

  static double calculate({required double total,required double subtotal}){

    double ans = (subtotal / total) / 100;

    return ans * 100;
  }
}