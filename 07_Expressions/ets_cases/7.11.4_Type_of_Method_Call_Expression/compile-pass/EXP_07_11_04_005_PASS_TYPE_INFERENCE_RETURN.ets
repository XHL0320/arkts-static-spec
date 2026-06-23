/**
 * @id EXP_07_11_04_005_PASS_TYPE_INFERENCE_RETURN
 * @expect compile-pass
 * @section 7.11.4
 * @design 验证方法返回值通过类型推导（let x = obj.method()），编译通过
 * @note 正向用例：方法返回类型通过 let 推导，不需要显式类型注解，编译通过
 */
class Factory {
  static createName(): string {
    return "ArkTS";
  }
}

function main(): void {
  let name = Factory.createName();
}
