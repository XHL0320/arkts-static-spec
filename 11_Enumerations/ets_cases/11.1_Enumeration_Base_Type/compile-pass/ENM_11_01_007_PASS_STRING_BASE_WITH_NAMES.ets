/**
 * @id ENM_11_01_007_PASS_STRING_BASE_WITH_NAMES
 * @expect compile-pass
 * @section 11.1
 * @design string 基类可通过 name() 获取枚举名
 * @note 正向用例
 */
enum E7 { A = "x", B = "y", C = "z" }

function testStringBaseWithNames(): void {
  let c: string = E7.C
}