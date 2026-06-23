/**
 * @id CLS_09_08_007_FAIL_ACCESSOR_METHOD_CONFLICT
 * @expect compile-fail
 * @section 9.8
 * @design accessor 名称与方法名称冲突应编译失败
 * @note 反向用例：getter/setter 名称不可与同一 class 的 method 名相同
 */
class Calculator {
  value(): int { return 42 }
  get value(): int { // Compile-time error, accessor name clashes with method name
    return 0
  }
  set value(v: int) { // Compile-time error, accessor name clashes with method name
  }
}
