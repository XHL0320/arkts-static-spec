/**
 * @id CLS_09_10_019_RUNTIME_SUPER_METHOD_CALL
 * @expect runtime
 * @section 9.10
 * @design super.method()调用父类被重写的方法
 * @note 运行时用例：验证子类通过super调用父类方法
 */
class Base19 {
  value: int = 10
  getValue(): int { return this.value }
}
class Child19 extends Base19 {
  override getValue(): int { return super.getValue() + 1 }
}
function main(): void {
  let c: Child19 = new Child19()
  if (c.getValue() != 11) { throw new Error("super.getValue should return 10 + 1") }
  console.log("verified")
}
