/**
 * @id CON_06_04_004_PASS_WIDENING_TO_UNION
 * @expect compile-pass
 * @section 6.4
 * @design Widening Numeric to Union Type: int→(int|long), int→(int|double)
 * @note 正向用例：验证数值 widening 到联合类型的隐式转换
 */
function testWideningToUnion(): void {
  let a: int = 10
  let b: int | long = a

  let c: int = 5
  let d: int | double = c

  let e: int = 1
  let f: int | long | double = e
}
