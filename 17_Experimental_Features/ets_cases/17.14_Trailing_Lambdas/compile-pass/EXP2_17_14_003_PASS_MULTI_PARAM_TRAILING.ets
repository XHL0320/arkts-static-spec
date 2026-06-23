/**
 * @id EXP2_17_14_003_PASS_MULTI_PARAM_TRAILING
 * @expect compile-pass
 * @section 17.14
 * @design 多个普通参数在前，最后一个参数为函数类型，使用 trailing lambda 语法调用
 * @note 正向用例：验证有前置参数时 trailing lambda 仍正确解析
 */
function processWithPrefix(prefix: string, count: int, callback: () => void): void {
  console.log(prefix + count)
  callback()
}

processWithPrefix("count=", 1) { console.log("trailing with prefix") }
