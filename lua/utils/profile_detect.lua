local M = {}

-- Shell command runner
local function run(cmd)
  local handle = io.popen(cmd)
  if not handle then
    return nil
  end
  local result = handle:read '*a'
  handle:close()
  return result
end

function M.detect()
  local cwd = vim.loop.cwd()
  local profile = 'default'
  local langs = {}
  local enry = run('enry ' .. cwd)
  local semgrep = run('semgrep --config=auto -q ' .. cwd .. ' 2>/dev/null')

  if enry and enry:match 'Python' then
    if semgrep and semgrep:match 'fastapi' then
      profile = 'fastapi'
    else
      profile = 'python-minimal'
    end
    table.insert(langs, 'Python')
  end

  if enry and enry:match 'TypeScript' then
    if run('ls ' .. cwd .. '/tailwind.config.* 2>/dev/null') ~= '' then
      profile = 'vue-tailwind'
    else
      profile = 'ts-default'
    end
    table.insert(langs, 'TypeScript')
  end

  if enry and enry:match 'Lua' then
    profile = 'neovim-plugin'
    table.insert(langs, 'Lua')
  end

  -- Write result to .nvim-profile
  local file = io.open(cwd .. '/.nvim-profile', 'w')
  file:write(profile .. '\n')
  file:close()

  vim.notify(
    '🔍 Profile: ' .. profile .. '\nLanguages: ' .. table.concat(langs, ', '),
    vim.log.levels.INFO
  )
end

return M
