/**
 * @id CLS_09_01_023_RUNTIME_ABSTRACT_CONSTRUCTOR_EXEC
 * @expect runtime
 * @section 9.1.1
 * @design 抽象类构造器在非抽象子类实例化时执行
 * @note 运行时用例：验证抽象类构造器逻辑
 */
abstract class AbsBase2 {
  val: int
  constructor(v: int) {
    this.val = v
  }
}
class Concrete2 extends AbsBase2 {
  constructor(v: int) {
    super(v)
  }
}

function main(): void {
  let c = new Concrete2(42)
  if (c.val != 42) {
    throw new Error("Concrete2.val should be 42")
  }
  console.log("Abstract constructor execution verified")
}

