/**
 * @id EXP_07_01_01_010_PASS_TERNARY_RIGHT_ASSOC
 * @expect compile-pass
 * @section 7.1.1
 * @design 三元条件 `? :` 右结合，`a ? b : c ? d : e` 等价 `a ? b : (c ? d : e)`
 * @note 正向用例：验证三元条件右结合性
 */
function testTernaryRightAssoc(): void {
  let a: int = 0
  let x: int = true ? 1 : false ? 2 : 3
  let y: int = false ? 10 : true ? 20 : 30
  let z: int = false ? 100 : false ? 200 : 300
}
