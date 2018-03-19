#
# Automatically generated file; DO NOT EDIT.
# Project Configuration
# Fri Jan 26 17:38:31 2018
#
#
set(CFG_ELEVATOR y)
set(CFG_RAM_SIZE "0x4000000")
set(CFG_RAM_INIT_SCRIPT "IT9079A1_Initial_DDR2_Mem_tiling_pitch2048_360MHZ.scr")
set(CFG_WATCHDOG_ENABLE y)
set(CFG_FONT_FILENAME "wqyMicroHeiProportional.ttf")
set(CFG_BACKLIGHT_ENABLE y)
set(CFG_BACKLIGHT_DUTY_CYCLES "95, 92, 88, 82, 75, 65, 55, 40, 25, 5")
set(CFG_BACKLIGHT_DEFAULT_DUTY_CYCLE "5")
set(CFG_LCD_ENABLE y)
set(CFG_LCD_WIDTH "800")
set(CFG_LCD_HEIGHT "480")
set(CFG_LCD_PITCH "1600")
set(CFG_LCD_INIT_SCRIPT "IT9850_LCD_800_480_innolux_7inch_888.txt.in")
set(CFG_CMDQ_ENABLE y)
set(CFG_AUDIO_ENABLE y)
set(CFG_SD0_ENABLE y)
set(CFG_FS_FAT y)
set(CFG_I2C0_ENABLE y)
set(CFG_I2S_ENABLE y)
# CFG_I2S_SPDIF_ENABLE is not set
set(CFG_UART1_ENABLE y)
set(CFG_DEF_IIC0_GPIO_CONFIG_2 y)
# CFG_NET_ENABLE is not set

#
# (unvisible)
#
set(CFG_DEF_DBG_UART1 y)
set(CFG_DBG_INIT_SCRIPT "IT9079A1_Initial_DDR2_Mem_tiling_pitch2048_320MHZ.txt")
set(CFG_DEF_BUILD_DEBUG y)
set(CFG_SYSTEM_NAME "ITE Elevator")
set(CFG_UPGRADE_DELETE_PKGFILE_AFTER_FINISH y)
set(CFG_WIN32_SIMULATOR y)
set(CFG_ITU_FT_CACHE_ENABLE y)
set(CFG_ITU_UCL_ENABLE y)
set(CFG_BUILD_AUDIO_MGR y)
set(CFG_BUILD_INIPARSER y)
set(CFG_BUILD_ITU y)
set(CFG_BUILD_SDL y)
set(CFG_BUILD_UPGRADE y)
set(CFG_HAVE_LCD y)
set(CFG_HAVE_GRAPHICS y)
set(CFG_HAVE_AUDIO y)

#
# (unvisible)
#
set(CFG_DEF_CFG_RELEASE y)

#
# (unvisible)
#

#
# Develop Environment
#
# CFG_DEV_DEVELOP is not set
set(CFG_DEV_RELEASE y)
# CFG_BOOTLOADER_ENABLE is not set

#
# Win32
#
# CFG_WIN32_FS_HW is not set
set(CFG_TEMP_DRIVE "T")

#
# System
#
set(CFG_CPU_FA626 y)
# CFG_CPU_SM32 is not set
set(CFG_CHIP_PKG_IT9079 y)
# CFG_CHIP_PKG_IT9852 is not set
# CFG_CHIP_PKG_IT9854 is not set
# CFG_CHIP_PKG_IT9856 is not set
# CFG_CHIP_PKG_IT9910 is not set
# CFG_CHIP_PKG_IT9920 is not set
set(CFG_WATCHDOG_TIMEOUT 10)
set(CFG_WATCHDOG_REFRESH_INTERVAL 1)
# CFG_WATCHDOG_INTR is not set
# CFG_WATCHDOG_IDLETASK is not set
# CFG_EXT_WATCHDOG_ENABLE is not set

#
# Internal Settings
#
set(CFG_MEMDBG_ENABLE y)
set(CFG_ROM_COMPRESS y)
# CFG_DCPS_ENABLE is not set
# CFG_DPU_ENABLE is not set
# CFG_SD_DUAL_BOOT is not set
# CFG_SPREAD_SPECTRUM_PLL1_ENABLE is not set
# CFG_SPREAD_SPECTRUM_PLL2_ENABLE is not set
# CFG_SPREAD_SPECTRUM_PLL3_ENABLE is not set
# CFG_XCPU_MSGQ is not set

#
# Screen
#
# CFG_ENABLE_ROTATE is not set
set(CFG_LCD_BPP "2")
# CFG_LCD_MULTIPLE is not set
set(CFG_LCD_TRIPLE_BUFFER y)
# CFG_HDMI_OUT_ENABLE is not set
# CFG_BL_SHOW_LOGO is not set
set(CFG_BACKLIGHT_FREQ "1000")
set(CFG_BACKLIGHT_BOOTLODER_DELAY "83")

