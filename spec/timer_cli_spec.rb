require 'spec_helper'

describe TimerCli do
  describe TimerCli::Parameters do
    def params(argv)
      TimerCli::Parameters.new([argv])
    end

    context 'receive a valid parameter' do
      let(:sec)   { params('10s').sec }
      let(:sec_2) { params('10m').sec }

      it 'should return correct second' do
        expect(sec).to   eq 10
        expect(sec_2).to eq 600
      end
    end

    context 'receive a invalid parameter' do
      let(:sec) { params('10h').sec }

      it 'should raise error' do
        expect { sec } .to raise_error(ArgumentError)
      end
    end
  end
end
