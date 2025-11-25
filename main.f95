!Start of the program 
program Uvindexunit2code
    implicit none
!Define all my variables that I would need for my code
    integer :: uv, io
    character(len=20) :: time
    character(len=20) :: risk, advice
!the &, is because the lines that were printed were too long. 
    print *, "Welcome to the UV helper. I will help you know the UV index for the times of the day,", &
    "and give you advice on what to do with it!"
    print *, ""
    print *, "UV stands for Ultraviolet radiation. It is part of the electromagnetic spectrum, ", &
    "with wavelengths shorter than visible light but longer than X-rays."
    print *, "It is important to look out for UV because in Saudi Arabia the UV is usually high ", &
     "which can cause sunburn and skin damage."
    print *, ""
    print *, "Here is the start of the times:"

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
            advice = "UV is very high ! Avoid direct sunlight, wear sunscreen and hat."
        end if
end program Uvindexunit2code


