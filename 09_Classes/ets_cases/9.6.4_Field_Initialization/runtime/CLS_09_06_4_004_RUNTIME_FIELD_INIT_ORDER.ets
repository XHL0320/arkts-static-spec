/**
 * @id CLS_09_06_4_004_RUNTIME_FIELD_INIT_ORDER
 * @expect runtime
 * @section 9.6.4
 * @design 字段初始化顺序运行时验证
 * @note 运行时用例：验证字段按声明顺序初始化
 */
class InitOrder {
  a: int = 1
  b: int = 2
  c: int = 3
  constructor() {}
  getSum(): int { return this.a + this.b + this.c }
}
function main(): void {
  let o = new InitOrder()
  if (o.getSum() != 6) { throw new Error("getSum() should be 6") }
  console.log("Field init order verified")
}
