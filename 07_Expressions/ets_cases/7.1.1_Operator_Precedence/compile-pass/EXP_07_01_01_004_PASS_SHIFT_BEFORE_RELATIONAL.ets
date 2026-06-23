/**
 * @id EXP_07_01_01_004_PASS_SHIFT_BEFORE_RELATIONAL
 * @expect compile-pass
 * @section 7.1.1
 * @design 移位 `<<` `>>` 优先级高于关系 `<` `>` `<=` `>=`
 * @note 正向用例：验证移位优先于关系比较
 */
function testShiftBeforeRelational(): void {
  let a: boolean = 4 << 2 > 10
  let b: boolean = 32 >> 3 < 4
  let c: boolean = 8 >>> 1 >= 3
  let d: boolean = 1 << 3 <= 8
}
