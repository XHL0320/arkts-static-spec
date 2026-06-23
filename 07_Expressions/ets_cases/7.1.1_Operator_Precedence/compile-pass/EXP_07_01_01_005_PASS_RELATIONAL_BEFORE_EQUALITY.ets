/**
 * @id EXP_07_01_01_005_PASS_RELATIONAL_BEFORE_EQUALITY
 * @expect compile-pass
 * @section 7.1.1
 * @design 关系 `<` `>` `<=` `>=` 优先级高于相等 `==` `!=`
 * @note 正向用例：验证关系优先于相等
 */
function testRelationalBeforeEquality(): void {
  let a: boolean = 3 < 5 == true
  let b: boolean = 10 > 20 != false
  let c: boolean = 5 <= 5 == (3 < 4)
  let d: boolean = 6 >= 7 != true
}
