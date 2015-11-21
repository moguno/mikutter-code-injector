#coding: utf-8

Plugin.create(:"mikutter-code-injector") {
  require "drb/drb"

  on_boot { |service|
    if service == Service.primary
      DRb.start_service("druby://localhost:39311", binding)
    end
  }
}
