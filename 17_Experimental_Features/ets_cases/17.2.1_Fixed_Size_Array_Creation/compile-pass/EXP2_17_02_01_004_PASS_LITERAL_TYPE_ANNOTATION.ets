/**
 * @id EXP2_17_02_01_004_PASS_LITERAL_TYPE_ANNOTATION
 * @expect compile-pass
 * @section 17.2.1
 * @design FixedArray 通过 Array Literal 创建（显式类型注解）：验证 let a: FixedArray<T> = [...] 正确编译
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testLiteralTypeAnnotation(): void {
  let a: FixedArray<number> = [1, 2, 3]
  let b: FixedArray<string> = ["hello", "world"]
  let c: FixedArray<int> = [10, 20, 30, 40]
  console.log(a[0])
  console.log(b[1])
  console.log(c.length)
}
