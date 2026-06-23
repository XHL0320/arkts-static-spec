/*
 * @id SEM_15_09_006_PASS_CLASS_multiple_override
 * @expect compile-pass
 * @section 15.9.1
 * @design 规范 15.9.1：子类的一个方法可以重写超类中的多个方法
 * @note 测试多个方法重写同一方法
 */

// 测试多个方法重写同一方法
class A {
  foo(a: A): void {
    console.log("A.foo(A)")
  }
}

class B extends A {
  foo(b: B): void {
    console.log("B.foo(B)")
  }
}

class C extends B {
  // 重写 B.foo(B)，同时也重写了 A.foo(A)
  override foo(a: A): void {
    console.log("C.foo(A)")
  }
}

function test_multiple_override(): void {
  let c: C = new C()
  let b: B = c
  let a: A = c
  
  // 运行时都调用 C.foo(A)
  c.foo(new A())  // 输出: C.foo(A)
  b.foo(new A())  // 输出: C.foo(A)
  a.foo(new A())  // 输出: C.foo(A)
  
  console.log("Multiple override test passed")
}
