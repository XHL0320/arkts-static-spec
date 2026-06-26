/**
 * @id AMB_14_04_02_003_PASS_THREE_DISTINCT
 * @expect compile-pass
 * @section 14.4.2
 * @design declare class 中三个 distinct call signatures
 * @note 正向用例：验证三个 distinct call signatures 编译通过
 */
declare class C {
  (x: string): void
  (x: number): void
  (x: boolean): void
}
