/**
 * @id CLS_09_09_017_RUNTIME_FIELD_INIT_ORDER
 * @expect runtime
 * @section 9.9.1
 * @design 字段初始化顺序 — 父类字段→父类ctor→子类字段→子类ctor
 * @note 运行时用例：验证继承链的字段初始化顺序
 */
let order: string = ""
class A { aField: int = 1; constructor() { order += "A" } }
class B extends A { bField: int = 2; constructor() { super(); order += "B" } }
class C extends B { cField: int = 3; constructor() { super(); order += "C" } }
function main(): void {
  let c: C = new C()
  if (order != "ABC") { throw new Error("Expected ABC, got " + order) }
  console.log("verified")
}
