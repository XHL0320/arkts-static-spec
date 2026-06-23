/**
 * @id EXP_07_25_02_026_FAIL_BIGINT_INT_SUB
 * @expect compile-fail
 * @section 7.25.2
 * @design 验证 bigint - int 产生编译错误。
 *         spec：- 要求两个操作数都是 bigint，或都可转换为数值类型；bigint 和 int 混合不符合任一条件。
 * @note 反向用例：bigint-int 类型混合编译错误
 */
function main(): void {
  let b: bigint = 100n
  let i: int = 42
  let r = b - i  // error: bigint and int mixed
}
main()
