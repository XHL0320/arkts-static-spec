/*
 * NSM_13_04_1_001_PASS_IMPORT_ALL_AS
 * @id NSM_13_04_1_001_PASS_IMPORT_ALL_AS
 * @expect compile-pass
 * @section 13.4.1
 * @design import * as 绑定单个命名实体到声明作用域
 * @note 正向用例：验证 import * as 编译通过
 *       ⚠️ C 类：需要多文件构建系统支持，单文件 es2panda 无法解析 "@ohos.math"
 *       分类：C 类（编译器实现限制 — 需要构建系统配置）
 */
import * as MathUtils from "@ohos.math"

function main(): void {
    let result: number = MathUtils.abs(-5)
    console.log(result.toString())
}
