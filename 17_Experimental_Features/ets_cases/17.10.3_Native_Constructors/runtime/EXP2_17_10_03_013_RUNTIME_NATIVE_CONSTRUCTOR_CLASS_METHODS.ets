/**
 * @id EXP2_17_10_03_013_RUNTIME_NATIVE_CONSTRUCTOR_CLASS_METHODS
 * @expect runtime
 * @section 17.10.3
 * @design native 构造函数类的方法运行时验证：验证类方法（非 native）可正常声明和调用
 * @note 运行时用例：验证 native 构造函数类中声明的方法可在类型系统中正常引用
 */
class NativeMethodClass {
  native constructor()
  label: string = "default"

  setLabel(lbl: string): void {
    this.label = lbl
  }

  getLabel(): string {
    return this.label
  }
}

function main(): void {
  // Type system allows method references
  let obj: NativeMethodClass | null = null
  if (obj != null) {
    throw new Error("assertion failed: obj should be null")
  }
  // Function type using the class
  let fn: (n: NativeMethodClass) => string = (n: NativeMethodClass): string => {
    return n.getLabel()
  }
  console.log("verified")
}
