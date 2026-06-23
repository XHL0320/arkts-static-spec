/**
 * @id SEM_15_11_05_002_PASS_instance_method_multi_params
 * @expect compile-pass
 * @section 15.11.5
 * @design 实例方法多参数组合
 * @note ⽐正向用例
 */
class Finder {
    find(key: int): string { return "id"; }
    find(name: string): string { return "name"; }
}
function main(): void {
    let f: Finder = new Finder();
    console.log(f.find(1) + f.find("x"));
}
