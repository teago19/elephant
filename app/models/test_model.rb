class TestModel < ApplicationRecord
  prepend Elephant::ModelExtensions

  history_by :test, after: [:func1]

  def func1
    "aaa"
  end
end
