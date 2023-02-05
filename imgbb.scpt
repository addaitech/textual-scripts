on handle_command(input)
    if input is "/imgbb" then
        set imagePath to choose file with prompt "Select an image to upload"
        set imageName to (do shell script "uuidgen") & ".jpg"
        set apiKey to "your_api_key_here"
        set uploadResult to do shell script "curl -F file=@" & imagePath & " https://imgbb.com/upload -F key=" & apiKey & " -F name=" & imageName
        set imageUrl to (do shell script "echo " & quoted form of uploadResult & " | grep -o 'https://i.ibb.co/[^\"]*'")
        return imageUrl
    end if
end handle_command
