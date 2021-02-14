resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description "FENIX UI - FRAMEWORK UI BY FENIX ROLEPLAY TEAM"

ui_page "html/ui.html"

files {
    "html/ui.html",
    "html/ui.css",
    "html/ui.js",
}

client_script {
    'client/main.lua',
    'config.lua',
}
