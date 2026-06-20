/**
 * @id ITF_10_01_003_PASS_INTERFACE_WITH_EXTENDS
 * @expect compile-pass
 * @section 10.1
 * @design 接口继承
 * @note 正向用例：验证 extends 子句的接口声明
 */
interface Named {
    name: string;
}
interface Person extends Named {
    age: number;
}
