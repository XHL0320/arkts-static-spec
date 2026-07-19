# 13.4.2 Default_Import_Binding -- Cross-language behavior difference report

## 2026-07-17 Compilation verification

| ID | Issue | Case | @expect | Actual | Status |
|----|-------|------|---------|--------|--------|
| C11 | default import | NSM_13_04_2_001_PASS_DEFAULT_IMPORT | compile-pass | F0014 | unresolved |
| C12 | default import selective | NSM_13_04_2_002_PASS_DEFAULT_IMPORT_SELECTIVE | compile-pass | F0014 | unresolved |

Root cause: es2panda single-file compilation cannot resolve external module paths (F0014). Requires build system support.
