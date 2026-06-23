/**
 * @id EXP_07_02_02_015_RUNTIME_NORMAL_COMPLETION
 * @expect runtime
 * @section 7.2.2
 * @design 验证正常完成场景的运行时行为：各类表达式在无错误条件下完成求值，断言结果正确
 * @note 运行时用例：验证该场景的运行时行为
 */
function main(): void {
  let a: int = 10 + 5;
  if (a != 15) {
    throw new Error("assertion failed: a=" + a);
  }

  let arr: FixedArray<int> = [1, 2, 3];
  let v: int = arr[1];
  if (v != 2) {
    throw new Error("assertion failed: arr[1]=" + v);
  }

  let x: int = 20 / 4;
  if (x != 5) {
    throw new Error("assertion failed: 20/4=" + x);
  }

  let y: int = 17 % 5;
  if (y != 2) {
    throw new Error("assertion failed: 17%5=" + y);
  }

  let s: string = "hi";
  let c: string = s[0];
  if (c != "h") {
    throw new Error("assertion failed: s[0]=" + c);
  }

  console.log("verified");
}
