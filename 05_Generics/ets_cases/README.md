# 05 Generics — Test Cases

## Directory Structure

```
ets_cases/
├── 5.1_Type_Parameters/        # §5.1 类型参数
├── 5.2_Variance_Wildcard/      # §5.2 变体与通配符
└── 5.3_Generic_Instantiations/ # §5.3 泛型实例化
```

Each subsection contains three categories:

| Category | Purpose |
|----------|---------|
| `compile-pass/` | Valid syntax — must compile without errors |
| `compile-fail/` | Invalid syntax — compiler must reject |
| `runtime/` | Runtime behavior — must execute correctly |

## Naming Convention

```
GEN_{XX}_{YY}_{NNN}_{TYPE}_{DESCRIPTION}.ets
```

- `GEN` — chapter prefix (Generics)
- `{XX}_{YY}` — subsection number (e.g., `05_01`)
- `{NNN}` — sequential number (001–019: PASS, 020–034: FAIL, 035–039: RUNTIME)
- `{TYPE}` — `PASS` / `FAIL` / `RUNTIME`
- `{DESCRIPTION}` — UPPER_SNAKE_CASE topic description

## Execution

```bash
bash run_generics_cases_wsl.sh
```
