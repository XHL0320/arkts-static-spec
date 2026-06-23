/**
 * @id EXP_07_02_03_025_RUNTIME_NULLISH_SHORT
 * @expect runtime
 * @section 7.2.3
 * @design 验证 nullish 合并短路行为：左操作数非 null/undefined 时右操作数不被求值
 * @note 运行时用例：验证该场景的运行时行为
 */
let trace: string = "";

function track(s: string): int {
  trace += s;
  return 42;
}

function main(): void {
  trace = "";
  let a: int | undefined = undefined;
  let b: int = a ?? track("R");
  if (trace != "R") {
    throw new Error("nullish undefined path fail: " + trace);
  }
  if (b != 42) {
    throw new Error("nullish undefined value fail: " + b);
  }

  trace = "";
  let x: int = 10;
  let y: int = x ?? track("skip");
  if (trace != "") {
    throw new Error("nullish non-null short-circuit fail: " + trace);
  }
  if (y != 10) {
    throw new Error("nullish non-null value fail: " + y);
  }

  console.log("verified");
}
