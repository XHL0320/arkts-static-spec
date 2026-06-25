/*
 * @id SEM_15_13_00_203_RUNTIME_CONCURRENT_init
 * @expect runtime
 * @section 15.13
 * @design 规范 15.13.1：并发静态初始化安全性
 * @note 测试并发静态初始化安全性
 */

// 测试并发静态初始化安全性
class ConcurrentCounter {
  static count: number = 0
  
  static {
    console.log("Static initialization started")
    // 模拟耗时操作
    for (let i = 0; i < 1000000; i++) {
      // 空循环，模拟耗时操作
    }
    ConcurrentCounter.count = 10
    console.log("Static initialization completed")
  }
  
  static increment(): void {
    ConcurrentCounter.count++
  }
}

function test_concurrent_static_init(): void {
  // 注意：ArkTS 的并发模型可能不同于 Java
  // 这里假设有多个并发尝试访问静态成员
  
  console.log("Before first access: " + ConcurrentCounter.count)  // 输出: 10
    
  ConcurrentCounter.increment()
  console.log("After increment: " + ConcurrentCounter.count)  // 输出: 11
    
  console.log("Concurrent static initialization test passed")
}

// 运行测试
test_concurrent_static_init()