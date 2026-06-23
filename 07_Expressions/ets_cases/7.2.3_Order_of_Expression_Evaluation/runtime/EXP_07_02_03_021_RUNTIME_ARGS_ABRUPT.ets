/**
 * @id EXP_07_02_03_021_RUNTIME_ARGS_ABRUPT
 * @expect runtime
 * @section 7.2.3
 * @design 验证参数异常完成：左侧参数异常完成则右侧参数不被求值
 * @note 运行时用例：验证该场景的运行时行为
 * @runtime-throws=ArithmeticError
 */
let trace: string = "";

function track(s: string): int {
  trace += s;
  return 1;
}

function errArg(s: string, v: int): int {
  trace += s;
  return 1 / v;
}

function test(a: int, b: int, c: int): void {
  trace += "OK";
}

function main(): void {
  trace = "";
  test(errArg("err", 0), track("mid"), track("right"));
  console.log("unreachable");
}
