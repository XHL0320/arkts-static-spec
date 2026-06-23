/**
 * @id EXP_07_02_03_023_RUNTIME_PAREN_OVERRIDE_ORDER
 * @expect runtime
 * @section 7.2.3
 * @design 验证括号覆盖优先级：括号改变求值顺序产生不同结果
 * @note 运行时用例：验证该场景的运行时行为
 */
let trace: string = "";

function track(s: string): int {
  trace += s;
  return 2;
}

function main(): void {
  trace = "";
  let a: int = track("L") + track("M") * track("R");
  // Without parens: L + (M * R) = 2 + 4 = 6
  if (a != 6) {
    throw new Error("precedence order fail: " + a);
  }

  trace = "";
  let b: int = (track("X") + track("Y")) * track("Z");
  // With parens: (X + Y) * Z = 4 * 2 = 8
  if (b != 8) {
    throw new Error("paren override fail: " + b);
  }

  // Verify trace order is always left-to-right regardless of precedence
  if (trace != "XYZ") {
    throw new Error("paren trace order fail: " + trace);
  }

  console.log("verified");
}
