/**
 * @id AMB_14_07_013_FAIL_CONST_ENUM
 * @expect compile-fail
 * @section 14.7
 * @design declare namespace 中 const enum 当前版本不支持
 * @note 反向用例：const enum 应产生编译时错误（编译器全局限制）
 */
declare namespace A {
  const enum E {A, B}
}
