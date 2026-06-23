/**
 * @id EXP_07_15_013_RUNTIME_BASIC_NEW
 * @expect runtime
 * @section 7.15
 * @design 验证 new A(42) 运行时构造器正确初始化字段值
 * @note 运行时用例：带参数构造器初始化验证
 */
class A {
  val: int
  constructor(v: int) {
    this.val = v
  }
}

function main(): void {
  let a = new A(42)
  if (a.val != 42) {
    throw new Error("assertion failed: expected 42, got " + a.val)
  }
  console.log("verified")
}
