/**
 * @id EXP_07_02_05_007_RUNTIME_CLASS_INSTANCE_ARGS
 * @expect runtime
 * @section 7.2.5
 * @design 类实例创建表达式（new）的参数从左到右求值顺序：全局 trace 记录构造函数参数求值顺序
 * @note 运行时用例：验证 Class Instance Creation 的参数按 AB 顺序求值
 */
let trace: string = ""

function track(label: string): int {
  trace = trace + label
  return 1
}

class Pair {
  a: int
  b: int

  constructor(a: int, b: int) {
    if (trace != "AB") {
      throw new Error("class instance args order fail: " + trace)
    }
    this.a = a
    this.b = b
  }
}

function main(): void {
  let p: Pair = new Pair(track("A"), track("B"))
  if (p.a + p.b != 2) {
    throw new Error("class instance args value fail")
  }
  console.log("verified")
}
