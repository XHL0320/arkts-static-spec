/*
 * @id SEM_15_09_00_009_PASS_INTERFACE_default_method_override
 * @expect compile-pass
 * @section 15.9.2
 * @design 规范 15.9.2：接口中的默认方法可以被子接口或实现类重写
 * @note 测试接口默认方法的重写
 */

// 测试接口默认方法的重写
interface BaseInterface {
  method(): string
  
  defaultMethod(): string {
    return "default implementation"
  }
}

interface DerivedInterface extends BaseInterface {
  // 重写默认方法
  override defaultMethod(): string {
    return "derived interface implementation"
  }
}

class Implementation implements BaseInterface {
  method(): string {
    return "implementation"
  }
  
  // 重写默认方法
  override defaultMethod(): string {
    return "class implementation"
  }
}

function test_interface_default_method_override(): void {
  let impl: Implementation = new Implementation()
  let result1: string = impl.defaultMethod()
  console.log(result1)  // 输出: "class implementation"
  
  let iface: DerivedInterface
  // 注意：这里需要具体的实现类
  console.log("Interface default method override test passed")
}
