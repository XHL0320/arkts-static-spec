/**
 * @id AMB_14_02_005_PASS_ARRAY_RETURN
 * @expect compile-pass
 * @section 14.2
 * @design declare function 返回数组类型 int[]
 * @note 正向用例：验证 ambient function 数组返回类型编译通过
 */
declare function getArr(): int[]
