deps_config := \
	/Users/xuwei32/workspace/esp/esp-idf/components/app_trace/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/aws_iot/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/bt/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/driver/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/efuse/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/esp32/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/esp_event/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/esp_http_client/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/esp_http_server/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/esp_https_ota/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/espcoredump/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/ethernet/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/fatfs/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/freemodbus/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/freertos/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/heap/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/libsodium/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/log/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/lwip/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/mbedtls/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/mdns/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/mqtt/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/nvs_flash/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/openssl/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/pthread/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/spi_flash/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/spiffs/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/unity/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/vfs/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/wear_levelling/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/wifi_provisioning/Kconfig \
	/Users/xuwei32/workspace/esp/esp-idf/components/app_update/Kconfig.projbuild \
	/Users/xuwei32/workspace/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/Users/xuwei32/workspace/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/Users/xuwei32/workspace/baiduiot/baidu-iot-samples/ESP32/sample/main/Kconfig.projbuild \
	/Users/xuwei32/workspace/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/Users/xuwei32/workspace/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_TARGET)" "esp32"
include/config/auto.conf: FORCE
endif
ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
