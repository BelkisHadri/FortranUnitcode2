!Start of the program 
program Uvindexunit2code
    implicit none
!Define all my variables that I would need for my code
    integer :: uv, io
    character(len=20) :: time, risk
    character(len=100)advice
      character(len=50) :: header ! this is for the ode to skip the line without data
  !welcome message to what the code is  
!the &, is because the lines that were printed were too long 
    print *, "Welcome to the UV helper. I will help you know the UV index for the times of the day,", &
    "and give you advice on what to do with it!"
    print *, ""
    print *, "UV stands for Ultraviolet radiation. It is part of the electromagnetic spectrum, ", &
    "with wavelengths shorter than visible light but longer than X-rays."
    print *, "It is important to look out for UV because in Saudi Arabia the UV is usually high ", &
     "which can cause sunburn and skin damage."
    print *, ""
    print *, "Here is the start of the times:"
!opening the file 
open(unit=10, file='data-uvindex.csv', status='old', iostat=io) !i gave the file a nicknameto make it easier
    ! Check for if the file opens correctly to ensure no crash
    if (io /= 0) then
        print *, "Error: Could not open the file! Check the name."
        stop
    end if
    read(10, *) header
!if statement to ensure that the code dose not crash when they dont see the file 
   do
        read(10, *, iostat=io) time, uv
        ! If 'io' is not 0, it means there is no more lines
        ! "exit" jumps us out of the loop 
        if (io /= 0) exit 
            print *," Finished reading data file"
!if statments for the value from the file for the advice after reading the file  
if (uv <= 2) then
            risk = "Low"
            advice = "You don’t need any protection but it is always recommended to wear sunscreen!"
        else if (uv <= 5) then
            risk = "Moderate"
            advice = "Moderate UV means you need to wear sunscreen. Stay safe!"
        else if (uv <= 7) then
            risk = "High"
            advice = "Be careful outside. UV is high so make sure to apply sunscreen, wear a hat, stay in shade"
        else if (uv <= 10) then
            risk = "Very High"
            advice = "Very High! Avoid direct sun, wear protective gear."
        else
            risk = "Extreme"
            advice = "UV is very high ! Avoid direct sunlight, wear sunscreen and hat, its better you stya inside!"
end if
 print *, "Time: ", (time), " | UV: ", uv, " | Advice: ", (advice)
 end do
 close(10)
  print *, "End of program. Stay safe!"
end program Uvindexunit2code


