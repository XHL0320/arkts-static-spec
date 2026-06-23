/**
 * @id EXP2_17_08_001_PASS_IF_ELSE
 * @expect compile-pass
 * @section 17.8
 * @design 验证 if / if-else / if-else if-else 多分支条件语句在 ArkTS 中编译通过
 * @note 正向用例：验证条件语句的标准用法编译通过
 */
function testIfElse(): void {
  let x: number = 10
  let y: number = 20

  // if single branch
  if (x > 5) {
    let tmp: number = x + 1
  }

  // if-else
  if (x > y) {
    let tmp: number = x - y
  } else {
    let tmp: number = y - x
  }

  // if-else if-else
  if (x > y) {
    let tmp: number = x
  } else if (x < y) {
    let tmp: number = y
  } else {
    let tmp: number = 0
  }

  // nested if
  if (x > 0) {
    if (y > 0) {
      let tmp: number = x + y
    }
  }

  // boolean expression
  let flag: boolean = x == y
  if (flag) {
    let tmp: number = 1
  }
}

function testTernaryExpression(): void {
  let a: number = 10
  let b: number = 20
  let result: number = a > b ? a : b
}
