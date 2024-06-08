echo 'Starting to clone stuffs needed for your device'

# Remove Stuff
rm -rf kernel/google
rm -rf device/google/gs-common
rm -rf device/google/wahoo
rm -rf vendor/google
rm -rf packages/apps/GoogleCamera
rm -rf packages/apps/ElmyraService

# Tree Dependencies
git clone --depth=1 https://github.com/LineageOS/android_device_google_gs-common.git -b lineage-22.1 device/google/gs-common
git clone --depth=1 https://github.com/AR-Project-Studio/device_google_wahoo.git -b 15 device/google/wahoo
git clone --depth=1 https://github.com/AR-Project-Studio/kernel_google_wahoo.git -b 15 kernel/google/wahoo
git clone --depth=1 https://github.com/AR-Project-Studio/vendor_google_taimen.git -b 15 vendor/google/taimen

# Gcam Mod Prebuilts
git clone --depth=1 https://gitlab.com/asriadirahim/packages_apps_googlecamera.git -b thirteen packages/apps/GoogleCamera

echo 'Completed!'