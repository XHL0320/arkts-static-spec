/**
 * @id EXP2_17_07_010_FAIL_STATIC_INVOKE_USES_GENERIC_T
 * @expect compile-fail
 * @section 17.7
 * @design 静态 $_invoke 不能访问泛型类的类型参数 T
 * @note 反向用例：泛型类 C<T> 中 static $_invoke 引用类型参数 T，应编译失败
 */
class GenericCallable<T> {
  static $_invoke(): T {
    return new T()
  }
}
