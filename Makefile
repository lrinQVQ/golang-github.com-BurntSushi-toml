#
# Copyright (C) 2019 lrinQVQ
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=golang-github.com-BurntSushi-toml
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/BurntSushi/toml.git
PKG_SOURCE_VERSION:=3012a1dbe2e4bd1391d42b32f0577cb7bbc7f005
PKG_SOURCE_DATE:=20180815
PKG_MIRROR_HASH:=bee4bb19c52a37974d3c69a8ca7a1f7d8fd59f2f646019a82036dc4502333e96

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING
PKG_MAINTAINER:=lrinQVQ <cqlrin@gmail.com>

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1

GO_PKG:=cloud.google.com/go
GO_PKG_SOURCE_ONLY:=1

include $(INCLUDE_DIR)/package.mk
include ../golang-package.mk

define Package/golang-github.com-BurntSushi-toml-dev
$(call GoPackage/GoSubMenu)
  TITLE:=TOML parser and encoder for Go with reflection
  URL:=https://godoc.org/cloud.google.com/go
  DEPENDS:=$(GO_ARCH_DEPENDS)
  PKGARCH:=all
endef

define Package/golang-github.com-BurntSushi-toml-dev/description
TOML stands for Tom's Obvious, Minimal Language. This Go package provides a reflection interface similar to Go's standard library json and xml packages. This package also supports the encoding.TextUnmarshaler and encoding.TextMarshaler interfaces so that you can define custom data representations.
endef

$(eval $(call GoSrcPackage,golang-github.com-BurntSushi-toml-dev))
$(eval $(call BuildPackage,golang-github.com-BurntSushi-toml-dev))
