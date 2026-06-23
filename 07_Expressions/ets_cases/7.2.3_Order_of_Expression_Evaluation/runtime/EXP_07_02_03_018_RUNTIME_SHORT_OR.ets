/**
 * @id EXP_07_02_03_018_RUNTIME_SHORT_OR
 * @expect runtime
 * @section 7.2.3
 * @design 验证 || 短路求值：左为 true 时跳过右操作数
 * @note 运行时用例：验证该场景的运行时行为
 */
let trace: string = "";

function track(s: string): boolean {
  trace += s;
  return s == "true";
}

function main(): void {
  trace = "";
  let a: boolean = track("false") || track("R");
  if (trace != "falseR") {
    throw new Error("or false path fail: " + trace);
  }

  trace = "";
  let b: boolean = track("true") || track("skip");
  if (trace != "true") {
    throw new Error("or true short-circuit fail: " + trace);
  }

  trace = "";
  let c: boolean = track("true") || track("x") || track("y");
  if (trace != "true") {
    throw new Error("or chained short-circuit fail: " + trace);
  }

  console.log("verified");
}
