/**
 * @id LEX_02_06_022_PASS_ENUM_NAME_MEMBERS
 * @expect compile-pass
 * @section 2.6
 * @design 标识符作为枚举名和枚举成员名
 * @note 正向用例：枚举支持 Unicode 标识符
 */
enum 颜色022 {
  红色,
  绿色,
  蓝色,
  $special,
  _internal
}

function testEnumNameMembers(): void {
  let c: 颜色022 = 颜色022.红色
}
