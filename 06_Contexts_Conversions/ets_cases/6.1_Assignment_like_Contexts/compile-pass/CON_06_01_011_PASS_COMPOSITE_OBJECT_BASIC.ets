/**
 * @id CON_06_01_011_PASS_COMPOSITE_OBJECT_BASIC
 * @expect compile-pass
 * @section 6.1
 * @design Composite literal context: 对象字面量字段值类型与字段类型完全匹配
 * @note 正向用例：验证该特性编译通过的正确用法
 */
interface Config {
  name: string
  count: int
  enabled: boolean
}

function testCompositeObjectBasic(): void {
  let cfg: Config = {
    name: "test",
    count: 10,
    enabled: true
  }
  let n: string = cfg.name
  let c: int = cfg.count
}
