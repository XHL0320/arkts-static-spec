/*
 * @id SEM_15_13_00_009_PASS_static_init_basic
 * @expect compile-pass
 * @section 15.13
 * @design 规范 15.13：类的静态成员初始化
 * @note 测试类静态字段的声明时初始化
 */

// 测试静态初始化基础
class Config {
  static val: int = 42
}

function test_static_init_basic(): void {
  let v: int = Config.val  // 访问静态成员

  console.log(`${v}`)
}
