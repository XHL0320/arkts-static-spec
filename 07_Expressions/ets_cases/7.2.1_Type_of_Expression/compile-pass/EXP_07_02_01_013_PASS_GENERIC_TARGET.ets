/**
 * @id EXP_07_02_01_013_PASS_GENERIC_TARGET
 * @expect compile-pass
 * @section 7.2.1
 * @design 泛型函数的类型参数从参数推断
 * @note 正向用例：验证泛型函数的 target type 推断
 */
function identity<T>(x: T): T {
  return x
}

function testGenericTarget(): void {
  let a: int = identity<int>(42)
  let b: string = identity("hello")
}
