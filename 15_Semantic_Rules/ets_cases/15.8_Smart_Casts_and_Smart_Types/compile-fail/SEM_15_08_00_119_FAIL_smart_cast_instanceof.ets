/*
 * @id SEM_15_08_00_119_FAIL_smart_cast_instanceof
 * @expect compile-fail
 * @section 15.8
 * @design 规范 15.8：instanceof缩窄后调用子类方法 + as强制转换
 * @note 正向用例：c instanceof D内调用c.foo()，以及(c as D).foo()
 */

function sem_15_08_pass_200_smart_cast_instanceof(): void {
  class C {}
  class D extends C {
    foo(): void {}
  }
  function bar(c: C): void {
    if (c instanceof D) {
      c.foo()
    }
    (c as D).foo()
  }
  bar(new D())
}
