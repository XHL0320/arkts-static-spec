/**
 * @id EXP_07_15_016_RUNTIME_CTOR_THROWS
 * @expect runtime
 * @runtime-throws=Error
 * @section 7.15
 * @design 验证构造器抛出异常时 new 表达式异常完成
 * @note 运行时用例：构造器 throw 导致 new 表达式异常
 */
class A {
  constructor(v: int) {
    if (v < 0) {
      throw new Error("negative not allowed")
    }
  }
}

function main(): void {
  let a = new A(-1)
  console.log("unreachable")
}
