/**
 * @id LEX_02_06_021_PASS_FIELD_METHOD_NAME
 * @expect compile-pass
 * @section 2.6
 * @design 标识符作为字段名 + 方法名
 * @note 正向用例：字段/方法支持 Unicode
 */
class Holder021 {
  数据_v0: int = 0
  $internal: int = 0

  设置数据(v: int): void {
    this.数据_v0 = v
  }

  获取数据(): int {
    return this.数据_v0
  }
}

function testFieldMethodName(): void {
  let h: Holder021 = new Holder021()
  h.设置数据(42)
  let v: int = h.获取数据()
}
