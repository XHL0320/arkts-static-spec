/**
 * @id EXP_07_02_02_018_RUNTIME_CLASS_CAST_ERROR
 * @expect runtime
 * @section 7.2.2
 * @design 验证类型转换失败时抛出 ClassCastError：as 表达式在运行时类型不兼容
 * @note 运行时用例：验证该场景的运行时行为
 * @runtime-throws=ClassCastError
 */
class A {}

class B extends A {}

class C extends A {}

function main(): void {
  let a: A = new B();
  let c: C = a as C;
  console.log("unreachable");
}
