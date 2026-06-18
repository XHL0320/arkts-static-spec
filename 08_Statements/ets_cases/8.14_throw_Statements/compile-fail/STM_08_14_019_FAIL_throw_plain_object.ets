/**
 * @id STM_08_14_019_FAIL_throw_plain_object
 * @expect compile-fail
 * @section 8.14
 * @design 测试抛出普通对象字面量（非Error实例），验证非Error类型对象导致编译错误
 * @note 普通对象字面量类型不可赋值给Error，即便拥有message等属性也应产生编译时错误
 */

function testThrowPlainObject(): void {
    throw { message: "this is a plain object, not an Error" };
}
