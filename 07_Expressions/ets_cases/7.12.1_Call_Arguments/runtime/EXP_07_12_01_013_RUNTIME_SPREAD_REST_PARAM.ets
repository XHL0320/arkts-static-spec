/**
 * @id EXP_07_12_01_013_RUNTIME_SPREAD_REST_PARAM
 * @expect runtime
 * @section 7.12.1
 * @design 验证 spread expression 在 rest parameter 中运行时正确展开
 * @note 运行时用例：数组 spread 到 rest parameter 正确展开为独立参数
 */
function sumAll(...numbers: int[]): int {
  let s: int = 0;
  for (let i: int = 0; i < numbers.length; i++) {
    s = s + numbers[i];
  }
  return s;
}

function main(): void {
  let arr: int[] = [1, 2, 3, 4, 5];
  let r: int = sumAll(...arr);
  if (r != 15) {
    throw new Error("assertion failed: expected 15, got " + r);
  }
  console.log("verified");
}
