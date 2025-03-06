require 'spec_helper'
require "#{LKP_SRC}/lib/stats"

describe '#functional_test?' do
    it 'returns the index for analyze-suspend in LINUX_TESTCASES' do
        expect(functional_test?('analyze-suspend')).to eq(LinuxTestcasesTableSet::LINUX_TESTCASES.index('analyze-suspend'))
    end

    it 'returns the index for mce-log in LINUX_TESTCASES' do
        expect(functional_test?('mce-log')).to eq(LinuxTestcasesTableSet::LINUX_TESTCASES.index('mce-log'))
    end

    it 'returns the index for cat in LINUX_TESTCASES' do
        expect(functional_test?('cat')).to eq(LinuxTestcasesTableSet::LINUX_TESTCASES.index('cat'))
    end

    it 'returns nil for a test case not in LINUX_TESTCASES' do
        expect(functional_test?('non-existent-test')).to be_nil
    end
end

describe '#other_test?' do
    it 'returns the index for convert-lkpdoc-to-html in OTHER_TESTCASES' do
        expect(other_test?('convert-lkpdoc-to-html')).to eq(LinuxTestcasesTableSet::OTHER_TESTCASES.index('convert-lkpdoc-to-html'))
    end

    it 'returns the index for debug in OTHER_TESTCASES' do
        expect(functional_test?('debug')).to eq(LinuxTestcasesTableSet::LINUX_TESTCASES.index('debug'))
    end

    it 'returns the index for lkp-qemuin OTHER_TESTCASES' do
        expect(functional_test?('lkp-qemu')).to eq(LinuxTestcasesTableSet::LINUX_TESTCASES.index('lkp-qemu'))
    end

    it 'returns nil for a test case not in OTHER_TESTCASES' do
        expect(other_test?('non-existent-test')).to be_nil
    end
end
