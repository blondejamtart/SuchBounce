settings_length = 0;
settings{1} = [];

settingsfile = fopen('../Settings.h','r');
tempstr = fgetl(settingsfile);
while any([tempstr ~= -1, strcmp(tempstr,'')])
    settings_length = settings_length + 1;
    settings{settings_length} = [tempstr ''];    
    tempstr = fgetl(settingsfile);
end
if strcmp(settings{settings_length},'')
    settings_length = settings_length - 1;
end
fclose(settingsfile);