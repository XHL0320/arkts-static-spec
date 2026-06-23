/**
 * @id STM_08_09_007_FAIL_type_mismatch
 * @expect compile-fail
 * @section 8.9
 * @design 外部变量类型与迭代元素类型不匹配，应产生编译时错误
 * @note 元素类型string不能赋值给变量类型int，编译时报错
 */
function testTypeMismatch(): void {
    let str: string = "hello";
    let num: int = 0;
    for (num of str) {
        console.log(num.toString());
    }
}