#
# Internal Setting
#
# CFG_TVOUT_ENABLE is not set

#
# Graphics
#
set(CFG_CMDQ_SIZE "0x40000")
# CFG_OPENVG_ENABLE is not set
# CFG_M2D_ENABLE is not set
# CFG_JPEG_HW_ENABLE is not set

#
# Audio
#
set(CFG_AUDIO_DAC_MODULE "itp_dac_null.c")
# CFG_DIALOGUE_PARAMETER_SET is not set
# CFG_AUDIO_CODEC_AACDEC is not set
# CFG_AUDIO_CODEC_AC3DEC is not set
# CFG_AUDIO_CODEC_AC3SPDIF is not set
# CFG_AUDIO_CODEC_AMR is not set
# CFG_AUDIO_CODEC_EAC3DEC is not set
# CFG_AUDIO_CODEC_MP3DEC is not set
# CFG_AUDIO_CODEC_MP2DEC is not set
# CFG_AUDIO_CODEC_WAV is not set
# CFG_AUDIO_CODEC_WMADEC is not set
# CFG_AUDIO_CODEC_FLACDEC is not set
# CFG_AUDIO_CODEC_G711_ALAW is not set
# CFG_AUDIO_CODEC_G711_ULAW is not set
# CFG_RISC_TS_DEMUX_PLUGIN is not set
# CFG_COMPRESS_AUDIO_PLUGIN is not set
# CFG_AUDIO_MGR_M4A is not set
# CFG_AUDIO_MGR_WAV_HD is not set
# CFG_AUDIO_MGR_LRC is not set
# CFG_AUDIO_MGR_RESAMPLE is not set
# CFG_AUDIO_MGR_PARSING_MP3 is not set

#
# Video (unvisible)
#

#
# Storage
#
# CFG_NAND_ENABLE is not set
# CFG_NOR_ENABLE is not set
# CFG_NOR_SHARE_GPIO is not set
# CFG_SD0_STATIC is not set
# CFG_SD1_ENABLE is not set
# CFG_RAMDISK_ENABLE is not set

#
# File System
#
# CFG_FS_NTFS is not set
set(CFG_PRIVATE_DRIVE "A")
set(CFG_PUBLIC_DRIVE "B")

#
# Peripheral
#
# CFG_RTC_ENABLE is not set
set(CFG_RTC_DEFAULT_TIMESTAMP "1325376000")
set(CFG_I2S_OUTPUT_PIN_ENABLE y)
set(CFG_DAC_port_I2C0 y)
set(CFG_SPI_ENABLE y)
set(CFG_SPI0_ENABLE y)
# CFG_SPI0_40MHZ_ENABLE is not set
# CFG_SPI1_ENABLE is not set
# CFG_RGBTOMIPI_ENABLE is not set
# CFG_WIEGAND_ENABLE is not set
# CFG_TV_ENCODER_ENABLE is not set
# CFG_CAPTURE_MODULE_ENABLE is not set
# CFG_IOEX_ENABLE is not set
# CFG_GPIO_EXPANDER_ENABLE is not set
# CFG_UART0_ENABLE is not set
set(CFG_UART1_BAUDRATE "115200")
# CFG_UART2_ENABLE is not set
# CFG_UART3_ENABLE is not set
set(CFG_UART_INTR y)
set(CFG_UART_BUF_SIZE "16384")
# CFG_UART_DMA is not set
# CFG_UART_FORCE_FLUSH is not set
# CFG_RS485_0_ENABLE is not set
# CFG_RS485_1_ENABLE is not set
# CFG_RS485_2_ENABLE is not set
# CFG_RS485_3_ENABLE is not set
# CFG_RS485_4_ENABLE is not set
# CFG_SWUART_CODEC_ENABLE is not set
# CFG_USB0_ENABLE is not set
# CFG_USB1_ENABLE is not set
# CFG_IRDA_ENABLE is not set
# CFG_IR_ENABLE is not set
# CFG_KEYPAD_ENABLE is not set
# CFG_TOUCH_ENABLE is not set
# CFG_BATTERY_ENABLE is not set
# CFG_GSENSOR_ENABLE is not set
# CFG_HEADSET_ENABLE is not set
# CFG_SPEAKER_ENABLE is not set
# CFG_AMPLIFIER_ENABLE is not set
# CFG_LED_ENABLE is not set
# CFG_SWITCH_ENABLE is not set
# CFG_TUNER_ENABLE is not set
# CFG_FM2018_ENABLE is not set
# CFG_AUDIOAMP_ENABLE is not set
# CFG_SENSOR_ENABLE is not set
# CFG_ALT_CPU_ENABLE is not set

#
# Power
#
# CFG_POWER_ON is not set
# CFG_POWER_SAVING_ENABLE is not set
# CFG_POWER_DOZE is not set
# CFG_POWER_TICKLESS_IDLE is not set

