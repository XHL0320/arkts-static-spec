/**
 * @id STM_08_05_001_PASS_BASIC_IF
 * @expect compile-pass
 * @section 8.5
 * @design 基本 if 语句，条件表达式使用 boolean 字面量和 boolean 变量
 * @note 正向用例：if(true)、if(false)、if(boolean_var) 均应通过编译
 */
function testBasicIf(): void {
  let x: int = 0
  // boolean 字面量 true
  if (true) {
    x = 1
  }
  // boolean 字面量 false
  if (false) {
    x = 99
  }
  // boolean 变量
  let cond: boolean = true
  if (cond) {
    x = 2
  }
  // 逻辑非表达式
  if (!cond) {
    x = 3
  }
}
