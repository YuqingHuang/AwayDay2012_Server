module FileHelper
  include ApplicationHelper
  def getProperty(key)
    token = ""
    tokenFile = File.new(TokenFileName)
    tokenFile.each_line do |line|
      if line.include? key then
        token = line.split("=")[1].strip
      end
    end
    return token
  end

  def getImageFile(base64String)
    image = nil
    if base64String != nil then
      image = File.new("temp.jpeg")
      File.open(image, "w:ASCII-8BIT:UTF-8") do |file|
        file.puts Base64.decode64(base64String)
      end
    end
    return image

  end
end