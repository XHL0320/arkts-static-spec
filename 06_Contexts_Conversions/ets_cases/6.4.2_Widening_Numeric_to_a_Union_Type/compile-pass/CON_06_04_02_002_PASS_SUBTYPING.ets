/**
 * @id CON_06_04_02_002_PASS_SUBTYPING
 * @expect compile-pass
 * @section 6.4.2
 * @design 子类型: int→byte|int (int已是联合成员，无需求 widening)
 * @note 正向用例：值类型已是联合成员，直接子类型赋值
 */
function testSubtyping(): void {
  let i: int = 2
  let u: byte | int = 512
  u = i
}
