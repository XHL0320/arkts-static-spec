/**
 * @id AMB_14_04_03_001_PASS_BASIC_ITERABLE
 * @expect compile-pass
 * @section 14.4.3
 * @design declare class 中 [Symbol.iterator]() 声明，返回 Iterator<int>
 * @note 正向用例：验证 ambient iterable 编译通过
 */
declare class C {
  [Symbol.iterator](): Iterator<int>
}
