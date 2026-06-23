/**
 * @id EXP2_17_08_002_PASS_WHILE_LOOP
 * @expect compile-pass
 * @section 17.8
 * @design 验证 while 循环在 ArkTS 中编译通过
 * @note 正向用例：验证 while 循环的标准用法编译通过
 */
function testWhileLoop(): void {
  let count: number = 0
  while (count < 10) {
    count = count + 1
  }

  // while with boolean variable
  let flag: boolean = true
  let result: number = 0
  while (flag) {
    result = result + 1
    if (result >= 5) {
      flag = false
    }
  }

  // while with break
  let i: number = 0
  while (true) {
    i = i + 1
    if (i >= 10) {
      break
    }
  }
}
