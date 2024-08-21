print('it works!')

lib.addCommand("testupdate", {
    help = 'Verifica se existe atualização para os scripts (Somente Admin)',
    restricted = 'group.admin'
}, function(source, args, raw)
    local src = source
    exports['mri_Qbox']:CheckForUpdates(src, {
        resource = GetCurrentResourceName()
    })
end)