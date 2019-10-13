/**
 * \file receptorVLC.pde
 * \author Alexis Melian Segura
 * \date 13/08/19
 * \brief Program that define the VLC receptor.
 */

/****************************************************************************
*                             Includes                                     *
****************************************************************************/
#include "VLC.h"

char data_received [2000];

void setup(){
    // The pin associated to the 3.3V supply is activated, for the supply of the VLC receiver circuit.
  PWR.setSensorPower(SENS_3V3,SENS_ON);
  //PWR.setSensorPower(SENS_5V,SENS_ON);
  // Serial bus initialize.
  USB.ON();

  vlc_object.init_VLC_receptor();

}


void loop(){
  vlc_object.receive_VLC(data_received);

  USB.print("Data: ");USB.println(data_received);

}
