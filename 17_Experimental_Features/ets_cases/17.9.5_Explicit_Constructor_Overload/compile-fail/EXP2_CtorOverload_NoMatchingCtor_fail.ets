/**
 * @id EXP2_17_09_05_009_FAIL_NO_MATCHING_CONSTRUCTOR
 * @expect compile-fail
 * @section 17.9.5
 * @design 调用 constructor overload 但无匹配签名 — 编译错误
 * @note 反向用例：参数类型不匹配任何构造函数
 */
class OnlyInt {
  private v: int
  constructor fromOne(a: int) { this.v = a }
  constructor fromTwo(a: int, b: int) { this.v = a + b }
  overload constructor { fromOne, fromTwo }
}

function main(): void {
  // boolean 不在任何构造函数签名中 — 应编译失败
  let obj: OnlyInt = new OnlyInt(true)
}
