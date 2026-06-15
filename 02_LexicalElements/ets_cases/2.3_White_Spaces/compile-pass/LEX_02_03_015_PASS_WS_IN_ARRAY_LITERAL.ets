/**
 * @id LEX_02_03_015_PASS_WS_IN_ARRAY_LITERAL
 * @expect compile-pass
 * @section 2.3
 * @design 数组字面量元素间空白 * @note 正向用例：验证该特性编译通过的正确用法

 */
function testWsInArrayLiteral(): void {
  let a: int[] = [1, 2, 3]
  let b: int[] = [1,    2,    3]
  let c: int[] = [ 1 , 2 , 3 ]
}
