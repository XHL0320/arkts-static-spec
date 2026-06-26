/**
 * @id ENM_11_011_PASS_INIT_OMIT_QUALIFICATION
 * @expect compile-pass
 * @section 11
 * @design 枚举成员初始化时可省略类型名限定
 * @note 正向用例：spec 原例 Default = Red
 */
enum Color11 { Red, Green, Blue, Default = Red }

function testOmitQualification(): void {
  let c: Color11 = Color11.Default
}
