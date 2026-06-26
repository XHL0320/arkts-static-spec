/**
 * @id AMB_14_04_01_004_PASS_READONLY_INDEX
 * @expect compile-pass
 * @section 14.4.1
 * @design declare class 中 readonly ambient indexer
 * @note 正向用例：验证 readonly 索引编译通过
 */
declare class D {
  readonly [index: number]: number
}
