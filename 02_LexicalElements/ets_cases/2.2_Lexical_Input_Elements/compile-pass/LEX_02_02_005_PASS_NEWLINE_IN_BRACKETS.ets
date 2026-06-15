/**
 * @id LEX_02_02_005_PASS_NEWLINE_IN_BRACKETS
 * @expect compile-pass
 * @section 2.2
 * @design 括号内、函数调用参数间允许换行 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testNewlineInBrackets(): void {
  let x: int = (
    1 +
    2 +
    3
  )
  let arr: int[] = [
    1,
    2,
    3
  ]
}
