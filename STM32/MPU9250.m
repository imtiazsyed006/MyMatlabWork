clear all
clc
%%
% Register addresses
 ACCEL_OUT = uint8(hex2dec('3B'));
 GYRO_OUT = uint8(hex2dec('43'));
 TEMP_OUT = uint8(hex2dec('41'));
 EXT_SENS_DATA_00 = uint8(hex2dec('49'));
 ACCEL_CONFIG = uint8(hex2dec('1C'));
 ACCEL_FS_SEL_2G = uint8(hex2dec('00'));
 ACCEL_FS_SEL_4G = uint8(hex2dec('08'));
 ACCEL_FS_SEL_8G = uint8(hex2dec('10'));
 ACCEL_FS_SEL_16G = uint8(hex2dec('18'));
 GYRO_CONFIG = uint8(hex2dec('1B'));
 GYRO_FS_SEL_250DPS = uint8(hex2dec('00'));
 GYRO_FS_SEL_500DPS = uint8(hex2dec('08'));
 GYRO_FS_SEL_1000DPS = uint8(hex2dec('10'));
 GYRO_FS_SEL_2000DPS = uint8(hex2dec('18'));
 ACCEL_CONFIG2 = uint8(hex2dec('1D'));
 ACCEL_DLPF_184 = uint8(hex2dec('01'));
 ACCEL_DLPF_92 = uint8(hex2dec('02'));
 ACCEL_DLPF_41 = uint8(hex2dec('03'));
 ACCEL_DLPF_20 = uint8(hex2dec('04'));
 ACCEL_DLPF_10 = uint8(hex2dec('05'));
 ACCEL_DLPF_5 = uint8(hex2dec('06'));
 CONFIG = uint8(hex2dec('1A'));
 GYRO_DLPF_184 = uint8(hex2dec('01'));
 GYRO_DLPF_92 = uint8(hex2dec('02'));
 GYRO_DLPF_41 = uint8(hex2dec('03'));
 GYRO_DLPF_20 = uint8(hex2dec('04'));
 GYRO_DLPF_10 = uint8(hex2dec('05'));
 GYRO_DLPF_5 = uint8(hex2dec('06'));
 SMPDIV = uint8(hex2dec('19'));
 INT_PIN_CFG = uint8(hex2dec('37'));
 INT_ENABLE = uint8(hex2dec('38'));
 INT_DISABLE = uint8(hex2dec('00'));
 INT_PULSE_50US = uint8(hex2dec('00'));
 INT_WOM_EN = uint8(hex2dec('40'));
 INT_RAW_RDY_EN = uint8(hex2dec('01'));
 PWR_MGMNT_1 = uint8(hex2dec('6B'));
 PWR_CYCLE = uint8(hex2dec('20'));
 PWR_RESET = uint8(hex2dec('80'));
 CLOCK_SEL_PLL = uint8(hex2dec('01'));
 PWR_MGMNT_2 = uint8(hex2dec('6C'));
 SEN_ENABLE = uint8(hex2dec('00'));
 DIS_GYRO = uint8(hex2dec('07'));
 USER_CTRL = uint8(hex2dec('6A'));
 I2C_MST_EN = uint8(hex2dec('20'));
 I2C_MST_CLK = uint8(hex2dec('0D'));
 I2C_MST_CTRL = uint8(hex2dec('24'));
 I2C_SLV0_ADDR = uint8(hex2dec('25'));
 I2C_SLV0_REG = uint8(hex2dec('26'));
 I2C_SLV0_DO = uint8(hex2dec('63'));
 I2C_SLV0_CTRL = uint8(hex2dec('27'));
 I2C_SLV0_EN = uint8(hex2dec('80'));
 I2C_READ_FLAG = uint8(hex2dec('80'));
 MOT_DETECT_CTRL = uint8(hex2dec('69'));
 ACCEL_INTEL_EN = uint8(hex2dec('80'));
 ACCEL_INTEL_MODE = uint8(hex2dec('40'));
 LP_ACCEL_ODR = uint8(hex2dec('1E'));
 WOM_THR = uint8(hex2dec('1F'));
 WHO_AM_I = uint8(hex2dec('75'));
 FIFO_EN = uint8(hex2dec('23'));
 FIFO_TEMP = uint8(hex2dec('80'));
 FIFO_GYRO = uint8(hex2dec('70'));
 FIFO_ACCEL = uint8(hex2dec('08'));
 FIFO_MAG = uint8(hex2dec('01'));
 FIFO_COUNT = uint8(hex2dec('72'));
 FIFO_READ = uint8(hex2dec('74'));
