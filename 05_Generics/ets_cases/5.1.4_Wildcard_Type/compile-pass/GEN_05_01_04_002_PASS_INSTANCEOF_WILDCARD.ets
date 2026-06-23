/**
 * @id GEN_05_01_04_002_PASS_INSTANCEOF_WILDCARD
 * @expect compile-pass
 * @section 5.2
 * @design instanceof产生通配符类型编译验证
 * @note 编译验证，运行时入口问题暂不可执行
 */
class X<T> {
    p: T;
    constructor(v: T) { this.p = v; }
}
function bar(x: X<Any>): void {
    x.p = "a";
}
function main(): void {
    let obj: object = new X<string>("hello");
    if (obj instanceof X) {
        let x: X<Any> = obj as X<Any>;
        bar(x);
        if (x.p != "a") {
            throw new Error("assertion failed: " + x.p);
        }
    }
    console.log("verified");
}
