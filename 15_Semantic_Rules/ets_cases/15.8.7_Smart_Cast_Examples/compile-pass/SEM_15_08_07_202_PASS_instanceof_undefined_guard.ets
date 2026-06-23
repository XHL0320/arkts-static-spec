/**
 * @id SEM_15_08_07_202_PASS_instanceof_undefined_guard
 * @expect compile-pass
 * @section 15.8.7
 * @design 规范 15.8.7：instanceof和undefined守卫后安全调用方法
 * @note 正向用例：b instanceof Base和d!=undefined后调用method
 */
class Base {
    method(): void { console.log("Base"); }
}
class Derived extends Base {
    method(): void { console.log("Derived"); }
}
function foo(b: Base | null, d: Derived | undefined): void {
    if (b instanceof Base) {
        b.method();
    }
    if (d != undefined) {
        d.method();
    }
}
function main(): void {
    foo(new Base(), new Derived());
    foo(null, undefined);
}
