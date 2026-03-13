#!/bin/bash

shopt -s nullglob

# Запуск docker с проверкой bash
podman run -v .:/opt/bash --rm tyvik/kubsu:master

echo ""

