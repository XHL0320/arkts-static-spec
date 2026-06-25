/**
 * @id GEN_05_01_04_200_RUNTIME_WILDCARD
 * @expect runtime
 * @section 5.1.4
 * @design 验证通配符类型在运行时行为正确
 * @note 运行时用例：通配符声明后运行时取值类型正确
 */
class Storage<T> {
    private value: T;
    constructor(v: T) { this.value = v; }
    get(): T { return this.value; }
}

function main(): void {
    let s: Storage<string> = new Storage<string>("wildcard_ok");
    let v: string = s.get();
    if (v != "wildcard_ok") {
        throw new Error("assertion failed: " + v);
    }
    console.log("verified");
}
