/**
 * @id CLS_09_07_018_FAIL_ABSTRACT_ASYNC
 * @expect compile-fail
 * @section 9.7.3
 * @design 抽象方法违规：abstract方法与async修饰符同时使用
 * @note 反向用例：abstract方法不能同时声明为async
 */
abstract class BaseWithAsync {
  // Error: abstract method cannot have async modifier
  async abstract fetchData(): string
}
