/**
 * @id STM_08_02_028_RUNTIME_DISCARDED_CALL_RESULT
 * @expect runtime
 * @section 8.2
 * @design 丢弃函数调用返回值

 * @note 运行时用例：实际执行验证丢弃返回值
 */
function getValue(): int { return 42 }
function main(): void {
  getValue()  // return value discarded
  console.log("verified")
}
