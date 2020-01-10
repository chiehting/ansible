.PHONY: init
init: ## 針對所有 inventory 內的 Ubuntu 節點安裝 Python
	ansible all --sudo -m raw -a "apt-get install -y python-minimal"

.PHONY: ping
ping: ## 檢查所有 inventory 內節點的連線
	ansible all -m ping

.PHONY: sssd-stop
sssd-stop: ## 停止sssd服務
	ansible dev -m shell -a 'sudo systemctl stop sssd'

.PHONY: sssd-start
sssd-start: ## 啟動sssd服務
	ansible dev -m shell -a 'sudo systemctl start sssd'

.PHONY: clean
clean: ## 清理 log 檔案
	rm -rvf *.log
	rm -rvf playbooks/*.retry
	rm -rvf playbooks/**/*.retry

# Absolutely awesome: http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := clean
