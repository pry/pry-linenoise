require 'linenoise'
require 'pry'

require 'pry-linenoise/version'

Pry.config.input = Linenoise

Linenoise.multiline = true

Linenoise.hint_bold = true
Linenoise.hint_color = Linenoise::YELLOW

Linenoise.hint_proc = proc do |input|
  completions = Linenoise.completion_proc.call(input)
  next('') if completions.none?

  completions.first.sub!(input, '')
end
