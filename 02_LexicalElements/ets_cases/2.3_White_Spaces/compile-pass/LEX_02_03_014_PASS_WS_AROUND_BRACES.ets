/**
 * @id LEX_02_03_014_PASS_WS_AROUND_BRACES
 * @expect compile-pass
 * @section 2.3
 * @design 大括号周围的空白 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testWsAroundBraces(): void {
  if (true) { let x: int = 1 }
  if (true)    {    let y: int = 2    }
}
