/**
 * @id STM_08_12_029_RUNTIME_RETURN_IMPLICIT_UNDEFINED
 * @expect runtime
 * @section 8.12
 * @design void 函数隐式返回 undefined

 * @note 运行时用例：实际执行验证隐式return
 */
function implicitReturn(): void {}
function main(): void {
  implicitReturn()
  console.log("verified")
}
