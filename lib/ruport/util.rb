require File.expand_path(File.dirname(__FILE__) + '/util/version')

module Ruport
  module Util
    file = __FILE__
    file = File.readlink(file) if File.symlink?(file)
    dir = File.dirname(file)
    BASEDIR = File.expand_path(File.join(dir, '..', '..'))
    LIBDIR = File.expand_path(File.join(dir, '..'))
  end
end

require File.expand_path(File.dirname(__FILE__) + "/util/report")
require File.expand_path(File.dirname(__FILE__) + "/util/graph")
require File.expand_path(File.dirname(__FILE__) + "/util/invoice")
require File.expand_path(File.dirname(__FILE__) + "/util/report_manager")
require File.expand_path(File.dirname(__FILE__) + "/util/mailer")
require File.expand_path(File.dirname(__FILE__) + "/util/bench")
require File.expand_path(File.dirname(__FILE__) + "/util/generator")
require File.expand_path(File.dirname(__FILE__) + "/util/pdf/form")
require File.expand_path(File.dirname(__FILE__) + "/util/ods")
require File.expand_path(File.dirname(__FILE__) + "/util/query")
require File.expand_path(File.dirname(__FILE__) + "/util/xls")
require File.expand_path(File.dirname(__FILE__) + "/util/ods_table")
require File.expand_path(File.dirname(__FILE__) + "/util/xls_table")
