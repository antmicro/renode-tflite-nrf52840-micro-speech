renode-tflite-nrf52840-micro-speech
===================================

This is a helper repository for the `TensorFlow Lite micro-speech <https://github.com/tensorflow/tensorflow/tree/master/tensorflow/lite/micro/examples/micro_speech>`_ colab experiment.

Building a micro-speech binary
------------------------------

1. Install `arduino-cli <https://arduino.github.io/arduino-cli/latest/installation/>`_
2. Install core for arduino nano::

    arduino-cli core install arduino:mbed

3. Clone https://github.com/tensorflow/tensorflow
4. Run tensorflow/lite/micro/tools/ci_build/test_arduino.sh
5. In tensorflow/lite/micro/tools/make/gen/arduino_cortex-m4/prj/micro_speech_mock/tensorflow_lite/examples/micro_speech run::
 
    arduino-cli compile --fqbn arduino:mbed:nano33ble

6. Binary can be found in build dir.

