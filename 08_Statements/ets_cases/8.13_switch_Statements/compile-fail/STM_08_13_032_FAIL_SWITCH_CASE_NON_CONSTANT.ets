/**
 * @id STM_08_13_032_FAIL_SWITCH_CASE_NON_CONSTANT
 * @expect compile-fail
 * @section 8.13
 * @design switch case 使用非字面量非常量表达式
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testSwitchCaseNonConstantFail(): void {
  let x: int = 5; let y: int = 3
  switch (x) { case y: { console.log("bad") } default: {} }
}
