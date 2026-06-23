/**
 * @id EXP2_17_12_011_FAIL_RETURN_TYPE_MISMATCH
 * @expect compile-fail
 * @section 17.12
 * @design 类重写接口默认方法时，返回类型不兼容（接口要求 int，类返回 string），应产生编译错误
 * @note 反向用例：重写默认方法时返回类型必须与接口声明兼容
 */
interface IValueProvider {
  getValue(): int {
    return 42
  }
}

class BadProvider implements IValueProvider {
  // 返回类型不兼容：接口声明返回 int，这里返回 string
  getValue(): string {
    return "not an int"
  }
}
