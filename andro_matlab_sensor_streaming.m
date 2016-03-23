function main
    % variable configurations
    delay = 1; % in second(s)
    isLogging = 1;
    
    clc;
    input('Press enter to continue');
    m = mobiledev;
    m.Logging = isLogging;
 
    while 1
        pause(delay);
        clc;
        [accX, accY, accZ] = getAccelerometer(m);
        [magX, magY, magZ] = getMagneticField(m);
        disp(['Accelerometer x: ', num2str(accX)]);
        disp(['Accelerometer y: ', num2str(accY)]);
        disp(['Accelerometer z: ', num2str(accZ)]);
        disp('==========================');
        disp(['Magnetic x: ', num2str(magX)]);
        disp(['Magnetic y: ', num2str(magY)]);
        disp(['Magnetic z: ', num2str(magZ)]);
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