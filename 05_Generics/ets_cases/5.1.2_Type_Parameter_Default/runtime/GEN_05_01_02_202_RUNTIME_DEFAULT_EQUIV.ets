/**
 * @id GEN_05_01_02_202_RUNTIME_DEFAULT_EQUIV
 * @expect runtime
 * @section 5.1.2
 * @design 隐式默认参数与显式类型参数的运行时等价性
 * @note spec: foo(1) semantically equivalent to foo<number>(1)
 */
function foo202<T = number>(input: T): T { return input }
function main(): void {
  let r1: number = foo202(1)
  let r2: number = foo202<number>(1)
  if (r1 != 1.0) throw new Error('impl default failed')
  if (r2 != 1) throw new Error('explicit default failed')
  console.log('default equivalence verified')
}