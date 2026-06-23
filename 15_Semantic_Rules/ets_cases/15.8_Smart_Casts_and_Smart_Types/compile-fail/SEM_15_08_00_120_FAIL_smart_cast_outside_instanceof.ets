/*
 * @id SEM_15_08_00_120_FAIL_smart_cast_outside_instanceof
 * @expect compile-fail
 * @section 15.8
 * @design 规范 15.8：在instanceof缩窄分支外调用子类方法编译错误
 * @note 反向用例：c instanceof D分支外c.foo()无法编译
 */

function sem_15_08_fail_299_outside_instanceof(): void {
  class C {}
  class D extends C {
    foo(): void {}
  }
  function bar(c: C): void {
    c.foo()
  }
  bar(new D())
}
