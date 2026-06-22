/**
 * @id STM_08_06_024_FAIL_LABEL_CONTINUE_IN_LAMBDA
 * @expect compile-fail
 * @section 8.6
 * @design label continue 在 lambda 中使用应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testLabelContinueInLambdaFail(): void {
  testLabel: for (let i: int = 0; i < 5; i++) {
    const f1: () => void = () => { continue testLabel }
  }
  console.log("never")
}
