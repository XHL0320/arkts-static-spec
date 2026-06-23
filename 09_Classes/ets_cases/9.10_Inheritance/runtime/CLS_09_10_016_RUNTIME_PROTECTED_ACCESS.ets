/**
 * @id CLS_09_10_016_RUNTIME_PROTECTED_ACCESS
 * @expect runtime
 * @section 9.10
 * @design protected成员在子类中可访问
 * @note 运行时用例：验证子类可访问父类protected字段
 */
class Base16 { protected data: int = 99 }
class Child16 extends Base16 {
  getData(): int { return this.data }
  setData(v: int): void { this.data = v }
}
function main(): void {
  let c: Child16 = new Child16()
  if (c.getData() != 99) { throw new Error("protected should be accessible") }
  c.setData(55)
  if (c.getData() != 55) { throw new Error("protected should be modifiable") }
  console.log("verified")
}
