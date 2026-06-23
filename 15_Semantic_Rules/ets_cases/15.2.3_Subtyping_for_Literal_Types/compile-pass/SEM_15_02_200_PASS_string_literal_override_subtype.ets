/**
 * @id SEM_15_02_200_PASS_string_literal_override_subtype
 * @expect compile-pass
 * @section 15.2.3
 * @design 字符串字面量类型 "1" 是 string 的子类型，可用于重写
 * @note 来自规范 15.2.3 例：Derived 中 override foo(p: string): "1" 合法，参数 "1" 兼容 string
 */
class Base {
    foo(p: "1"): string { return "42" }
}
class Derived extends Base {
    override foo(p: string): "1" { return "1" }
}
function main(): void {
    let base: Base = new Derived()
    let result: string = base.foo("1")
    console.log(result)
}
