{...}:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Pfeiffer Gabor";
        email = "gaborpfeiffer221@gmail.com";
      };
      init.defaultBranch = "main";

      credential = {
        helper = "store";
      };
    };
  };
}