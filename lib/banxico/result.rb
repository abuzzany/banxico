# frozen_string_literal: false

# Storages the result and the set of errors of a service object.
class Banxico::Result
    def initialize
      @success = true
      @errors = []
      @body = nil
    end
  
    attr_accessor :success, :errors, :body
    alias success? success
  
    def toggle_success!
      @success = !@success
    end
end
