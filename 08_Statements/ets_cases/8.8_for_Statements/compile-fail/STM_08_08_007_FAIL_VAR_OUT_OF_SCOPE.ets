/**
 * @id STM_08_08_007_FAIL_VAR_OUT_OF_SCOPE
 * @expect compile-fail
 * @section 8.8
 * @design forInit 中声明的变量具有循环作用域，循环外不能访问
 * @note 反向用例：for (let i = 0; i < 10; i++) {} let x = i; 作用域越界
 */
function testVarOutOfScope(): void {
    for (let loopIdx: int = 0; loopIdx < 5; loopIdx++) {
        let dummy: int = loopIdx
    }
    let after: int = loopIdx
}
