class CreditCardPayment implements PaymentMethod {
  private String cardNumber;

  public CreditCardPayment(String cardNumber) {
    this.cardNumber = cardNumber;
  }

  @Override
  public void processPayment(double amount) {
    System.out.println("Procesando el pago de la tarjeta de crédito " + cardNumber);
  }

  @Override
  public void otherMethod() {
    System.out.println("Otro método de crédito");
  }
}
