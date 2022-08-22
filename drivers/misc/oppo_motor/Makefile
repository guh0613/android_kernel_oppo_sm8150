subdir-ccflags-y += -Werror
subdir-ccflags-y += -Wno-unused-variable

obj-$(CONFIG_OPPO_MOTOR) += camera_motor_ic/
obj-$(CONFIG_OPPO_MOTOR) += digital_hall_ic/
ifeq ($(strip $(CONFIG_ONEPLUS_MOTOR_OP7)), OP7)
obj-y += oneplus_motor.o
obj-y += oneplus_motor_notifier.o
else
obj-$(CONFIG_OPPO_MOTOR) += oppo_motor.o
obj-$(CONFIG_OPPO_MOTOR) += oppo_motor_notifier.o
endif
