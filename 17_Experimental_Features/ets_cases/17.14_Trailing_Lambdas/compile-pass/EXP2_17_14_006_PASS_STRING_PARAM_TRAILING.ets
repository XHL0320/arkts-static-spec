/**
 * @id EXP2_17_14_006_PASS_STRING_PARAM_TRAILING
 * @expect compile-pass
 * @section 17.14
 * @design 前置参数为 string 类型，最后一个参数为函数类型，使用 trailing lambda 语法调用
 * @note 正向用例：验证不同前置参数类型时 trailing lambda 仍正确编译
 */
function processMessage(msg: string, callback: () => void): void {
  console.log(msg)
  callback()
}

processMessage("start") { console.log("done") }
