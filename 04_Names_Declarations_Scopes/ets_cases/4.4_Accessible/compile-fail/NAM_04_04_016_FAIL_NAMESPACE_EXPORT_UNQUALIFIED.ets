/**
 * @id NAM_04_04_016_FAIL_NAMESPACE_EXPORT_UNQUALIFIED
 * @expect compile-fail
 * @section 4.4
 * @design namespace 导出实体外部不能用简单名访问
 * @note 反向用例：验证 namespace export 名称在外部缺少 namespace 限定时应产生编译时错误
 */
namespace OnlyQualifiedNamespace {
    export let exportedValue: number = 10;
}
let namespaceUnqualifiedValue: number = exportedValue;
