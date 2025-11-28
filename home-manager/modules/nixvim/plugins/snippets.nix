# TODO: write snippets for nixvim

{
    programs.nixvim = {
        plugins.cmp_luasnip.enable = true;
        plugins.luasnip = {
            enable = true;
            fromVscode = [{paths = ./snippets;}];
        };

        plugins.friendly-snippets.enable = true;
    };
}
