/**
 * @id AMB_14_04_03_004_FAIL_TWO_ITERABLES
 * @expect compile-fail
 * @section 14.4.3
 * @design declare class 中两个 iterable 声明，违反"仅允许一个"规则
 * @note 反向用例：两个 iterable 应产生编译时错误
 */
declare class Bad {
  [Symbol.iterator](): Iterator<int>
  [Symbol.iterator](): Iterator<string>
}
