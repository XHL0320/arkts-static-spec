/**
 * @id CLS_09_08_019_FAIL_OVERRIDE_GETTER_NON_COVARIANT
 * @expect compile-fail
 * @section 9.8
 * @design override getter 返回类型非协变应编译失败
 * @note 反向用例：子类 override getter 的返回类型必须可赋值给父类 getter 的返回类型（协变）
 */
class NumberHolder {
  get data(): int { return 0 }
}

class TextHolder extends NumberHolder {
  override get data(): string { return "" } // Compile-time error, string not assignable to int
}

class BooleanSource {
  get flag(): boolean { return false }
  set flag(v: boolean) {}
}

class IntSource extends BooleanSource {
  override get flag(): int { return 1 } // Compile-time error, int not assignable to boolean
  override set flag(v: int) {}
}
