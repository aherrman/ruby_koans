require 'edgecase'

class AboutNil < EdgeCase::Koan
  def test_nil_is_an_object
    assert_equal true, nil.is_a?(Object), "Unlike NULL in other languages"
  end

  def test_you_dont_get_null_pointer_errors_when_calling_methods_on_nil
    #
    #  What is the Exception that is thrown when you call a method that
    #  does not exist?  
    #
    #  Hint:  launch irb and try the code in the block below.  
    # 
    #  Don't be confused by the code below yet.  It's using blocks 
    #  which are explained later on in about_blocks.rb.  For now,
    #  think about it like running nil.some_method_nil_doesnt_know_about
    #  in a sandbox and catching the error class into the exception
    #  variable.  
    #
    begin
      nil.some_method_nil_doesnt_know_about
    rescue Exception => ex
      # What exception has been caught?
      assert_equal NoMethodError, ex.class

      # What message was attached to the exception?
      # (HINT: replace __ with part of the error message.)
      assert_match /undefined*/, ex.message
    end
  end

  def test_nil_has_a_few_methods_defined_on_it
    assert_equal true, nil.nil?
    assert_equal "", nil.to_s
    assert_equal "nil", nil.inspect

    # THINK ABOUT IT:
    #
    # Is it better to use
    #    obj.nil?
    # or
    #    obj == nil
    # Why?
  end

end
