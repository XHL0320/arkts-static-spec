/**
 * @id ANN_18_01_012_FAIL_LOCAL_ANNOTATION
 * @expect compile-fail
 * @section 18.1
 * @design 验证注解不能在局部作用域定义
 * @note 反向用例：在函数内部定义注解导致编译时错误
 */
function test(): void {
  @interface Local {} // Compile-time error, annotation must be at top level
}
