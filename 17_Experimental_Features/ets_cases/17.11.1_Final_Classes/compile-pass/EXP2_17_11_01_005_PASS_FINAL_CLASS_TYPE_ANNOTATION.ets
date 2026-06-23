/**
 * @id EXP2_17_11_01_005_PASS_FINAL_CLASS_TYPE_ANNOTATION
 * @expect compile-pass
 * @section 17.11.1
 * @design final 类作为类型注解：验证 final 类可以用作变量类型、函数参数类型、返回值类型
 * @note 正向用例：验证 final 类在各种类型注解上下文中可编译通过
 */
final class TypeAnnotationFinal {
  data: int = 0
  constructor(d: int) { this.data = d }
  getData(): int { return this.data }
}

function acceptFinalType(obj: TypeAnnotationFinal): void {
  console.log("accepted")
}

function createFinalType(): TypeAnnotationFinal {
  return new TypeAnnotationFinal(100)
}

function testFinalTypeAnnotation(): void {
  let obj: TypeAnnotationFinal = new TypeAnnotationFinal(50)
  let arr: TypeAnnotationFinal[] = [obj]
  let fn: () => TypeAnnotationFinal = createFinalType
  console.log("final class type annotation OK")
}
