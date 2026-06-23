/**
 * @id CLS_09_09_011_RUNTIME_FIELD_INIT_ORDER
 * @expect runtime
 * @section 9.9.1
 * @design 继承链中字段初始化与构造器执行顺序：父类字段→父类构造器→子类字段→子类构造器
 * @note 运行时用例：验证三级继承链中字段初始化器与构造器体的交错执行顺序
 */
let execLog011: string = ""

function mark011(tag: string): int {
  execLog011 = execLog011 + tag
  return 0
}

class GrandParent011 {
  gpField: int = mark011("Gf")
  constructor() { mark011("Gc") }
}
class Parent011 extends GrandParent011 {
  pField: int = mark011("Pf")
  constructor() { super(); mark011("Pc") }
}
class Child011 extends Parent011 {
  cField: int = mark011("Cf")
  constructor() { super(); mark011("Cc") }
}

function main(): void {
  let c: Child011 = new Child011()
  if (execLog011 != "GfGcPfPcCfCc") {
    throw new Error("Expected GfGcPfPcCfCc order, got " + execLog011)
  }
  console.log("verified")
}
