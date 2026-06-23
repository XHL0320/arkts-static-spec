/**
 * @id EXP_07_16_003_PASS_GENERIC_TYPE_NAME
 * @expect compile-pass
 * @section 7.16
 * @design 验证泛型类名（擦除后）作为 instanceof 的 T 操作数编译通过
 * @note 正向用例：泛型类型名称可以在 instanceof 中使用（已擦除检查）
 */
class A<T> {}
class B<T> extends A<T> {}

let x = new B<string>()
let r: boolean = x instanceof B
