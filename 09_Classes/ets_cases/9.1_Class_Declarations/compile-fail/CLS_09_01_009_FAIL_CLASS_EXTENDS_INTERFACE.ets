/**
 * @id CLS_09_01_009_FAIL_CLASS_EXTENDS_INTERFACE
 * @expect compile-fail
 * @section 9.1
 * @design extends 接口类型导致编译错误
 * @note 反向用例：spec §9.2 规定 extends 只能指向类类型
 */
interface IRunnable {
  run(): void
}
class BadExtend extends IRunnable {
}

