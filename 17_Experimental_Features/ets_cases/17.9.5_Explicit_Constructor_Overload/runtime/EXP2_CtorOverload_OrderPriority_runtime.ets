/**
 * @id EXP2_CtorOverload_OrderPriority_runtime
 * @expect runtime
 * @section 17.9.5
 * @design 匿名构造函数隐式放在列表首位，声明顺序决定匹配优先级
 * @note 运行时用例：验证重载解析顺序优先级
 */
let orderLog2: string = ""

class OverlapTest2 {
  private v: string
  constructor fromInt(x: int) { orderLog2 += "int"; this.v = "int:" + x }
  constructor fromDbl(x: double) { orderLog2 += "dbl"; this.v = "double:" + x }
  overload constructor { fromInt, fromDbl }
  getValue(): string { return this.v }
}

function main(): void {
  // int 参数应当匹配 fromInt
  orderLog2 = ""
  let t1: OverlapTest2 = new OverlapTest2(10)
  if (orderLog2 != "int") {
    throw new Error("Expected fromInt constructor, got: " + orderLog2)
  }

  // double 参数应当匹配 fromDbl
  orderLog2 = ""
  let t2: OverlapTest2 = new OverlapTest2(3.14)
  if (orderLog2 != "dbl") {
    throw new Error("Expected fromDbl constructor, got: " + orderLog2)
  }

  console.log("Constructor order priority verified")
}
