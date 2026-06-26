/**
 * @id CLS_09_10_028_FAIL_OVERRIDE_STATIC_METHOD
 * @expect compile-fail
 * @section 9.10
 * @design static 方法不参与实例动态分派，不能用 override 修饰符覆盖父类实例方法
 * @note 反向用例：Bad28 用 static override foo() 覆盖父类实例方法 foo()，修饰符冲突
 */
class B28 { foo(): void {} }
class Bad28 extends B28 { static override foo(): void {} }
