/**
 * @id LEX_02_05_035_RT_KEYWORD_CONTROL
 * @expect runtime
 * @section 2.5
 * @design 关键字 Token 控制流
 * @note 运行时用例：if/else/while/for/break/continue
 */
function main(): void {
  let sum: int = 0
  for (let i: int = 0; i < 10; i = i + 1) {
    if (i === 5) {
      break
    }
    if (i % 2 === 0) {
      continue
    }
    sum = sum + i
  }
  // 循环内累加奇数 1, 3 (i=5 时 break)
  if (sum !== 4) { throw new Error("sum !== 4, got " + sum.toString()) }
}
