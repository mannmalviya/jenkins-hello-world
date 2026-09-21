  #!/bin/bash
  if [ $((RANDOM % 2)) -eq 0 ]; then
    echo "Deploy failed"
    exit 1
  fi
  echo "Deploy worked"
  EOF


