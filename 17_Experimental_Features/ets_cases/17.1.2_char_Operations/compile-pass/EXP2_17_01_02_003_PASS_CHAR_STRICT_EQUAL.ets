/**
 * @id EXP2_17_01_02_003_PASS_CHAR_STRICT_EQUAL
 * @expect compile-pass
 * @section 17.1.2
 * @design char 严格相等运算：验证 char === char 操作符
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testCharStrictEqual(): void {
  let c1: char = c'X'
  let c2: char = c'X'
  let strict_eq: boolean = c1 === c2
  console.log(strict_eq)
}
