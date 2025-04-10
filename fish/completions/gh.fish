function _gh_quote_suffix
  if not commandline -cp | xargs echo 2>/dev/null >/dev/null
    if commandline -cp | sed 's/$/"/'| xargs echo 2>/dev/null >/dev/null
      echo '"'
    else if commandline -cp | sed "s/\$/'/"| xargs echo 2>/dev/null >/dev/null
      echo "'"
    end
  else 
    echo ""
  end
end

function _gh_callback
  commandline -cp | sed "s/\$/"(_gh_quote_suffix)"/" | sed "s/ \$/ ''/" | xargs carapace gh fish
end

complete -e 'gh'
complete -c 'gh' -f -a '(_gh_callback)' -r

