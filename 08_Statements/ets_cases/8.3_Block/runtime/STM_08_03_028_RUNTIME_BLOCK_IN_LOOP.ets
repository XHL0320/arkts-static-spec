/**
 * @id STM_08_03_028_RUNTIME_BLOCK_IN_LOOP
 * @expect runtime
 * @section 8.3
 * @design 循环中的块创建新作用域每次迭代

 * @note 运行时用例：实际执行验证循环块作用域
 */
function main(): void {
  let sum: int = 0
  for (let i: int = 0; i < 3; i++) {
    { let v: int = i * 10; sum = sum + v }
  }
  if (sum != 30) { throw new Error("assertion: 0+10+20=30") }
  console.log("verified")
}
