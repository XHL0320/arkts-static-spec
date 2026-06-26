/**
 * @id AMB_14_04_02_002_PASS_TWO_DISTINCT
 * @expect compile-pass
 * @section 14.4.2
 * @design declare class 中两个 distinct call signatures（参数类型不同）
 * @note 正向用例：验证两个 distinct call signatures 编译通过
 */
declare class C {
  (x: string): void
  (x: number): void
}
