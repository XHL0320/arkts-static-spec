/**
 * @id LEX_02_08_037_RT_ARROW_FUNCTION
 * @expect runtime
 * @section 2.8
 * @design 箭头函数运行时验证
 * @note runtime 用例：验证箭头函数的运行时行为
 */

function main(): void {
  // 箭头函数
  let add = (a: int, b: int): int => a + b
  let result1 = add(1, 2)
  if (result1 !== 3) { throw new Error("add failed, got " + result1) }

  let square = (x: int): int => x * x
  let result2 = square(5)
  if (result2 !== 25) { throw new Error("square failed, got " + result2) }

  // 多行箭头函数
  let complex = (x: int, y: int): int => {
    let sum = x + y
    return sum * 2
  }
  let result3 = complex(3, 4)
  if (result3 !== 14) { throw new Error("complex failed, got " + result3) }
}
