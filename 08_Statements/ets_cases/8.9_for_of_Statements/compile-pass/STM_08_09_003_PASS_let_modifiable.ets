/**
 * @id STM_08_09_003_PASS_let_modifiable
 * @expect compile-pass
 * @section 8.9
 * @design 使用let声明forVariable，验证可在循环体内修改
 * @note let修饰的forVariable允许修改，每次迭代重置为当前元素值
 */
function testLetModifiable(): void {
    let arr: Array<int> = [1, 2, 3];
    for (let x of arr) {
        x = x * 2;
    }
}
