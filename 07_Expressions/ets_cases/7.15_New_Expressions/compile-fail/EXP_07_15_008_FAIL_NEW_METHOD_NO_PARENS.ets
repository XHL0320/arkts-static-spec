/**
 * @id EXP_07_15_008_FAIL_NEW_METHOD_NO_PARENS
 * @expect compile-fail
 * @section 7.15
 * @design 验证 new A.method() 编译时错误（缺少括号，应为 new A().method()）
 * @note 反向用例：new 后直接调用方法需加括号 ()
 */
class A {
  method(): void {}
}
new A.method()
