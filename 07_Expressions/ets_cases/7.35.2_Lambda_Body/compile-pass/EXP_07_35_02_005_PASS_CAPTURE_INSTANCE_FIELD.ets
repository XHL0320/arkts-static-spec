/**
 * @id EXP_07_35_02_005_PASS_CAPTURE_INSTANCE_FIELD
 * @expect compile-pass
 * @section 7.35.2
 * @design 验证 Lambda 体捕获外围类型的实例成员（即隐式捕获 this）。实例字段在 lambda 体中使用时 this 被捕获
 * @note 正向用例：实例方法中的 lambda 可以访问 this 的字段（隐式捕获 this）
 */
class LambdaBox {
  value: int = 42
  label: string = "lambda"

  getValueLambda(): () => int {
    return (): int => {
      return this.value
    }
  }

  getLabelLambda(): () => string {
    return (): string => {
      return this.label
    }
  }

  getCombinedLambda(): () => string {
    return (): string => {
      return this.label + ": " + this.value
    }
  }
}

function main(): void {
  let b: LambdaBox = new LambdaBox()
  let f1: () => int = b.getValueLambda()
  let f2: () => string = b.getLabelLambda()
  let f3: () => string = b.getCombinedLambda()

  let r1: int = f1()
  let r2: string = f2()
  let r3: string = f3()

  if (r1 != 42) { throw new Error("FAIL: f1()") }
  if (r2 != "lambda") { throw new Error("FAIL: f2()") }
  if (r3 != "lambda: 42") { throw new Error("FAIL: f3()") }
  console.log("verified")
}
