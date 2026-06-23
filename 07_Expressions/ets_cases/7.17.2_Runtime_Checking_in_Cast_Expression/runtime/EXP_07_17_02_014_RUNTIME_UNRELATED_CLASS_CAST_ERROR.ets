/**
 * @id EXP_07_17_02_014_RUNTIME_UNRELATED_CLASS_CAST_ERROR
 * @expect runtime
 * @runtime-throws=ClassCastError
 * @section 7.17.2
 * @design 验证不相关类之间 as cast 运行时抛出 ClassCastError
 * @note 运行时用例：A 实例 as B（A 和 B 无继承关系）应抛出 ClassCastError
 */
class A {
    a: int = 0
}
class B {
    b: int = 0
}

function main(): void {
    let x: Object = new A()
    let y: B = x as B
}
