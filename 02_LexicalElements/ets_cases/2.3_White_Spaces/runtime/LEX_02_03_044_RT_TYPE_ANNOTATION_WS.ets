/**
 * @id LEX_02_03_044_RT_TYPE_ANNOTATION_WS
 * @expect runtime
 * @section 2.3
 * @design 类型注解周围空白运行时验证
 * @note runtime 用例：验证类型注解周围的空白不影响程序行为
 */

function add1(a: int, b: int): int {
  return a + b
}

function add2(a : int, b : int) : int {
  return a + b
}

function main(): void {
  // 类型注解周围空白不影响程序行为
  let x: int = 10
  let y : int = 20
  let z:int = 30

  let result1 = add1(x, y)
  if (result1 !== 30) { throw new Error("add1 failed, got " + result1) }

  let result2 = add2(x, y)
  if (result2 !== 30) { throw new Error("add2 failed, got " + result2) }

  let sum = x + y + z
  if (sum !== 60) { throw new Error("sum failed, got " + sum) }
}
