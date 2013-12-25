# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

require "awesome_print"

def header_path (item)
    path = item.path
    until path == '/' do
        full_path = "#{File.dirname(__FILE__)}/../content#{path}"
        if File.exist?(full_path + 'header.jpg')
            puts path
            break
        else
            path_tokens = path.split('/')
            if path_tokens.size > 1
                path = (path_tokens.first path_tokens.size - 1).join('/') + '/'
            else
                path = '/'
            end
        end
    end
    path + 'header.jpg'
end
