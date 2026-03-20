{...}: 
{  
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
}