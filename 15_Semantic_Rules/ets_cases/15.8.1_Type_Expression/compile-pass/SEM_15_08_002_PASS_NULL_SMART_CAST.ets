/**
 * @id SEM_15_08_002
 * @expect compile-pass
 * @section 15.8.1
 * @design 验证 null/undefined smart cast：!= undefined 检查后类型收窄
 * @note 正向用例：x != undefined 后将 x 从 T|undefined 收窄为 T
 */
function main(): void {
    let x: string|undefined = "hello";
    if (x != undefined) {
        let s: string = x;
        console.log(s);
    }
}
