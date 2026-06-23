/**
 * @id SEM_15_11_03_001_PASS_interface_overload_set
 * @expect compile-pass
 * @section 15.11.3
 * @design 接口方法重载集：接口可声明重载方法
 * @note 正向用例：Processor 接口 process 方法的重载
 */
interface Processor {
    process(x: int): string;
    process(x: string): string;
}
class Impl implements Processor {
    process(x: int): string { return "int"; }
    process(x: string): string { return "str"; }
}
function main(): void {
    let p: Processor = new Impl();
    console.log(p.process(42));
}
