/**
 * @id AMB_14_05_007_PASS_INTERFACE_INDEXER
 * @expect compile-pass
 * @section 14.5
 * @design declare interface 含 ambient indexer
 * @note 正向用例：验证 ambient interface 中 indexer 编译通过
 */
declare interface Indexable {
  [index: number]: string
}
