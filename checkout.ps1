git submodule foreach '
  # Use relative path ../ instead of absolute $top_level
  branch=$(git config -f ../.gitmodules submodule."$name".branch);
  
  echo ">>> Aligning submodule [$name] to branch [$branch]...";
  
  git fetch origin;
  git checkout -B "$branch" "origin/$branch" --force;
'