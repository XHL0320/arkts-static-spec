/**
 * @id EXP_07_02_01_005_PASS_NON_STANDALONE_ANNOTATION
 * @expect compile-pass
 * @section 7.2.1
 * @design non-standalone 显式类型注解，`let a: int = 42`，目标类型为 int
 * @note 正向用例：验证显式类型注解提供 target type
 */
function testNonStandaloneAnnotation(): void {
  let a: int = 42
  let b: string = "hello"
  let c: boolean = true
  let d: double = 3.14
}
