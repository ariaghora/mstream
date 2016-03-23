clc;
%input('Press enter to continue');
count = 1;
while 1  
    pause(1);
    count = count + 1;
    s = urlread('http://api.geonames.org/citiesJSON?north=44.1&south=-9.9&east=-22.4&west=55.2&lang=de&username=demo');
    json = parse_json(s);
    disp(json{1}.geonames{count}.toponymName);
end