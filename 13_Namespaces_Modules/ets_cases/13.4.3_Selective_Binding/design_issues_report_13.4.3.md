# 13.4.3 Selective_Binding -- Cross-language behavior difference report

## 2026-07-17 Compilation verification

| ID | Issue | Case | @expect | Actual | Status |
|----|-------|------|---------|--------|--------|
| C13 | selective import | NSM_13_04_3_001_PASS_SELECTIVE_IMPORT | compile-pass | F0014 | unresolved |
| C14 | selective import alias | NSM_13_04_3_002_PASS_SELECTIVE_IMPORT_ALIAS | compile-pass | F0014 | unresolved |

Root cause: es2panda single-file compilation cannot resolve external module paths (F0014). Requires build system support.
