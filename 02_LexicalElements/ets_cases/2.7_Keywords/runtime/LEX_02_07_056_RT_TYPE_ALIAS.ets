/**
 * @id LEX_02_07_056_RT_TYPE_ALIAS
 * @expect runtime
 * @section 2.7
 * @design 类型关键字主名/别名运行时同义
 * @note 运行时用例：int 与 Int 共享同一类型
 */
function main(): void {
  let a: int = 5
  let b: Int = 10
  // 可相互运算
  let r: int = a + b
  if (r !== 15) { throw new Error("int+Int !== 15") }
}
