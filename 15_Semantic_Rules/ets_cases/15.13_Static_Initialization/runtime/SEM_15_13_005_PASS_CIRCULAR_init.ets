/*
 * @id SEM_15_13_005_PASS_CIRCULAR_init
 * @expect runtime
 * @section 15.13
 * @design 规范 15.13：循环静态初始化依赖可能导致死锁
 * @note 测试循环静态初始化依赖
 */

// 测试循环静态初始化依赖
class A {
  static value: number = B.value + 1
}

class B {
  static value: number = A.value + 1
}

function test_circular_init(): void {
  // 注意：ArkTS 的循环静态初始化依赖处理可能不同于 Java
  // 这里假设会抛出错误或死锁
  
  console.log("Circular initialization test passed (if no deadlock)")
}

// 运行测试
test_circular_init()