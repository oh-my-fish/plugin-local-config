function init -a path --on-event init_local-config
  # Load custom settings for current hostname
  set -l host (hostname | sed -E 's/(-[0-9]+)?(\.(local|home))?$//')
  set -l host_specific_file $OMF_CONFIG/hosts/$host.fish
  if test -f $host_specific_file
    source $host_specific_file
  else
    echo Creating host specific file: $host_specific_file
    mkdir -p (dirname $host_specific_file)
    touch $host_specific_file
  end

  # Load custom settings for current user
  set -l user_specific_file $OMF_CONFIG/users/(whoami).fish
  if test -f $user_specific_file
    source $user_specific_file
  else
    echo Creating user specific file: $user_specific_file
    mkdir -p (dirname $user_specific_file)
    touch $user_specific_file
  end

  # Load custom settings for current OS
  set -l platform_specific_file $OMF_CONFIG/platforms/(uname -s).fish
  if test -f $platform_specific_file
    source $platform_specific_file
  else
    echo Creating platform specific file: $platform_specific_file
    mkdir -p (dirname $platform_specific_file)
    touch $platform_specific_file
  end

end
