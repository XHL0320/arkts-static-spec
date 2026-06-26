/**
 * @id AMB_14_04_03_003_PASS_ITERABLE_INT_RETURN
 * @expect compile-pass
 * @section 14.4.3
 * @design declare class 中 [Symbol.iterator]() 返回 Iterator<boolean>
 * @note 正向用例：验证 bool 迭代器类型编译通过
 */
declare class E {
  [Symbol.iterator](): Iterator<boolean>
}
