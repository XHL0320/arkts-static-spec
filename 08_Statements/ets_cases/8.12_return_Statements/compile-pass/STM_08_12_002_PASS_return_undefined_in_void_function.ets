/**
 * @id STM_08_12_002_PASS_return_undefined_in_void_function
 * @expect compile-pass
 * @section 8.12
 * @design 测试void函数中return undefined语句
 * @note 正向测试：void函数允许使用return undefined，因为undefined可赋值给void返回类型
 */
function testReturnUndefinedInVoidFunction(): void {
    return undefined;
}
