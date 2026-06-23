/**
 * @id SEM_15_02_01_004_PASS_class_implements_interface
 * @expect compile-pass
 * @section 15.2.1
 * @design 实现接口的类 S 是该接口 T 的直接子类型：S<:T
 * @note 来自规范 15.2.1 例：class S implements T {} → let t: T = s → foo(s) OK
 */
interface T {}
class S implements T {
    x: int = 0
}
function foo(t: T): void {}
function main(): void {
    let s: S = new S()
    let t: T = s
    foo(s)
}
