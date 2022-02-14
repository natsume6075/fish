function mv_windocuments --description 'mv all args to Documents & open explorer'
    mv $argv $WIN_HOME/Documents
    explorer.exe $WIN_HOME/Documents
end
