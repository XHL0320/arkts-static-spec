/**
 * @id EXP_07_34_005_RUNTIME_INTERPOLATION_IMPLICIT
 * @expect runtime
 * @section 7.34
 * @design 隐式转 string 的嵌入表达式

 * @note 运行时用例：实际执行验证隐式转换嵌入
 */
function main(): void {
  let num: int = 42; let msg: string = `Value is ${num}`
  if (msg != "Value is 42") { throw new Error("assertion: interpolation with int") }
  console.log("verified")
}
