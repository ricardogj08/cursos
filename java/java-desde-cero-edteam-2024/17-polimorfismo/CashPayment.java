class CashPayment implements PaymentMethod {
  private String currency;

  public CashPayment(String currency) {
    this.currency = currency;
  }

  @Override
  public void processPayment(double amount) {
    System.out.println("Procesando pago de efectivo " + currency);
  }

  @Override
  public void otherMethod() {
    System.out.println("Otro método de efectivo");
  }
}
