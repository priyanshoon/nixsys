{
  programs.chromium = {
    enable = true;
    extensions = [
      # Dark Reader
      { id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; }
      # vimium 
      { id = "dbepggeogbaibhgnhhndojpepiihcmeb"; }
      # ublock origin lite
      { id = "ddkjiahejlhfcafbddmgiahcphecmpfh"; }
    ];
  };
}
