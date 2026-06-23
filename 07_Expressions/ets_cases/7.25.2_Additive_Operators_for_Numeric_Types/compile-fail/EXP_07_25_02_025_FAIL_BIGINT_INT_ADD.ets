/**
 * @id EXP_07_25_02_025_FAIL_BIGINT_INT_ADD
 * @expect compile-fail
 * @section 7.25.2
 * @design 验证 bigint + int 产生编译错误。
 *         spec：+ 时两个操作数都是 bigint 的规则要求双方都是 bigint；混合 bigint/数值不可隐式转换。
 * @note 反向用例：bigint+int 类型混合编译错误
 */
function main(): void {
  let b: bigint = 100n
  let i: int = 42
  let r = b + i  // error: bigint and int mixed
}
main()
