/**
 * @id EXP_07_35_03_006_PASS_VOID_RETURN_TYPE
 * @expect compile-pass
 * @section 7.35.3
 * @design 验证 void 返回类型 Lambda 表达式的类型 — void 是有效函数类型返回类型
 * @note 正向用例：void 返回类型 lambda 编译通过
 */
function logMsg(msg: string): void {
  console.log(msg)
}

function main(): void {
  // void 返回类型，空块体
  const f1: () => void = (): void => {}
  f1()

  // void 返回类型，void 调用表达式体
  const f2: (msg: string) => void = (msg: string): void => logMsg(msg)
  f2("test")

  // void 返回类型，显式空块
  const f3: () => void = (): void => {
    // empty block
  }
  f3()

  // void lambda 赋值给 void 函数类型
  const f4: () => void = (): void => {}
  let f5: () => void = f4
  f5()

  console.log("done")
}
