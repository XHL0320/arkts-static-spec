/**
 * @id STM_08_15_010_FAIL_catch_variable_out_of_scope
 * @expect compile-fail
 * @section 8.15
 * @design 验证 catch 子句中的 error 标识符在 catch 块外部不可访问，产生编译错误
 * @note catch(e) 中的 e 作用域仅限于 catch 子句的块内部，外部引用应产生编译时错误
 */
function testCatchVariableOutOfScope(): void {
  let x: int = 0;
  try {
    x = 1;
  } catch (e) {
    x = 2;
  }
  // catch variable e is out of scope here - must be compile-time error
  let y: int = e;
}
