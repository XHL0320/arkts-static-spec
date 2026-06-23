/**
 * @id SEM_15_08_04_001
 * @expect compile-pass
 * @section 15.8.4
 * @design 计算智能类型：null 检查后类型收窄
 * @note 正向用例：undefined 检查后 string|undefined 收窄为 string
 */
function main(): void {
    let x: string|undefined = "hello";
    if (x != undefined) {
        let s: string = x;
        console.log(s);
    }
}
