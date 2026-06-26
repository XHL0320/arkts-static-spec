/**
 * @id AMB_14_04_02_006_FAIL_NON_DISTINCT
 * @expect compile-fail
 * @section 14.4.2
 * @design 两个 non-distinct call signatures（相同参数类型），违反 distinct 规则
 * @note 反向用例：non-distinct call signatures 应产生编译时错误
 */
declare class C {
  (x: string): void
  (x: string): void
}
