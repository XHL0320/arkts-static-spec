/**
 * @id EXP2_17_11_3_001_PASS_NAMED_CTOR_DECLARE
 * @expect compile-pass
 * @section 17.11.3
 * @design 命名构造函数基本声明：验证 constructor Name(params) 语法可以正常声明
 * @note 正向用例：验证命名构造函数声明编译通过。注意：此版本 es2panda 不支持 new Class.Name() 调用语法，命名构造函数通过 overload 解析调用
 */
class Temperature {
  v: double
  constructor Celsius(n: double) {
    this.v = n
  }
  constructor Fahrenheit(n: double) {
    this.v = (n - 32) / 1.8
  }
  overload constructor { Celsius, Fahrenheit }
}

function testNamedCtorDeclare(): void {
  let t1: Temperature = new Temperature(100)
  console.log(t1.v)
  let t2: Temperature = new Temperature(212)
  console.log(t2.v)
}
