function main
    % variable configurations
    delay = 1; % in second(s)
    isLogging = 1;
    
    clc;
    disp('Stream sensor data from matlab for android');
    input('Press enter to continue...');
    connector on;
    m = mobiledev;
    m.Logging = isLogging;
    
 
    while 1
        pause(delay);
        clc;
        [accX, accY, accZ] = getAccelerometer(m);
        [magX, magY, magZ] = getMagneticField(m);
        latitude = m.Latitude;
        longitude = m.Longitude;
        
        disp(['accel_x: ', num2str(accX)]);
        disp(['accel_y: ', num2str(accY)]);
        disp(['accel_z: ', num2str(accZ)]);       
        disp(['mag_x: ', num2str(magX)]);
        disp(['mag_y: ', num2str(magY)]);
        disp(['mag_z: ', num2str(magZ)]);
        disp(['latitude: ', num2str(latitude)]);
        disp(['longitude: ', num2str(longitude)]);
    end
end

function [x, y, z] = getAccelerometer(mIn)
try
    x = mIn.Acceleration(1);
    y = mIn.Acceleration(2);
    z = mIn.Acceleration(3);
catch
    x = 0;
    y = 0;
    z = 0;
end
end
function [x, y, z] = getMagneticField(mIn)
try
    x = mIn.MagneticField(1);
    y = mIn.MagneticField(2);
    z = mIn.MagneticField(3);
catch
    x = 0;
    y = 0;
    z = 0;
end
end