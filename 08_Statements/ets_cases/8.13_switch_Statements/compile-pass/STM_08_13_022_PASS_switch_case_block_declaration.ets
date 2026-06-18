/**
 * @id STM_08_13_022_PASS_switch_case_block_declaration
 * @expect compile-pass
 * @section 8.13
 * @design switch case 块内 let 声明 — 各 case 块创建独立块作用域
 * @note 正向用例：不同 case 块可声明同名变量
 */
function testSwitchCaseBlock(): void {
  let result: int = 0
  switch (1) {
    case 1: { let x: int = 10; result = x; break }
    case 2: { let x: int = 20; result = x; break }
    default: { let x: int = 30; result = x; break }
  }
}
