#Hi, Welcome to Musical Julia!
using Base: Int8
#The note translator part, the function.
function notetranslator(user_input)
    if user_input == "C"
        return "Sa"
    elseif user_input == "C#"
        return "Ri1"
        


    elseif user_input == "D♭"
        return "Ri1"
    elseif user_input == "D"
        return "Ri2/Ga1"
    elseif user_input == "D#"
        return "Ri3/Ga2"
    elseif user_input == "E♭"
        return "Ri3/Ga2"
    elseif user_input == "E"
        return "Ga3"
    elseif user_input == "F"
        return "Ma1"
    elseif user_input == "F#"
        return "Ma2"
    elseif user_input == "G♭"
        return "Ma2"
    elseif user_input == "G"
        return "Pa"
    elseif user_input == "G#"
        return "Da1"
    elseif user_input == "A♭"
        return "Da2/Ni1"
    elseif user_input == "A"
        return "Da2/Ni1"
    elseif user_input == "A#"
        return "Da3/Ni2"
    elseif user_input == "B♭"
        return "Da3/Ni2"
    elseif user_input == "B"
        return "Ni3"

    elseif user_input == "Sa"
        return "C"
    elseif user_input == "Ri1"
        return "C#/D♭"
    elseif user_input == "Ri2"
        return "D"
    elseif user_input == "Ri3"
        return "D#/E♭"
    elseif user_input == "Ga1"
        return "D"
    elseif user_input == "Ga2"
        return "D#"
    elseif user_input == "Ga3"
        return "E"
    elseif user_input == "Ma1"
        return "F"
    elseif user_input == "Ma2"
        return "F#"
    elseif user_input == "Pa"
        return "G"
    elseif user_input == "Da1"
        return "G#"
    elseif user_input == "Da2"
        return "A♭"
    elseif user_input == "Da3"
        return "A#"
    elseif user_input == "Ni1"
        return "A♭/A"
    elseif user_input == "Ni2"
        return "A#/B♭"
    elseif user_input == "Ni3"
        return "B"
    elseif user_input == "Ri"
        return "D"
    elseif user_input == "Ga"
        return "E"
    elseif user_input == "Ma"
        return "F"
    elseif user_input == "Pa"
        return "G"
    elseif user_input == "Da"
        return "A"
    elseif user_input == "Ni"
        return "B"

    else println("CONVERSION FINISHED!")
    end
end



#Function which allows you to choose between the library of songs and prints them out.
function songlibrary(letter2)
    #letter2 = readline()
    if letter2 == "C"
        println("G G A G C B G G A G D C G G G G E C B A F F E C D C
                Pa Pa Da Pa Sa Ni Pa Pa Da Pa Ri Sa Pa Pa Pa Ga Sa Ni Da Ma Ma Ga Sa Ri Sa")
    elseif letter2 == "D"
        println("E E F G G F E D C C D E D D
                 Ga Ga Ma Pa Pa Ma Ga Ri Sa Sa Ri Ga Ri Ri")
    end
end

#Deals with the choices part of the program.
function program_c23(userchoice)
    if userchoice == "A"
        println("This is the note translation program. Are you sure you want to continue with this, or would you like to switch?")
           user_input_a = readline()
        if user_input_a == "Yes" || user_input_a == "Y" || user_input_a == "yes"
            println("Enter your file name: Example: xyz.txt. ")
            #readline, as in reading what the user has inputted.
            file_input = readline()
            f_read = open(file_input);
            lines = readline(f_read)
            words_list = split(lines," ")
        length(lines)
        found = false
           conv_song = []
            #This for loop indexes through the user's input(words_list), and the conv array, translates it, one element at a time.
           for i in 1:length(words_list)
                conv = notetranslator(words_list[i])
                #println("printing each...\n",conv)
                #Pushes one translated element at a time into the conv_song array.
                push!(conv_song, conv)
            end
            #Asks user to enter name of which they want to save the file as.
print("==============================================================================\n")
println("Enter the name which you want to save the converted file as..example- abc.txt")
print("==============================================================================\n")
#readline
FILE_Nam = readline()
#f is opening the file, it's name being the users input, in write mode.
f = open(FILE_Nam, "w");
#Write the converted song string into the file.
write(f, string(conv_song))


print("================================================================\n")
print("Success!!\n")
print("your converted song is stored in: ", pwd(),"\n")
print("================================================================\n\n\n")
#Close the file.
close(f)
            
        end


    elseif userchoice == "B"
        println("Are you sure, you want to continue with choosing a song?")
        user_input_b = readline()
        if user_input_b == "Yes" || user_input_b == "yes" || user_input_b == "Y" || user_input_b == "YES"
            println("Choose a song: C. Happy Birthday, D. Ode to Joy")
                letter2 = readline()
                while true
                if letter2 == "C"
                    songlibrary(letter2)
                    break
                elseif letter2 == "D"
                    songlibrary(letter2)
                    break
                else
                    println("Wrong choice, use C or D")
                    break
                end
            end
        end
    end
end



#Controls the start of the program and the first choices.
while true
    print("Hello, Welcome to Musical Julia!
    This program can convert notes from Western to Indian Classical and Vice- Versa.
    A: input your own song
    B: choose a song from the library
    C: Exit program
    Enter Your choice  ")
    global choice = readline()
    if choice == "A"
        program_c23(choice)
    elseif choice == "B"
        program_c23(choice)
    elseif choice == "C"
            break
    end
end

exit()

