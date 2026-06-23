/**
 * @id CLS_09_08_020_FAIL_OVERRIDE_SETTER_NON_CONTRAVARIANT
 * @expect compile-fail
 * @section 9.8
 * @design override setter 参数类型非逆变应编译失败
 * @note 反向用例：子类 override setter 的参数类型必须是父类 setter 参数类型的超类型（逆变）
 */
class WideBucket {
  set data(v: double) {}
}

class NarrowBucket extends WideBucket {
  override set data(v: int) {} // Compile-time error, int is narrower than double (not contravariant)
}

class StringTarget {
  set label(v: string) {}
}

class LiteralTarget extends StringTarget {
  override set label(v: boolean) {} // Compile-time error, boolean is not supertype of string
}
