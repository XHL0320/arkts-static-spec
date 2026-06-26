/**
 * @id EXP2_17_10_003_COMPILE_PASS_NATIVE_CTOR_EMPTY
 * @expect compile-pass
 * @section 17.10
 * @design 验证 native 构造器声明（无 body）编译通过
 * @note 正向用例：native 构造器声明不能有构造函数体
 */
class NativeCtor {
  native constructor()
}

function main(): void {
  let o: NativeCtor = new NativeCtor()
  console.log("native ctor declared")
}
