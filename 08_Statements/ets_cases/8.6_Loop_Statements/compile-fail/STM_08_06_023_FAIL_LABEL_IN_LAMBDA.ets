/**
 * @id STM_08_06_023_FAIL_LABEL_IN_LAMBDA
 * @expect compile-fail
 * @section 8.6
 * @design label 在 lambda 表达式中使用应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testLabelInLambdaFail(): void {
  testLabel: for (let i: int = 0; i < 5; i++) {
    const f1: () => void = () => { break testLabel }
  }
  console.log("never")
}
