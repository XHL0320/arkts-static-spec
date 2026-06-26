/**
 * @id NAM_04_05_106_FAIL_INDIRECT_CIRCULAR
 * @expect compile-fail
 * @section 4.5
 * @design 间接循环依赖
 * @note 反向用例：验证类型别名通过中间类型形成间接循环引用导致编译错误
 */
type A = B;
type B = A;
