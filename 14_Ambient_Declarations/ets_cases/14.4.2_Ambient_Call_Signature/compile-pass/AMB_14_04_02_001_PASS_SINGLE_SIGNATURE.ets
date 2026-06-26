/**
 * @id AMB_14_04_02_001_PASS_SINGLE_SIGNATURE
 * @expect compile-pass
 * @section 14.4.2
 * @design declare class 中单个 call signature
 * @note 正向用例：验证单个 call signature 编译通过
 */
declare class C {
  (someArg: number): boolean
}
