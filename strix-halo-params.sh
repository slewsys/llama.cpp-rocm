#!/usr/bin/env bash
sudo grubby --update-kernel=ALL --args='amdttm.pages_limit=27648000 amdttm.page_pool_size=27648000 amd_iommu=off'
