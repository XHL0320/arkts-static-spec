/**
 * @id EXP2_17_10_006_PASS_NATIVE_MULTI_DECL
 * @expect compile-pass
 * @section 17.10
 * @design 验证多个 native 声明编译通过
 * @note 正向用例：一个类中混�?native 函数、方法、构造器的声�?
 */
native function initLib(): void

class Service {
  native connect(url: string): boolean
  native constructor()
}

function main(): void {
  let s: Service = new Service()
  console.log("multiple native declarations")
}

