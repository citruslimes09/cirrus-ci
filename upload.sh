if [ -f ~/rom/out/target/product/citrus/qassa*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/ysl/ && ls qassa*.zip)"
      rclone copy ~/rom/out/target/product/citrus/qassa*.zip 298:citrus -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/ysl/ && ls qassa*.zip) Uploaded Successfully!"
fi
