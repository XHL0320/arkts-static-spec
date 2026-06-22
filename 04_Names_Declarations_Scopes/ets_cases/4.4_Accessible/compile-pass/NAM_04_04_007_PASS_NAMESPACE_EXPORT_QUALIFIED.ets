/**
 * @id NAM_04_04_007_PASS_NAMESPACE_EXPORT_QUALIFIED
 * @expect compile-pass
 * @section 4.4
 * @design namespace 导出实体通过限定名可访问
 * @note 正向用例：验证 namespace export 名称在外部必须通过 namespace 名称限定访问
 */
namespace QualifiedAccessNamespace {
    export let exportedValue: number = 10;
}
let namespaceQualifiedValue: number = QualifiedAccessNamespace.exportedValue;
