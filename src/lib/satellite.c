#include "satellite.h"

// Estado global del satélite
satellite_state_t satellite;

void satellite_init(void) {
    satellite.orbit_time_elapsed = 0;
    satellite.current_zone = ORBIT_BRIGHT;
    satellite.current_temp = TEMP_MIN;
    satellite.cooling_active = false;
}

void satellite_update_time(uint32_t minutes) {
    satellite.orbit_time_elapsed += minutes;

    // Reiniciar órbita después de 100 minutos
    if (satellite.orbit_time_elapsed >= LEO_ORBIT_TIME_MIN) {
        satellite.orbit_time_elapsed = 0;
    }

    // Actualizar zona actual
    if (satellite.orbit_time_elapsed < BRIGHT_AREA_TIME_MIN) {
        satellite.current_zone = ORBIT_BRIGHT;
    } else {
        satellite.current_zone = ORBIT_DARK;
    }
}

orbit_zone_t satellite_get_zone(void) {
    return satellite.current_zone;
}
