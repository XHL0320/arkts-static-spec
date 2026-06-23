/**
 * @id SEM_15_11_10_099
 * @expect compile-fail
 * @section 15.11.10
 * @design 动态解析拒绝：参数类型不匹配
 * @note 反向用例：子类覆写方法后通过基类引用调用时参数不匹配
 */
class B { f(x: int): void {} }
class D extends B { override f(x: int): void {} }
function main(): void {
    let b: B = new D();
    b.f("s");
}
