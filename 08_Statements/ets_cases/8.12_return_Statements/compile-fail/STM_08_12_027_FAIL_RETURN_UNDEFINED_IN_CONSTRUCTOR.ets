/**
 * @id STM_08_12_027_FAIL_RETURN_UNDEFINED_IN_CONSTRUCTOR
 * @expect compile-fail
 * @section 8.12
 * @design 构造器中 return undefined 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
class A { constructor(p: int) { return undefined } }
function testReturnUndefinedInConstructorFail(): void {
  let a: A = new A(1)
}
