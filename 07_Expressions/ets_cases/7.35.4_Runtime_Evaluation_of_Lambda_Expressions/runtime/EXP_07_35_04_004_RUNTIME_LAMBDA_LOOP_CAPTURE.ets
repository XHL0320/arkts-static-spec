/**
 * @id EXP_07_35_04_004_RUNTIME_LAMBDA_LOOP_CAPTURE
 * @expect runtime
 * @section 7.35.4
 * @design 循环中 Lambda 捕获变量语义

 * @note 运行时用例：实际执行验证循环中 Lambda 捕获
 */
function main(): void {
  let funcs: (() => int)[] = []
  for (let i: int = 0; i < 3; i++) {
    let capture: int = i
    funcs[i] = () => capture
  }
  if (funcs[0]() != 0) { throw new Error("assertion: funcs[0]() should be 0") }
  if (funcs[1]() != 1) { throw new Error("assertion: funcs[1]() should be 1") }
  if (funcs[2]() != 2) { throw new Error("assertion: funcs[2]() should be 2") }
  console.log("verified")
}
