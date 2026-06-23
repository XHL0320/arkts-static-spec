/**
 * @id CLS_09_09_005_RUNTIME_CONSTRUCTOR_EXEC_ORDER
 * @expect runtime
 * @section 9.9.1
 * @design 构造器执行顺序验证：父类字段→父类构造器→子类字段→子类构造器
 * @note 运行时用例：验证继承链构造顺序
 */
let execLog: string = ""

class GrandParent {
  gpField: string = "gp"
  constructor() { execLog = execLog + "G" }
}
class Parent extends GrandParent {
  pField: string = "p"
  constructor() { super(); execLog = execLog + "P" }
}
class Child extends Parent {
  cField: string = "c"
  constructor() { super(); execLog = execLog + "C" }
}

function main(): void {
  let c: Child = new Child()
  if (execLog != "GPC") { throw new Error("Expected GPC order, got " + execLog) }
  console.log("verified")
}
