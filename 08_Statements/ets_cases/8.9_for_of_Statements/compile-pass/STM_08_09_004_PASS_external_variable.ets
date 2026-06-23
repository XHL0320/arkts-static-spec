/**
 * @id STM_08_09_004_PASS_external_variable
 * @expect compile-pass
 * @section 8.9
 * @design 使用外部声明的变量作为forVariable，元素类型可赋值给变量类型
 * @note 在循环外部声明的变量可被for-of使用，元素类型必须可赋值给变量类型，此处int可赋值给int
 */
function testExternalVariable(): void {
    let arr: Array<int> = [1, 2, 3];
    let elem: int = 0;
    for (elem of arr) {
        console.log(elem.toString());
    }
}
