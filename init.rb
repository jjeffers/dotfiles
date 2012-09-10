#!/usr/bin/env ruby

symlinks = {
  # source => target
  './.vimrc' => '~/.vimrc',
  './.gvimrc' => '~/.gvimrc'
}

symlinks.each do |source, target|
  `rm "#{File.expand_path(target)}" 2>&1 /dev/null`
  `ln -s "#{File.expand_path(source)}" "#{File.expand_path(target)}"`
end

# initialize submodules
`git submodule init`
`git submodule update`