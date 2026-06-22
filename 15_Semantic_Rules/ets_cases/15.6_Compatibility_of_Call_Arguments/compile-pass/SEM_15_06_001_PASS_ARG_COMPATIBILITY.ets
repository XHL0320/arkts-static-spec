/**
 * @id SEM_15_06_001
 * @expect compile-pass
 * @section 15.6
 * @design 验证调用参数类型兼容：参数类型与声明类型匹配时通过
 * @note 正向用例：int 参数传 int 声明，string 参数传 string 声明
 */
function greet(name: string, times: int): string {
    let result: string = "";
    for (let i: int = 0; i < times; i++) { result = result + name; }
    return result;
}
function main(): void {
    let r: string = greet("hi", 3);
    console.log(`r=${r}`);
}
