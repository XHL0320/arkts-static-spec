/**
 * @id EXP2_17_14_001_PASS_SIMPLE_TRAILING
 * @expect compile-pass
 * @section 17.14
 * @design 函数仅有一个函数类型参数，使用 trailing lambda 语法调用
 * @note 正向用例：验证 trailing lambda 作为最后一个参数的语法糖编译通过
 */
function runCallback(callback: () => void): void {
  callback()
}

runCallback() { console.log("trailing lambda works") }
