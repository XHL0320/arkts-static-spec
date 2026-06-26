/**
 * @id AMB_14_08_006_FAIL_SET_WITH_DEFAULT_PARAM
 * @expect compile-fail
 * @section 14.8
 * @design declare set 参数有默认值，违反 spec（ambient 参数不能有默认值）
 * @note 反向用例
 */
declare set name(val: string = "x")
