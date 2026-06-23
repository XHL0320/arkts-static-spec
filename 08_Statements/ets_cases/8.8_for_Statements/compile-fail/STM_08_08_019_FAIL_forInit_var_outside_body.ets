/**
 * @id STM_08_08_019_FAIL_forInit_var_outside_body
 * @expect compile-fail
 * @section 8.8
 * @design forInit 声明的变量作用域仅限于该 for 循环体、forContinue 和 forUpdate，循环结束后不可访问 — STATEMENTS.md line 251-252
 * @note 反向用例：第一个 forInit 声明的 idx 在第二个 for 循环的 forContinue 中被引用，作用域越界导致编译失败
 */
function testForInitVarOutsideBody(): void {
    for (let idx: int = 0; idx < 5; idx++) {
        let dummy: int = idx
    }
    for (let next: int = 0; next < idx; next++) {
        let val: int = next
    }
}
