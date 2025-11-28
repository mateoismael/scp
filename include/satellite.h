#ifndef SATELLITE_H
#define SATELLITE_H

#include "types.h"

// Especificaciones del satélite
#define LEO_ORBIT_TIME_MIN      100  // Duración total de órbita en minutos
#define BRIGHT_AREA_TIME_MIN    42   // Tiempo en zona luminosa
#define DARK_AREA_TIME_MIN      58   // Tiempo en zona oscura

// Sensor de temperatura
#define TEMP_SENSE_INTERVAL_MIN 5    // Intervalo de lectura
#define TEMP_TX_TIME_MIN        1    // Tiempo de transmisión
#define TEMP_MIN                45   // Temperatura mínima en °C
#define TEMP_MAX                105  // Temperatura máxima en °C

// Umbrales del sistema de enfriamiento
#define COOLING_THRESHOLD_ON    90   // Activar enfriamiento
#define COOLING_THRESHOLD_OFF   55   // Desactivar enfriamiento (CORREGIDO de 60°C a 55°C)

// Estado del satélite
typedef enum {
    ORBIT_BRIGHT,
    ORBIT_DARK
} orbit_zone_t;

typedef struct {
    uint32_t orbit_time_elapsed;  // Tiempo transcurrido en minutos
    orbit_zone_t current_zone;
    uint8_t current_temp;
    bool cooling_active;
} satellite_state_t;

// Variables globales del satélite
extern satellite_state_t satellite;

// Funciones del satélite
void satellite_init(void);
void satellite_update_time(uint32_t minutes);
orbit_zone_t satellite_get_zone(void);

#endif // SATELLITE_H
