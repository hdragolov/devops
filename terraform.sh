#!/bin/bash
# Installer script for terraform
tmp_dir='/tmp/terraform'
zip_file='terraform.zip'
version='0.7.10'
source="https://releases.hashicorp.com/terraform/${version}/terraform_${version}_linux_amd64.zip"

echo -e "\n### Pulling terraform pkg zip ###\n"
mkdir "${tmp_dir}" && cd "${tmp_dir}"
curl -s -o "${zip_file}" "${source}"

echo -e "\n### Extracting archive ###\n"
unzip "${zip_file}"

echo -e "\n### Moving binary to /usr/loca/bin ###\n"
mv terraform /usr/local/bin

echo -e "\n### Removing temporary files ###"
rm -rf "${tmp_dir}"
