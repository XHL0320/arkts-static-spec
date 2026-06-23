/*
 * @id SEM_15_05_001_PASS_GENERIC_invariance
 * @expect compile-pass
 * @section 15.5
 * @design 规范 15.5：泛型类 C<T> 对于不同的类型参数 T1 和 T2，C<T1> 和 C<T2> 之间没有子类型关系（不变性）
 * @note 测试泛型不变性
 */

// 测试泛型不变性
class Container<T> {
  value: T
  
  constructor(v: T) {
    this.value = v
  }
}

function test_generic_invariance(): void {
  let containerNumber: Container<number> = new Container<number>(42)
  let containerString: Container<string> = new Container<string>("hello")
  
  // Container<number> 和 Container<string> 之间没有子类型关系
  // containerNumber = containerString  // Error: 不变性
  // containerString = containerNumber  // Error: 不变性
    
  console.log("Generic invariance test passed")
}

// 测试泛型协变（使用 out 类型参数）
class Box<out T> {
  value: T
    
  constructor(v: T) {
    this.value = v
  }
}

function test_generic_covariance(): void {
  let boxNumber: Box<number> = new Box<number>(42)
  let boxAny: Box<any> = boxNumber  // OK: 协变
    
  console.log("Generic covariance test passed")
}
