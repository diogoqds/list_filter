defmodule ListFilterTest do
  use ExUnit.Case

  describe "when pass a empty list" do
    test "returns 0" do
      list = []

      response = ListFilter.call(list)

      expected_response = 0

      assert response == expected_response
    end
  end

  describe "when pass a list that doesn't have a string-number" do
    test "returns 0" do
      list = ["abc", "def"]

      response = ListFilter.call(list)

      expected_response = 0

      assert response == expected_response
    end
  end

  describe "when pass a list that doesn't contain odd numbers" do
    test "returns 0" do
      list = ["2", "abc", "6", "8", "42", "100"]

      response = ListFilter.call(list)

      expected_response = 0

      assert response == expected_response
    end
  end

  describe "when pass a list that contains odd numbers" do
    test "returns 3" do
      list = ["22", "abc", "5", "7", "def", "1", "2"]

      response = ListFilter.call(list)

      expected_response = 3

      assert response == expected_response
    end
  end
end
