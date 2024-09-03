## -*- ruby -*- ##############################################################
#
#  System        : 
#  Module        : 
#  Object Name   : $RCSfile$
#  Revision      : $Revision$
#  Date          : $Date$
#  Author        : $Author$
#  Created By    : Detlef Groth
#  Created       : Tue Sep 3 14:08:39 2024
#  Last Modified : <240903.1414>
#
#  Description	
#
#  Notes
#
#  History
#
##############################################################################
#
#  Copyright (c) 2024 Detlef Groth.
# 
#  All Rights Reserved.
# 
#  This  document  may  not, in  whole  or in  part, be  copied,  photocopied,
#  reproduced,  translated,  or  reduced to any  electronic  medium or machine
#  readable form without prior written consent from Detlef Groth.
#
##############################################################################


class HelloNcurses < Formula
  desc "Simple C program that uses ncurses to print 'Hello, World!'"
  homepage "https://github.com/mittelmark/hello-package"
  url "https://github.com/mittelmark/hello-package/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "908497a01d15a4503975a7bb97f9f140de0e9dbd85c2d98890ca04243f87c56a"
  license "MIT"

  depends_on "ncurses"

  def install
    system "gcc", "-o", "nhello", "nhello.c", "-lncurses"
    bin.install "nhello"
  end

  test do
    assert_match "Hello, World!!!", shell_output("#{bin}/nhello")
  end
end
