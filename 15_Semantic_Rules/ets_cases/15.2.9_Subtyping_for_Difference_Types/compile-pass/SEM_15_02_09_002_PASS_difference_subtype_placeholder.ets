/**
 * @id SEM_15_02_09_002_PASS_difference_subtype_placeholder
 * @expect compile-pass
 * @section 15.2.9
 * @design 差分类型子类型—null 检查排除 undefined 后的类型收窄
 * @note 替代测试：null/undefined 检查模拟差分语义
 */
function main(): void {
    let x: string | undefined | null = "hello";
    if (x != undefined && x != null) {
        let s: string = x;
        console.log(s.length);
    }
}
