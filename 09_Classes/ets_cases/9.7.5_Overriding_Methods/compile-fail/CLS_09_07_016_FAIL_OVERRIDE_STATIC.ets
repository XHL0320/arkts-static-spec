/**
 * @id CLS_09_07_016_FAIL_OVERRIDE_STATIC
 * @expect compile-fail
 * @section 9.7.5
 * @design 重写违规：static与override修饰符组合使用
 * @note 反向用例：static方法不能使用override修饰符
 */
class Service016 {
  process(): string {
    return "base process"
  }

  handle(): string {
    return "base handle"
  }
}

class SubService016 extends Service016 {
  // Error: static cannot combine with override
  static override process(): string {
    return "sub process"
  }

  // Error: static override combination is not allowed
  static override handle(): string {
    return "sub handle"
  }
}
