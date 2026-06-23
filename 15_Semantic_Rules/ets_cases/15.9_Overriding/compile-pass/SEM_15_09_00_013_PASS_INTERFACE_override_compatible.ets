/*
 * @id SEM_15_09_00_013_PASS_INTERFACE_override_compatible
 * @expect compile-pass
 * @section 15.9.3
 * @design 规范 15.9.3：接口方法重写的签名兼容性检查
 * @note 测试接口方法重写的兼容签名
 */

// 测试接口方法重写的兼容签名
interface BaseInterface {
  method(p: number): string
  
  method2(p: string): number
}

interface DerivedInterface extends BaseInterface {
  // 参数类型逆变：string >: number
  override method(p: string): string
  
  // 返回类型协变：number <: string
  override method2(p: string): number
}

class Implementation implements DerivedInterface {
  method(p: string): string {
    return "implementation: " + p
  }
  
  method2(p: string): number {
    return p.length
  }
}

function test_interface_override_compatible(): void {
  let impl: Implementation = new Implementation()
    
  let result1: string = impl.method("test")
  console.log(result1)
    
  let result2: number = impl.method2("test")
  console.log("Method2 result: " + result2)
    
  console.log("Interface override compatible test passed")
}