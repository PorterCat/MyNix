{ config, lib, ... }:

{
  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {
    # Fix glitch
    nvidiaPersistenced = true;
    # Modesetting is required.
    modesetting.enable = true;
    powerManagement = {
      enable = false;
      finegrained = false;
    };
    # Use the NVidia open source kernel module (not to be confused with the
    # independent third-party "nouveau" open source driver).
    # Support is limited to the Turing and later architectures. Full list of
    # supported GPUs is at:
    # https://github.com/NVIDIA/open-gpu-kernel-modules#compatible-gpus
    # Only available from driver 515.43.04+
    # Currently alpha-quality/buggy, so false is currently the recommended setting.
    open = false;

    # Enable the Nvidia settings menu,
  	# accessible via `nvidia-settings`.
    nvidiaSettings = true;

    # Optionally, you may need to select the appropriate driver version for your specific GPU.
    package = config.boot.kernelPackages.nvidiaPackages.latest;

    # Nvidia Optimus PRIME. It is a technology developed by Nvidia to optimize
    # the power consumption and performance of laptops equipped with their GPUs.
    # It seamlessly switches between the integrated graphics,
    # usually from Intel, for lightweight tasks to save power,
    # and the discrete Nvidia GPU for performance-intensive tasks.
    prime = {
  		offload = {
  			enable = true;
  			enableOffloadCmd = true;
  		};
  		nvidiaBusId = "PCI:1:0:0";
  		amdgpuBusId = "PCI:5:0:0";
  	};
  };
}
