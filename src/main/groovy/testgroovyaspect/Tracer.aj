public aspect Tracer {
  before(): call(* *(..)) && !within(Tracer) {
    System.out.println("Entering "+thisJoinPoint);
  }}