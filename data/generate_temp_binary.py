#!/usr/bin/env python3
"""
Convierte archivo de texto con temperaturas a formato binario para QEMU

Uso: python3 generate_temp_binary.py [archivo_entrada] [archivo_salida]
Default: data/temps.txt -> data/temps_baseline.bin
"""
import sys

def read_temperature_data(filename):
    """Lee temperaturas desde archivo de texto, ignorando comentarios y líneas vacías"""
    temperatures = []
    with open(filename, 'r') as f:
        for line in f:
            # Ignorar comentarios y líneas vacías
            line = line.strip()
            if line and not line.startswith('#'):
                try:
                    temp = int(line)
                    if 0 <= temp <= 255:
                        temperatures.append(temp)
                    else:
                        print(f"Warning: Temperature {temp} out of range, skipping")
                except ValueError:
                    print(f"Warning: Invalid line '{line}', skipping")
    return temperatures

# Determinar archivos de entrada/salida
input_file = sys.argv[1] if len(sys.argv) > 1 else 'data/temps.txt'
output_file = sys.argv[2] if len(sys.argv) > 2 else 'data/temps_baseline.bin'

print(f"Reading temperature data from {input_file}...")
temperature_data = read_temperature_data(input_file)

if len(temperature_data) != 100:
    print(f"Warning: Expected 100 values, got {len(temperature_data)}")
    # Rellenar con 50°C si faltan valores
    while len(temperature_data) < 100:
        temperature_data.append(50)

# Escribir como bytes binarios
with open(output_file, 'wb') as f:
    f.write(bytearray(temperature_data))

print(f"✓ Generated {output_file} with {len(temperature_data)} bytes")
print(f"  First 10 values: {temperature_data[:10]}")
print(f"  Anomaly points (>90): {[i for i, t in enumerate(temperature_data) if t > 90]}")
print(f"  Source: {input_file}")
