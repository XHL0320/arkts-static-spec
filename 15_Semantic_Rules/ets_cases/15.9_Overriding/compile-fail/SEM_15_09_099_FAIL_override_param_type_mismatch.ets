/*
 * @id SEM_15_09_099_FAIL_override_param_type_mismatch
 * @expect compile-fail
 * @section 15.9
 * @design 规范 15.9：覆写方法的参数类型必须与被覆写方法兼容
 * @note 测试参数类型不兼容的覆写（应该编译失败）
 */

// 测试参数类型不匹配的覆写（编译失败）
class B {
  f(x: int): void {}
}

class D extends B {
  // 编译失败：参数类型不兼容
  override f(x: string): void {}
}

function test_override_param_mismatch(): void {}
