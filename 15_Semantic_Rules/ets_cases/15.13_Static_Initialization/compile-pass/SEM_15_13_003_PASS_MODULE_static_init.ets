/*
 * @id SEM_15_13_003_PASS_MODULE_static_init
 * @expect compile-pass
 * @section 15.13
 * @design 规范 15.13：模块静态初始化在首次调用模块函数或访问模块变量时执行
 * @note 测试模块静态初始化
 */

// 测试模块静态初始化
let moduleCount: number = 0

// 模块中的静态初始化
moduleCount = 10

export function getModuleCount(): number {
  return moduleCount
}

export function incrementModuleCount(): void {
  moduleCount++
}

function test_module_static_init(): void {
  // 在首次调用模块函数之前，静态初始化应该已经执行
  console.log("Before first access: " + getModuleCount())  // 输出: 10
  
  incrementModuleCount()
  console.log("After increment: " + getModuleCount())  // 输出: 11
    
  console.log("Module static initialization test passed")
}

// 运行测试
test_module_static_init()