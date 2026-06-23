/**
 * @id SEM_15_11_05_001_PASS_instance_overload_set
 * @expect compile-pass
 * @section 15.11.5
 * @design 类实例方法重载集
 * @note 正向用例：MyFormatter 实例方法 fmt 重载
 */
class MyFormatter {
    fmt(x: int): string { return "int"; }
    fmt(x: string): string { return "str"; }
}
function main(): void {
    let f: MyFormatter = new MyFormatter();
    console.log(f.fmt(42));
}
