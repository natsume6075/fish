function mv_windocuments --description 'mv all args to $WIN_DOCUMENTS & open explorer'
    mv $argv $WIN_DOCUMENTS
    explorer.exe $WIN_DOCUMENTS
end
