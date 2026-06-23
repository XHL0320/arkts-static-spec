/**
 * @id EXP_07_23_02_025_FAIL_BIGINT_MIXED_INT
 * @expect compile-fail
 * @section 7.23.2
 * @design 验证 bigint / int 混合类型除法产生编译时错误。
 *         bigint 只能与 bigint 运算，不能与 int/float 等数值类型混合。
 * @note 反向用例：bigint 与 int 混合除法应报编译时错误
 */
function main(): void {
  let a: bigint = 100n
  let b: int = 5
  let c = a / b
}
main()
