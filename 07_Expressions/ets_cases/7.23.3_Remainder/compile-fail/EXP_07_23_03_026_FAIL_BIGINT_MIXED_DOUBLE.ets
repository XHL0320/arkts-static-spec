/**
 * @id EXP_07_23_03_026_FAIL_BIGINT_MIXED_DOUBLE
 * @expect compile-fail
 * @section 7.23.3
 * @design 验证 bigint % double 混合类型取余产生编译时错误。
 *         bigint 只能与 bigint 运算，不能与 double/float 等浮点类型混合。
 * @note 反向用例：bigint 与 double 混合取余应报编译时错误
 */
function main(): void {
  let a: bigint = 100n
  let b: double = 5.0
  let c = a % b
}
main()
