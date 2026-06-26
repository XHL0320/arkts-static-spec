/**
 * @id AMB_14_04_02_004_PASS_DIFFERENT_PARAM_COUNT
 * @expect compile-pass
 * @section 14.4.2
 * @design declare class 中不同参数个数的 call signatures
 * @note 正向用例：验证不同参数个数的 call signatures 编译通过
 */
declare class C {
  (x: int): void
  (x: int, y: string): void
}
