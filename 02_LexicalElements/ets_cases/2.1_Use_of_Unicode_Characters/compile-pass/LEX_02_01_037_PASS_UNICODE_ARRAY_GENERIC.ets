/**
 * @id LEX_02_01_037_PASS_UNICODE_ARRAY_GENERIC
 * @expect compile-pass
 * @section 2.1
 * @design 测试因子checklist: 数组/tuple元素 - Unicode字符串在数组中的存取
 * @note 正向用例：验证Unicode在数组中正确使用（Map/Set需要泛型参数，暂不测试）
 */
function main(): void {
  let 中文数组: string[] = ["苹果", "香蕉", "橘子"]
  let 第一个: string = 中文数组[0]
  let 长度: number = 中文数组.length
}