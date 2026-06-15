/**
 * @id LEX_02_01_009_PASS_CHAR_EQUALITY
 * @expect compile-pass
 * @section 2.1
 * @design char等值比较: ==, ===, !=, !== * @note 正向用例：验证该特性编译通过的正确用法

 */
function testCharEquality(): void {
  let a: char = c'A'
  let b: char = c'A'
  let eq: boolean = a == b
  let seq: boolean = a === b
  let neq: boolean = a != b
  let sneq: boolean = a !== b
}
