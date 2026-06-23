/**
 * @id CLS_09_08_012_FAIL_GETTER_WITH_PARAMETERS
 * @expect compile-fail
 * @section 9.8
 * @design getter 声明时带有参数应编译失败
 * @note 反向用例：getter 不可声明任何参数；getter 必须是无参的
 */
class DataSource {
  get value(x: int): int { return x } // Compile-time error, getter has parameter
}

class Counter {
  get count(a: int, b: int): int { return a + b } // Compile-time error, getter has parameters
}
