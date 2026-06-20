/**
 * @id NAM_04_04_010_FAIL_OUT_OF_BLOCK_SCOPE
 * @expect compile-fail
 * @section 4.4
 * @design 块作用域外访问
 * @note 反向用例：验证块作用域外引用块内变量导致编译错误（块级作用域边界）
 */
{
    let blockVar: number = 1;
}
let outerRef: number = blockVar;
