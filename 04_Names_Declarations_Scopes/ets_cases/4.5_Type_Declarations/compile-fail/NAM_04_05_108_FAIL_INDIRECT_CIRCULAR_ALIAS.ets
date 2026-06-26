/**
 * @id NAM_04_05_108_FAIL_INDIRECT_CIRCULAR_ALIAS
 * @expect compile-fail
 * @section 4.5
 * @design 通过另一个类型别名的间接循环引用
 * @note 反向用例：type A = B; type B = A; 等价于 type A = A，应报编译错误
 *       规范 4.5.1 — 无法解析的循环引用导致编译时错误
 */
type A = B;
type B = A;
