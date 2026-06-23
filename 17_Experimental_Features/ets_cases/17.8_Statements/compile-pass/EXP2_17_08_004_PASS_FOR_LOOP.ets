/**
 * @id EXP2_17_08_004_PASS_FOR_LOOP
 * @expect compile-pass
 * @section 17.8
 * @design 验证标准 for 循环在 ArkTS 中编译通过
 * @note 正向用例：验证 for(init; cond; update) 循环的标准用法编译通过
 */
function testForLoop(): void {
  // standard for loop
  let sum: number = 0
  for (let i: number = 0; i < 10; i++) {
    sum = sum + i
  }

  // for loop with multiple variables
  for (let m: number = 0, n: number = 10; m < n; m++, n--) {
    let diff: number = n - m
  }

  // for loop with break
  for (let k: number = 0; k < 100; k++) {
    if (k >= 5) {
      break
    }
  }

  // for loop with continue
  let oddSum: number = 0
  for (let p: number = 0; p < 10; p++) {
    if (p % 2 == 0) {
      continue
    }
    oddSum = oddSum + p
  }
}
