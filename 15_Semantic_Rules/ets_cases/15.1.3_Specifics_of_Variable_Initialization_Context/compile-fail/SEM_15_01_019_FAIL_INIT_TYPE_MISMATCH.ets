/**
 * @id SEM_15_01_019
 * @expect compile-fail
 * @section 15.1.3
 * @design 验证初始化器类型不匹配拒绝：显式类型与初始化器类型冲突
 * @note 反向用例：string 类型变量不可用 int 初始化
 */
function main(): void {
    let x: string = 42;
}
