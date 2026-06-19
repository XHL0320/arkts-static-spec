/**
 * @id CLS_09_07_016_FAIL_NATIVE_BLOCK_BODY
 * @expect compile-fail
 * @section 9.7.7
 * @design native方法必须为空体（分号或无体），不允许block体实现
 * @note 反向用例：native方法使用block体导致编译失败
 */
class NativeBlockBody016 {
  // Error: native method must not have a block body
  native compute(a: int, b: int): int {
    return a + b
  }
}

abstract class NativeAbstract016 {
  // Error: native method must not have a block body, even in abstract class
  native fetch(): string {
    return "data"
  }
}

class NativeMultiViolation016 {
  // Error: native method with block body returning void
  native log(msg: string): void {
    let prefix: string = "[NATIVE]"
  }
}
