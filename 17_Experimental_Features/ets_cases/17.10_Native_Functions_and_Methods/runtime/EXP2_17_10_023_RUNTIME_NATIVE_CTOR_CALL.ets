/**
 * @id EXP2_17_10_023_RUNTIME_NATIVE_CTOR_CALL
 * @expect runtime
 * @section 17.10
 * @design 运行时验证 native 构造器调用行为
 * @note 运行时用例：通过 new 调用 native 构造器创建对象
 */
class NativeBuilder {
  native constructor()
  name: string = "built"
}

function main(): void {
  let b: NativeBuilder = new NativeBuilder()
  console.log(b.name)
}
