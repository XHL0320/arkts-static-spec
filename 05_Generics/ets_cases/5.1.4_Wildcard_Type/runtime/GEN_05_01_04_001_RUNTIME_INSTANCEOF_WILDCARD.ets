/**
 * @id GEN_05_02_020_RUNTIME_INSTANCEOF_WILDCARD
 * @expect runtime
 * @section 5.2
 * @design instanceof产生通配符类型
 * @note 运行时用例：验证 instanceof 产生通配符类型行为正确
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
