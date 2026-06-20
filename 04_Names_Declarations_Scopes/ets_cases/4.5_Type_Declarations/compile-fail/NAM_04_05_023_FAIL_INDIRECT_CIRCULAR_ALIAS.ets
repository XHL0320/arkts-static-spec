/**
 * @id NAM_04_05_023_FAIL_INDIRECT_CIRCULAR_ALIAS
 * @expect compile-fail
 * @section 4.5.1
 * @design 通过另一个类型别名的间接循环引用
 * @note 反向用例：type A = B; type B = A; 等价于 type A = A，应报编译错误。
 *       spec 4.5.1 行507 "Any other use including unresolvable circular references
 *       causes a compile-time error"
 *
 * GAP POTENTIAL: 类型 6（两阶段声明消解循环）— 编译器可能先注册 A/B 的名字，
 *       再解析类型引用。如果两阶段中检测不够严格，这个间接循环可能被漏掉。
 */
type A = B;
type B = A;
