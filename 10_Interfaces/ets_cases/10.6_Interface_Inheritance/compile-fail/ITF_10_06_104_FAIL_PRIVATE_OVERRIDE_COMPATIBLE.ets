/**
 * @id ITF_10_06_104_FAIL_PRIVATE_OVERRIDE_COMPATIBLE
 * @expect compile-fail
 * @section 10.6
 * @design 子接口private方法与超接口实例方法签名兼容应报错
 * @note spec: private method compatible with superinterface instance method → CTE
 */
interface I104a { foo(): void }
interface I104b extends I104a { private foo(): void }
