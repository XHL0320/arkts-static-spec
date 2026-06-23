/*
 * @id SEM_15_13_00_002_PASS_NAMESPACE_static_init
 * @expect compile-pass
 * @section 15.13
 * @design 规范 15.13：命名空间静态初始化在首次访问命名空间成员时执行
 * @note 测试命名空间静态初始化
 */

// 测试命名空间静态初始化
namespace MyNamespace {
  export let count: number = 0
  
  // 命名空间中的静态初始化
  count = 10
  
  export function increment(): void {
    count++
  }
  
  console.log("Namespace static initialization")
}

function test_namespace_static_init(): void {
  // 在首次访问命名空间成员之前，静态初始化应该已经执行
  console.log("Before first access: " + MyNamespace.count)  // 输出: 10
    
  MyNamespace.increment()
  console.log("After increment: " + MyNamespace.count)  // 输出: 11
    
  console.log("Namespace static initialization test passed")
}

// 运行测试
test_namespace_static_init()