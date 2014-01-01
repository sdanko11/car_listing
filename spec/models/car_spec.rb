require 'spec_helper'

describe Car do
  
  it { should have_valid(:name).when('camero', 'firebird') }
  it { should_not have_valid(:name).when('', nil) }

  it { should have_valid(:color).when('red', 'green', 'orange') }
  it { should_not have_valid(:color).when(nil, '') }

  it { should have_valid(:mileage).when(1000, 25000) }
  it { should_not have_valid(:mileage).when('', nil) }

  it { should have_valid(:year).when(1999, 2010, 1980) }
  it { should_not have_valid(:year).when(1977, nil, '', 1955) }

  it { should have_valid(:description).when("this is a cool car") }

end

# I must specify the color, year, mileage of the car.
# Only years from 1980 and above can be specified.
# I can optionally specify a description of the car.
# If I enter all of the required information in the required format, the car is recorded.
# If I do not specify all of the required information in the required formats, the car is not recorded and I am presented with errors.
# Upon successfully creating a car, I am redirected so that I can create another car.
