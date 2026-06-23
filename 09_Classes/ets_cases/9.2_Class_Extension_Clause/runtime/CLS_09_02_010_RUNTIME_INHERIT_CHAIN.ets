/**
 * @id CLS_09_02_010_RUNTIME_INHERIT_CHAIN
 * @expect runtime
 * @section 9.2
 * @design 继承链实例化并验证字段继承
 * @note 运行时用例：验证多级继承的实例化和字段访问
 */
class Base2 {
  baseField: int = 10
}
class Middle2 extends Base2 {
  midField: string = "mid"
}
class Leaf2 extends Middle2 {
  leafField: double = 3.14
  constructor() {
    super()
  }
}

function main(): void {
  let l = new Leaf2()
  if (l.baseField != 10) {
    throw new Error("baseField should be 10")
  }
  if (l.midField != "mid") {
    throw new Error("midField should be 'mid'")
  }
  if (l.leafField != 3.14) {
    throw new Error("leafField should be 3.14")
  }
  console.log("Inheritance chain verified")
}
