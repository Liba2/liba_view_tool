module LibaViewTool
  class Renderer
    def self.copyright name, msg
      "<hr><p style='text-align:center'>&copy; #{Time.now.year} | <b>#{name}</b> #{msg}</p>".html_safe   
    end
  end
end