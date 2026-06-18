/**
 * @id STM_08_05_005_PASS_IF_WITHOUT_BLOCK
 * @expect compile-pass
 * @section 8.5
 * @design if/else 不带块语句（无 {}），只跟一条语句；不创建块级作用域
 * @note 正向用例：if/else 单语句无块写法
 */
function testIfWithoutBlock(): void {
  let x: int = 0

  // if 不带块，单语句
  if (true) x = 1
  if (false) x = 2

  // if-else 不带块，单语句
  if (true) x = 3
  else x = 4

  // 嵌套 if 不带块（dangling else 绑定到最近 if）
  if (true)
    if (false) x = 5
    else x = 6

  // 条件表达式为关系运算
  let a: int = 10
  let b: int = 20
  if (a < b) x = 7
  if (a == b) x = 8
  else x = 9
}
