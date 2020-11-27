*** Settings ***
Suite Setup                   Setup
Suite Teardown                Teardown
Test Setup                    Reset Emulation
Test Teardown                 Test Teardown
Resource                      ${RENODEKEYWORDS}

*** Variables ***
${UART}                       sysbus.uart0

*** Keywords ***
Create Machine
    [Arguments]              ${platform}  ${elf}

    Execute Command          mach create
    Execute Command          machine LoadPlatformDescription ${platform}

    Execute Command          sysbus LoadELF ${elf}

*** Test Cases ***
Should Recognize Command
    Create Machine            @${CURDIR}/nrf52840.repl  @${CURDIR}/binaries/micro_speech.ino.elf
    Create Terminal Tester    ${UART}

    Execute Command           showAnalyzer ${UART}

    Start Emulation

    ${log} =                  Wait For Line On Uart  Heard
    Log to console            ${log.line}