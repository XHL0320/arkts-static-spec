/**
 * @id EXP2_17_10_03_011_RUNTIME_NATIVE_CONSTRUCTOR_TYPE_REFERENCE
 * @expect runtime
 * @section 17.10.3
 * @design native 构造函数类作为类型引用的运行时验证：验证包含 native constructor 的类可在运行时用作类型声明
 * @note 运行时用例：验证 native 构造函数类作为变量类型、数组元素类型时的运行时行为
 */
class NativeCtorTypeClass {
  native constructor()
  kind: string = "native_type"
  getKind(): string { return this.kind }
}

function main(): void {
  // Type can be used for variable declarations (non-null through constructor)
  let obj: NativeCtorTypeClass | null = null
  if (obj != null) {
    throw new Error("assertion failed: obj should be null")
  }
  // Array of native constructor types
  let arr: NativeCtorTypeClass[] = []
  if (arr.length != 0) {
    throw new Error("assertion failed: array should be empty")
  }
  console.log("verified")
}
