// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

#ifndef TLSIO_ARDUINO_H
#define TLSIO_ARDUINO_H

#ifdef __cplusplus
extern "C" {
#include <cstddef>
#else
#include <stddef.h>
#endif /* __cplusplus */

#include "azure_c_shared_utility/xio.h"
#include "azure_c_shared_utility/umock_c_prod.h"

/** @brief  Return the tlsio table of functions.
*
* @param  void.
*
* @return The tlsio interface (IO_INTERFACE_DESCRIPTION).
*/
MOCKABLE_FUNCTION(, const IO_INTERFACE_DESCRIPTION*, tcpio_arduino_get_interface_description);


/** Expose tlsio state for test proposes.
*/
#define TCPIO_ARDUINO_STATE_VALUES  \
    TCPIO_ARDUINO_STATE_CLOSED,     \
    TCPIO_ARDUINO_STATE_OPENING,    \
    TCPIO_ARDUINO_STATE_OPEN,       \
    TCPIO_ARDUINO_STATE_CLOSING,    \
    TCPIO_ARDUINO_STATE_ERROR,      \
    TCPIO_ARDUINO_STATE_NULL
DEFINE_ENUM(TCPIO_ARDUINO_STATE, TCPIO_ARDUINO_STATE_VALUES);


/** @brief  Return the tlsio state for test proposes.
*
* @param  Unique handle that identifies the tlsio instance.
*
* @return The tlsio state (TLSIO_ARDUINO_STATE).
*/
TCPIO_ARDUINO_STATE tlsio_arduino_get_state(CONCRETE_IO_HANDLE tlsio_handle);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* TLSIO_ARDUINO_H */
