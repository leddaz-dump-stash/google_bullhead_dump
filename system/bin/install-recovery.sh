#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery:17843434:9dad9d8e401dc0b1fe660a52aaf450adc9a7eab2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/boot:12063974:8f1d86e238bd8464946c8cf1d8471c3f1d925e13 EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery 9dad9d8e401dc0b1fe660a52aaf450adc9a7eab2 17843434 8f1d86e238bd8464946c8cf1d8471c3f1d925e13:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
