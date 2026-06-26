/**
 * @id AMB_14_05_008_PASS_INTERFACE_ITERABLE
 * @expect compile-pass
 * @section 14.5
 * @design declare interface 含 ambient iterable（返回 Iterator<int>）
 * @note 正向用例：验证 ambient interface 中 iterable 编译通过
 */
declare interface WithIterable {
  [Symbol.iterator](): Iterator<int>
}
