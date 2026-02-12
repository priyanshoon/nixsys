{
    programs.nixvim = {
        plugins.fidget.enable = true;
        plugins.lsp = {
            enable = true;

            keymaps = {
                silent = true;

                lspBuf = {
                    "gd" = "definition";
                    "K" = "hover";
                    "<leader>vws" = "workspace_symbol";
                    "<leader>ca" = "code_action";
                    "<leader>vrr" = "references";
                    "<leader>vrn" = "rename";
                    "<C-h>" = "signature_help";
                    "<leader>vmt" = "format";
                };
            };

            servers = {
                gopls = {
                    enable = true;
                    settings = {
                        gofumpt = true;
                    };
                };

                basedpyright = {
                    enable = true;
                    package = null;
                    settings = {
                        plugins = {
                            ruff = {
                                enable = true;
                                package = null;
                            };
                        };
                    };
                };

                # pylsp = {
                #     settings = {
                #         configurationSources = "pycodestyle";
                #         plugins = {
                #             pycodestyle.enabled = true;
                #             pylsp_mypy.enabled = true;
                #             ruff.enabled = true;
                #         };
                #     };
                #     enable = true;
                # };
                eslint.enable = true;
                emmet_ls = {
                    enable = true;
                    filetypes = [ "html" "astro" ];
                };
                ts_ls = {
                    enable = true;
                    filetypes = [ "typescript" "javascript" "tsx" "jsx" ];
                };
                # phpactor = {
                #     enable = true;
                # };
                clangd = {
                    enable = true;
                };
                nixd.enable = true;

                # rust_analyzer = {
                #     enable = true;
                #     package = null;
                #     cargoPackage = null;
                #     installRustfmt = true;
                # };
                
                astro = {
                    enable = true;
                    package = null;
                    cmd = [ "astro-ls" "--stdio" ];
                    filetypes = [ "astro" ];
                };
            };

            onAttach = ''
        local autocmd = vim.api.nvim_create_autocmd
        autocmd("BufWritePre", {
          pattern = "*.go",
          callback = function()
            local params = vim.lsp.util.make_range_params()
            params.context = { only = { "source.organizeImports" } }
            local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 3000)
            for cid, res in pairs(result or {}) do
              for _, r in pairs(res.result or {}) do
                if r.edit then
                  local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
                  vim.lsp.util.apply_workspace_edit(r.edit, enc)
                end
              end
            end
            vim.lsp.buf.format { async = false }
          end,
        })
            '';

        };

        plugins.cmp = {
            enable = true;
            settings = {
                sources = [
                    { name = "nvim_lsp"; }
                    { name = "luasnip"; }
                    { name = "path"; }
                    {
                        name = "buffer";
                        keyword_length = 3;
                    }
                ];
                mapping = {
                    "<C-Space>" = "cmp.mapping.complete()";"<C-u>" = "cmp.mapping.scroll_docs(-4)";
                    "<C-d>" = "cmp.mapping.scroll_docs(4)";
                    "<C-p>" = "cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select })";
                    "<C-n>" = "cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select })";
                    "<C-y>" = "cmp.mapping.confirm({ select = true })";
                    "<CR>" = "nil";
                    "<Tab>" = "nil";
                    "<S-Tab>" = "nil";
                };
            };
        };

        extraConfigLua = ''
            vim.diagnostic.config({
                    virtual_text = true,  -- must be disabled!
                    underline = true,
                    signs = true,
                    })
        '';
    };
}
