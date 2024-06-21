
//
// Included Files
//
#include "driverlib.h"
#include "device.h"
#include "board.h"
#include "c2000ware_libraries.h"

//initialize c2000 board
void initc2000(void) {
    //INITIALIZE -------------------------------------------------------------------------------------------------------------------------------------
    //
    // Initialize device clock and peripherals
    //
    Device_init();

    //
    // Disable pin locks and enable internal pullups.
    //
    Device_initGPIO();

    //
    // Initialize PIE and clear PIE registers. Disables CPU interrupts.
    //
    Interrupt_initModule();

    //
    // Initialize the PIE vector table with pointers to the shell Interrupt
    // Service Routines (ISR).
    //
    Interrupt_initVectorTable();

    //
    // Board initialization
    //
    Board_init();

    //
    // Enable Global Interrupt (INTM) and realtime interrupt (DBGM)
    //
    EINT;
    ERTM;
    //---------------------
};
__interrupt void INT_myCAN0_1_ISR(void)
{

}
__interrupt void INT_myCAN0_0_ISR(void)
{

}
/**
 * main.c
 */
void main(void)
{
    uint16_t txMsgData[8];
    txMsgData[0] = 0xFF;
    txMsgData[1] = 0xFF;
    txMsgData[2] = 0xFF;
    txMsgData[3] = 0xFF;
    txMsgData[4] = 0xFF;
    txMsgData[5] = 0xFF;
    txMsgData[6] = 0xFF;
    txMsgData[7] = 0xFC;
    initc2000();

    while(1)
    {
        CAN_sendMessage(CANB_BASE, 1, 8, txMsgData);
               DEVICE_DELAY_US(100000);

    }

}
