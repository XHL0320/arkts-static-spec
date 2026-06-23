/**
 * @id CCY_16_03_03_003_PASS_async_method_override_covariant
 * @expect compile-pass
 * @section 16.3.3
 * @design async 方法覆写与返回类型协变
 * @note 正向用例：验证子类覆写 async 父类方法时返回类型协变（Promise<string> <: Promise<Object>）
 *       boundary: async method overriding with covariant return type
 */
class Base {
    async getValue(): Promise<Object> {
        return new Object();
    }
}
class Derived extends Base {
    async getValue(): Promise<string> {
        return "hello";
    }
}
