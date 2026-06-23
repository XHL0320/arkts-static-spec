/**
 * @id EXP2_17_01_01_005_PASS_BOUNDARY_VALUES
 * @expect compile-pass
 * @section 17.1.1
 * @design 边界值字面量：验证 U+0000 和 U+FFFF 边界值的 char 字面量
 * @note 正向用例：验证该特性编译通过的正确用法。U+0000 用 c'\\x00' 表示，U+FFFF 用 c'￿' (\\uFFFF) 表示
 */
function testBoundaryValuesLiteral(): void {
  let minChar: char = c'\x00'  // U+0000 via hex escape
  let maxChar: char = c'￿'  // U+FFFF via unicode escape
  console.log(minChar)
  console.log(maxChar)
}
