#    This file is part of testlink-api-client.
#
#    testlink-api-client is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    testlink-api-client is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with Foobar.  If not, see <http://www.gnu.org/licenses/>.

require "test_link/exceptions/error_response_exception"

describe TestLink::Exceptions::ErrorResponseException do
  before :each do
    @exception = TestLink::Exceptions::ErrorResponseException.new 123, '___message___'
  end

  it "has a code" do
    @exception.should provide :code
  end

  it "has a message" do
    @exception.should respond_to :message
  end
end