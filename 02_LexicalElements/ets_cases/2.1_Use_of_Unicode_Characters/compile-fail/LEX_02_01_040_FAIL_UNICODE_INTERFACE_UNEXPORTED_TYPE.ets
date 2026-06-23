/**
 * @id LEX_02_01_040_FAIL_UNICODE_INTERFACE_UNEXPORTED_TYPE
 * @expect compile-fail
 * @section 2.1
 * @design 测试因子checklist: namespace/module/export可见性 - exported方法使用unexported类型应编译失败
 * @note 反向用例：验证Unicode接口导出方法使用未导出类型时产生编译错误
 */
interface 内部类型 {
  值: number
}

export function 处理(参数: 内部类型): number {  // 错误：参数使用未导出类型
  return 参数.值
}