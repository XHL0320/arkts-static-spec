/*
 * @id SEM_15_12_200_PASS_generic_erasure_runtime
 * @expect compile-pass
 * @section 15.12
 * @design Generic type erasure compiles but may cause runtime ClassCastError
 * @note Spec lines 79-105: cast is performed against raw type A<>, not A<number>
 */

class A<T> {
  field: T

  constructor(value: T) {
    this.field = value
  }
}

function unsafe(p: Object): A<number> {
  return p as A<number>
}

function sem_15_12_pass_200_generic_erasure_runtime(): void {
  let a: A<number> = unsafe(new A<string>("a"))
}
