# Sistema de Control Térmico Satelital - RISC-V RV32I

## Requisitos
- QEMU (riscv32)
- GCC riscv64-unknown-elf
- Python 3

## Comandos Básicos

### 1. Compilar
```bash
make clean && make
```

### 2. Generar datos de temperatura
```bash
python3 data/generate_temp_binary.py data/temps_baseline.txt
```

### 3. Ejecutar
```bash
timeout 30 make run-with-data
```

### 4. Cambiar escenario
```bash
./cambiar_escenario.sh 1   # BASELINE (P1→P2→P3)
./cambiar_escenario.sh 2   # PRIORITY_1 (P1→P3→P2)
./cambiar_escenario.sh 3   # PRIORITY_2 (P2→P1→P3)
./cambiar_escenario.sh 4   # SYSCALLS (context switching)
```
Después de cambiar escenario: `make clean && make`


## Perfiles de temperatura
- `temps_baseline.txt` - Órbita normal
- `temps_oscillating.txt` - Fluctuaciones rápidas
- `temps_extreme.txt` - Estrés máximo
- `temps_always_hot.txt` - Siempre en anomalía

## Autores
- Enzo Sebastian Gomez Villegas
- Mateo Ismael Rodríguez Ramos
- Esteban Andre Vasquez Grados

**IS2021 - Computing Systems | UTEC**
