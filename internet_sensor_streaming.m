clc;
disp('Stream sensor data from internet');
input('Press enter to continue...');
count = 1;
while 1  
    pause(0.5);
    count = count + 1;
    s = urlread('http://ghora.net/smartageing/getsensordata.php');
    json = parse_json(s);
    clc;
    disp(json{1});
end