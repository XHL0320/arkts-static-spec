/**
 * @id AMB_14_02_008_PASS_MULTI_PARAM_OPTIONAL
 * @expect compile-pass
 * @section 14.2
 * @design declare function 必选参数+可选参数混合，返回 boolean
 * @note 正向用例：验证 ambient function 混合参数声明编译通过
 */
declare function multi(a: int, b?: string): boolean
