/**
 * @id ENM_11_007_PASS_QUALIFIED_ACCESS
 * @expect compile-pass
 * @section 11
 * @design 枚举成员必须加类型名限定
 * @note 正向用例：Color.Red
 */
enum Color7 { Red, Green, Blue, Default = Red }

function testQualifiedAccess(): void {
  let c: Color7 = Color7.Red
}