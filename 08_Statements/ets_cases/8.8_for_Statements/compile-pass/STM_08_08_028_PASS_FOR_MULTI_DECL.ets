/**
 * @id STM_08_08_028_FAIL_FOR_MULTIPLE_DECL
 * @expect compile-pass
 * @section 8.8
 * @design for-init 中多个不同类型声明应产生编译错误
 * @note 正向用例：验证该场景受 Extended Conditional Expressions 影响编译通过（STM-D1）。
 */
function testForMultipleDeclFail(): void {
  for (let i: int = 0, j: string = "a"; i < 3; i++) { console.log("bad") }
}