% // AK8963 registers
 AK8963_I2C_ADDR = uint8(hex2dec('0C'));
 AK8963_HXL = uint8(hex2dec('03')); 
 AK8963_CNTL1 = uint8(hex2dec('0A'));
 AK8963_PWR_DOWN = uint8(hex2dec('00'));
 AK8963_CNT_MEAS1 = uint8(hex2dec('12'));
 AK8963_CNT_MEAS2 = uint8(hex2dec('16'));
 AK8963_FUSE_ROM = uint8(hex2dec('0F'));
 AK8963_CNTL2 = uint8(hex2dec('0B'));
 AK8963_RESET = uint8(hex2dec('01'));
 AK8963_ASA = uint8(hex2dec('10'));
 AK8963_WHO_AM_I = uint8(hex2dec('00'));
%%
Data = [
    PWR_MGMNT_1
    CLOCK_SEL_PLL
    
    USER_CTRL
    I2C_MST_EN
    
    I2C_MST_CTRL
    I2C_MST_CLK
    
    I2C_SLV0_ADDR
    AK8963_I2C_ADDR
    I2C_SLV0_REG
    AK8963_CNTL1
    I2C_SLV0_DO
    AK8963_PWR_DOWN
    I2C_SLV0_CTRL
    bitor(I2C_SLV0_EN,1)
    
    PWR_MGMNT_1
    PWR_RESET
    
    I2C_SLV0_ADDR
    AK8963_I2C_ADDR
    I2C_SLV0_REG
    AK8963_CNTL2
    I2C_SLV0_DO
    AK8963_RESET
    I2C_SLV0_CTRL
    bitor(I2C_SLV0_EN,1)
    
    PWR_MGMNT_1
    CLOCK_SEL_PLL
    
    PWR_MGMNT_2
    SEN_ENABLE
    
    ACCEL_CONFIG
    ACCEL_FS_SEL_16G
    
    GYRO_CONFIG
    GYRO_FS_SEL_2000DPS
    
    ACCEL_CONFIG2
    ACCEL_DLPF_184
    
    CONFIG
    GYRO_DLPF_184
    
    SMPDIV
    0
    
    USER_CTRL
    I2C_MST_EN
    
    I2C_MST_CTRL
    I2C_MST_CLK
    
    I2C_SLV0_ADDR
    AK8963_I2C_ADDR
    I2C_SLV0_REG
    AK8963_CNTL1
    I2C_SLV0_DO
    AK8963_PWR_DOWN
    I2C_SLV0_CTRL
    bitor(I2C_SLV0_EN,1)
    
    I2C_SLV0_ADDR
    AK8963_I2C_ADDR
    I2C_SLV0_REG
    AK8963_CNTL1
    I2C_SLV0_DO
    AK8963_FUSE_ROM
    I2C_SLV0_CTRL
    bitor(I2C_SLV0_EN,1)
    
    I2C_SLV0_ADDR
    AK8963_I2C_ADDR
    I2C_SLV0_REG
    AK8963_CNTL1
    I2C_SLV0_DO
    AK8963_PWR_DOWN
    I2C_SLV0_CTRL
    bitor(I2C_SLV0_EN,1)
    
    I2C_SLV0_ADDR
    AK8963_I2C_ADDR
    I2C_SLV0_REG
    AK8963_CNTL1
    I2C_SLV0_DO
    AK8963_CNT_MEAS2
    I2C_SLV0_CTRL
    bitor(I2C_SLV0_EN,1)
    
    
    PWR_MGMNT_1
    CLOCK_SEL_PLL];    %%%Begin ends here
    
%     ACCEL_CONFIG2
%     ACCEL_DLPF_20
%     
%     CONFIG
%     GYRO_DLPF_20
%     
%     INT_PIN_CFG
%     INT_PULSE_50US
%     
%     INT_ENABLE
%     INT_RAW_RDY_EN]
Data = uint8(Data);
%%
Read = uint8(59:59+19);