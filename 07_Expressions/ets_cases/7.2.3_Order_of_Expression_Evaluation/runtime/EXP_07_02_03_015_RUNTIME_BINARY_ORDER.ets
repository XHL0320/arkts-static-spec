/**
 * @id EXP_07_02_03_015_RUNTIME_BINARY_ORDER
 * @expect runtime
 * @section 7.2.3
 * @design 验证二元加法左到右求值顺序：全局 trace 字符串验证求值顺序为 LR
 * @note 运行时用例：验证该场景的运行时行为
 */
let trace: string = "";

function track(s: string): int {
  trace += s;
  return 1;
}

function main(): void {
  trace = "";
  let x: int = track("L") + track("R");
  if (trace != "LR") {
    throw new Error("binary order fail: " + trace);
  }

  trace = "";
  let y: int = track("A") - track("B");
  if (trace != "AB") {
    throw new Error("binary sub order fail: " + trace);
  }

  trace = "";
  let z: int = track("X") * track("Y");
  if (trace != "XY") {
    throw new Error("binary mul order fail: " + trace);
  }

  console.log("verified");
}