#
# GPIO
#
set(CFG_GPIO_SD0_CARD_DETECT "-1")
# CFG_SD0_CARD_DETECT_ACTIVE_HIGH is not set
set(CFG_GPIO_SD0_POWER_ENABLE "-1")
set(CFG_GPIO_SD0_WRITE_PROTECT "-1")
set(CFG_GPIO_BACKLIGHT_PWM "4")
set(CFG_GPIO_UART1_TX "25")
set(CFG_GPIO_UART1_RX "14")
# CFG_IIC0_GPIO_CONFIG_1 is not set
set(CFG_IIC0_GPIO_CONFIG_2 y)

#
# Network
#

#
# (unvisible)
#

#
# (unvisible)
#

#
# Task
#
# CFG_TASK_DRIVE_PROBE is not set

#
# Debug
#
# CFG_DBG_NONE is not set
# CFG_DBG_PRINTBUF is not set
# CFG_DBG_SWUART_CODEC is not set
set(CFG_DBG_UART1 y)
# CFG_DBG_LCDCONSOLE is not set
# CFG_DBG_OSDCONSOLE is not set
set(CFG_DBG_ICE_SCRIPT "IT9070A1_Initial_DDR2_Mem_tiling_pitch2048_320MHZ.csf")
# CFG_DBG_BLUESCREEN is not set
# CFG_DBG_MEMLEAK is not set
# CFG_DBG_RMALLOC is not set
# CFG_DBG_STATS is not set
# CFG_DBG_TRACE_ANALYZER is not set
# CFG_DBG_CLI is not set
# CFG_ENABLE_UART_CLI is not set

#
# Upgrade
#
# CFG_UPGRADE_BOOTLOADER is not set
# CFG_UPGRADE_IMAGE is not set
# CFG_UPGRADE_DATA is not set
set(CFG_UPGRADE_ENC_KEY "0")
set(CFG_UPGRADE_FILENAME "ITEPKG03.PKG")
set(CFG_UPGRADE_FILENAME_LIST "ITEPKG03.PKG")
set(CFG_UPGRADE_MARK_POS "0")

#
# SDK
#
set(CFG_BUILD_DEBUG y)
# CFG_BUILD_DEBUGREL is not set
# CFG_BUILD_RELEASE is not set
# CFG_BUILD_MINSIZEREL is not set
set(CFG_VERSION_MAJOR "2")
set(CFG_VERSION_MINOR "2")
set(CFG_VERSION_PATCH "8")
set(CFG_VERSION_CUSTOM "1")
set(CFG_MANUFACTURER "www.ite.com.tw")
# CFG_GENERATE_DOC is not set
# CFG_GENERATE_VERSION_TWEAK is not set

#
# Drivers
#

#
# ith
#
set(CFG_ITH_ERR y)
set(CFG_ITH_WARN y)
set(CFG_ITH_INFO y)
# CFG_ITH_DBG is not set
# CFG_ITH_FPGA is not set

#
# itp
#
set(CFG_ITP_ERR y)
set(CFG_ITP_WARN y)
set(CFG_ITP_INFO y)
# CFG_ITP_DBG is not set

#
# Libraries
#

#
# (unvisible)
#

#
# dhcps (unvisible)
#
set(CFG_BUILD_ITC y)
set(CFG_BUILD_ZLIB y)

#
# ffmpeg (unvisible)
#

#
# (unvisible)
#

#
# itc
#
set(CFG_ITC_ERR y)
set(CFG_ITC_WARN y)
set(CFG_ITC_INFO y)
# CFG_ITC_DBG is not set

#
# (unvisible)
#

#
# itu
#
set(CFG_ITU_ERR y)
set(CFG_ITU_WARN y)
set(CFG_ITU_INFO y)
# CFG_ITU_DBG is not set
# CFG_ITU_LOAD is not set
# CFG_ITU_UPDATE is not set
# CFG_ITU_DRAW is not set
set(CFG_ITU_FT_CACHE_SIZE "0x7D000")
# CFG_ITU_ASSERT_THREAD is not set
set(CFG_BUILD_FREETYPE y)
set(CFG_BUILD_JPEG y)
set(CFG_BUILD_PNG y)
set(CFG_BUILD_REDBLACK y)
set(CFG_BUILD_UCL y)

#
# (unvisible)
#

#
# upgrade
#
set(CFG_UG_ERR y)
set(CFG_UG_WARN y)
set(CFG_UG_INFO y)
# CFG_UG_DBG is not set
set(CFG_UG_BUF_SIZE "0x20000")

#
# Elevator
#
# CFG_CHECK_FILES_CRC_ON_BOOTING is not set
set(CFG_ITU_PATH "itu/800x480")
set(CFG_RES_PATH "res")
# CFG_UPGRADE_GUI is not set
set(CFG_WEBSERVER_PORT "8080")
set(CFG_UPGRADE_DATA_URL "http://192.168.1.1/elevator2/")
set(CFG_UPGRADE_FW_URL "ftp://192.168.1.1/elevator2/ITEPKG03.PKG")
