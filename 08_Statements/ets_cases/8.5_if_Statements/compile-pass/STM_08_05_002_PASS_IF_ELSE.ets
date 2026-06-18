/**
 * @id STM_08_05_002_PASS_IF_ELSE
 * @expect compile-pass
 * @section 8.5
 * @design if-else 语句的两个分支均通过编译，boolean 条件驱动分支选择
 * @note 正向用例：if-else 基本形式，含 true/false 条件和 boolean 变量
 */
function testIfElse(): void {
  let x: int = 0
  // if-true 走 then 分支
  if (true) {
    x = 1
  } else {
    x = 2
  }
  // if-false 走 else 分支
  if (false) {
    x = 3
  } else {
    x = 4
  }
  // boolean 变量 true
  let cond: boolean = true
  if (cond) {
    x = 5
  } else {
    x = 6
  }
  // boolean 变量 false
  cond = false
  if (cond) {
    x = 7
  } else {
    x = 8
  }
}
