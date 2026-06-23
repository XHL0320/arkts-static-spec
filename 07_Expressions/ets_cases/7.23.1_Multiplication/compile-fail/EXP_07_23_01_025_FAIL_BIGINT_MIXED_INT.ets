/**
 * @id EXP_07_23_01_025_FAIL_BIGINT_MIXED_INT
 * @expect compile-fail
 * @section 7.23.1
 * @design 验证 bigint * int 混合类型产生编译时错误。
 *         bigint 操作数要求两个操作数都是 bigint。
 * @note 反向用例：bigint 与 int 混合乘法应报编译时错误
 */
function main(): void {
  let a: bigint = 100n
  let b: int = 5
  let c = a * b
}
main()
