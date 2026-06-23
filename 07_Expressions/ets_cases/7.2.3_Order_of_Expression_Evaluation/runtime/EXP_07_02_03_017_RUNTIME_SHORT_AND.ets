/**
 * @id EXP_07_02_03_017_RUNTIME_SHORT_AND
 * @expect runtime
 * @section 7.2.3
 * @design 验证 && 短路求值：左为 false 时跳过右操作数
 * @note 运行时用例：验证该场景的运行时行为
 */
let trace: string = "";

function track(s: string): boolean {
  trace += s;
  return s == "true";
}

function main(): void {
  trace = "";
  let a: boolean = track("true") && track("R");
  if (trace != "trueR") {
    throw new Error("and true path fail: " + trace);
  }

  trace = "";
  let b: boolean = track("false") && track("skip");
  if (trace != "false") {
    throw new Error("and false short-circuit fail: " + trace);
  }

  trace = "";
  let c: boolean = track("false") && track("x") && track("y");
  if (trace != "false") {
    throw new Error("and chained short-circuit fail: " + trace);
  }

  console.log("verified");
}
