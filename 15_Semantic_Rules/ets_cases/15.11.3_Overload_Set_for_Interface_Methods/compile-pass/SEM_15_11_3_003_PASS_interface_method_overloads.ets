/**
 * @id SEM_15_11_3_003_PASS_interface_method_overloads
 * @expect compile-pass
 * @section 15.11.3
 * @design 接口方法重载集
 * @note ⽐正向用例
 */
class Runner {
    run(): string { return "run"; }
    run(x: int): string { return "run" + x.toString(); }
}
function main(): void {
    let r: Runner = new Runner();
    console.log(r.run() + r.run(1));
}
