/**
 * @id CLS_09_07_020_FAIL_INSTANCE_METHOD_DUP_SIG
 * @expect compile-fail
 * @section 9.7.2
 * @design 实例方法签名冲突：同一类中声明两个名称相同且参数类型列表相同的实例方法导致编译错误
 * @note 反向用例：重复的实例方法签名，编译器应报告方法重复定义错误
 */
class DuplicateMethod020 {
  private _data: int = 0

  // First declaration of process
  process(value: int): int {
    return value + 1
  }

  // Error: duplicate method signature — same name and same parameter types
  process(value: int): int {
    return value * 2
  }

  // Also invalid: overload-like pattern (not allowed in ArkTS)
  processStr(value: string): string {
    return value
  }

  // Error: same name, same parameter types (string) as above
  processStr(value: string): string {
    return value + value
  }
}

class DuplicateMethodNoParam020 {
  // First declaration
  getData(): int {
    return 0
  }

  // Error: duplicate method with no parameters — same name, same return type
  getData(): int {
    return 1
  }
}
