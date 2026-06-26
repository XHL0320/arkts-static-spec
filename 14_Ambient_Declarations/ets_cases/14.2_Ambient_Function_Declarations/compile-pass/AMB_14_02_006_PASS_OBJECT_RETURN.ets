/**
 * @id AMB_14_02_006_PASS_OBJECT_RETURN
 * @expect compile-pass
 * @section 14.2
 * @design declare function 返回 Object 类型
 * @note 正向用例：验证 ambient function Object 返回类型编译通过
 */
declare function getObj(): Object
