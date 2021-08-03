local chad_modules = {
    "options",
    "mappings"
}

require'plenary.profile'.start("profile.log")

-- code to be profiled
for i = 1, #chad_modules, 1 do
    pcall(require, chad_modules[i])
end

require'plenary.profile'.stop()
