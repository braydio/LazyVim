return {
  'tamton-aquib/snacks.nvim',
  opts = {
    picker = {
      core = {
        update_titles = function(self)
          local titles = self.titles or {}
          if type(titles) ~= 'table' then
            vim.notify('Expected table for titles in update_titles', vim.log.levels.ERROR)
            return
          end
          local values = vim.tbl_values(titles)
          -- Call original logic here if needed
        end,
      },
    },
  },
}
