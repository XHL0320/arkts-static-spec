/**
 * @id STM_08_11_025_FAIL_CONTINUE_LABEL_IN_LAMBDA
 * @expect compile-fail
 * @section 8.11
 * @design continue label 在 lambda 中使用应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testContinueLabelInLambdaFail(): void {
  myLoop: for (let i: int = 0; i < 5; i++) {
    const f: () => void = () => { continue myLoop }
  }
}
