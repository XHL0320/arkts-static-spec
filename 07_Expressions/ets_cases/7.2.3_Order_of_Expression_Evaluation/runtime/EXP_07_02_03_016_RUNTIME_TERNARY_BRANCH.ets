/**
 * @id EXP_07_02_03_016_RUNTIME_TERNARY_BRANCH
 * @expect runtime
 * @section 7.2.3
 * @design 验证三元条件优先求值：条件先求值，仅一个分支被求值
 * @note 运行时用例：验证该场景的运行时行为
 */
let trace: string = "";

function condTrue(s: string): boolean {
  trace += s;
  return true;
}

function condFalse(s: string): boolean {
  trace += s;
  return false;
}

function branch(s: string): int {
  trace += s;
  return 1;
}

function main(): void {
  trace = "";
  let a: int = condTrue("C") ? branch("T") : branch("F");
  if (trace != "CT") {
    throw new Error("ternary true branch fail: " + trace);
  }

  trace = "";
  let b: int = condFalse("c") ? branch("t") : branch("f");
  if (trace != "cf") {
    throw new Error("ternary false branch fail: " + trace);
  }

  console.log("verified");
}
