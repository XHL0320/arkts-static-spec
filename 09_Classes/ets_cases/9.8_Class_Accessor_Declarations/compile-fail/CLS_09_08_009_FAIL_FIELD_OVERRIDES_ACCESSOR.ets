/**
 * @id CLS_09_08_009_FAIL_FIELD_OVERRIDES_ACCESSOR
 * @expect compile-fail
 * @section 9.8
 * @design field 覆盖 superclass 的 getter/setter 应编译失败
 * @note 反向用例：field 不可 override getter/setter；accessor 也不可 override field
 */
class C {
  get num(): int { return 42 }
  set num(x: int) {}
}

class D extends C {
  num: int = 2 // Compile-time error, field overriding accessor
}

class E {
  count: int = 1
}

class F extends E {
  get count(): int { // Compile-time error, accessor overriding field
    return 0
  }
  set count(v: int) { // Compile-time error, accessor overriding field
  }
}
