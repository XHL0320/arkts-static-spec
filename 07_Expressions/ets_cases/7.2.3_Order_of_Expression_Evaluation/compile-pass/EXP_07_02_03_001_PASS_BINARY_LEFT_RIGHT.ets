/**
 * @id EXP_07_02_03_001_PASS_BINARY_LEFT_RIGHT
 * @expect compile-pass
 * @section 7.2.3
 * @design 验证二元运算左到右求值编译通过：右操作数在左操作数完全求值后求值
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function track(s: string): int {
  return 1;
}

function main(): void {
  let x: int = track("left") + track("right");
  let y: int = track("a") * track("b");
  let z: int = track("c") - track("d");
  console.log("" + x + y + z);
}
