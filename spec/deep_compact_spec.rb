# frozen_string_literal: true

RSpec.describe DeepCompact do
  using ::DeepCompact

  describe 'Array#deep_compact' do
    subject { array.deep_compact }

    context 'with array in array' do
      let(:array) { [nil, :a, [nil, :a]] }
      let(:compacted) { [:a, [:a]] }

      it { is_expected.to eq compacted }
    end

    context 'with hash in array' do
      let(:array) { [nil, :a, { a: :a, nil: nil }] }
      let(:compacted) { [:a, { a: :a }] }

      it { is_expected.to eq compacted }
    end
  end

  describe 'Hash#deep_compact' do
    subject { hash.deep_compact }

    context 'with array in hash' do
      let(:hash) do
        {
          a: :a,
          nil: nil,
          arr: [nil, :a]
        }
      end
      let(:compacted) do
        {
          a: :a,
          arr: [:a]
        }
      end

      it { is_expected.to eq compacted }
    end

    context 'with hash in hash' do
      let(:hash) do
        {
          a: :a,
          nil: nil,
          hash: {
            a: :a,
            nil: nil
          }
        }
      end
      let(:compacted) do
        {
          a: :a,
          hash: {
            a: :a
          }
        }
      end

      it { is_expected.to eq compacted }
    end
  end
end
