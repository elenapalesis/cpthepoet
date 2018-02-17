require 'rails_helper'

describe Poem do
  # Indexes
  it { is_expected.to have_db_index(:published) }
end
