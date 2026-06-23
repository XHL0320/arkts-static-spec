/*
 * @id SEM_15_13_099_FAIL_static_forward_ref
 * @expect compile-fail
 * @section 15.13
 * @design 规范 15.13：静态初始化中禁止前向引用
 * @note 测试静态字段前向引用未初始化的字段（应该编译失败）
 */

// 测试静态前向引用（编译失败）
class C {
  // 编译失败：b 尚未初始化
  static a: int = C.b
  static b: int = 1
}

function test_static_forward_ref(): void {}
