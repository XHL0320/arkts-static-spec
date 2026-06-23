/**
 * @id EXP2_17_08_003_PASS_DO_WHILE_LOOP
 * @expect compile-pass
 * @section 17.8
 * @design 验证 do-while 循环在 ArkTS 中编译通过
 * @note 正向用例：验证 do-while 循环的标准用法编译通过
 */
function testDoWhileLoop(): void {
  let count: number = 0
  do {
    count = count + 1
  } while (count < 5)

  // do-while executes at least once
  let executed: boolean = false
  let neverTrue: boolean = false
  do {
    executed = true
  } while (neverTrue)

  // do-while with break
  let j: number = 0
  do {
    j = j + 1
    if (j >= 3) {
      break
    }
  } while (true)
}
