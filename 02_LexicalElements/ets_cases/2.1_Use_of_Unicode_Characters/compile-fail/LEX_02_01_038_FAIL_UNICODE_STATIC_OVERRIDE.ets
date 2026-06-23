/**
 * @id LEX_02_01_038_FAIL_UNICODE_STATIC_OVERRIDE
 * @expect compile-fail
 * @section 2.1
 * @design 测试因子checklist: static成员继承边界 - 同一文件内重复类声明（合并声明）应编译失败
 * @note 反向用例：验证ArkTS不支持类的合并声明（Merging declarations is not supported）
 */
class 配置类 {
  计数: number = 0
}

class 配置类 {  // 错误：重复类声明
  名称: string = "测试"
}