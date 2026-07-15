/**
 * @id GEN_05_02_03_202_RUNTIME_METHOD_DEFAULT_INFER
 * @expect runtime
 * @section 5.2.3
 * @design 方法默认类型参数隐式推断
 * @note spec: a.foo(new X2) infers U=X2, a.bar() uses class type arg X1
 */
class A213<T> {
  foo<U = T>(p: U): U { return p }
}
function main(): void {
  let a213 = new A213<string>()
  let r1: string = a213.foo("hello")
  if (r1 != "hello") throw new Error('method default infer failed')
  console.log('method default inference runtime verified')
}