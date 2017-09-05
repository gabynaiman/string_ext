# coding: utf-8
require_relative 'string_ext/version'

module StringExt

  ACCENTS = {
    'A' => {
      upcase: 'ÁÀÄÂÃÅĀĂǍ',
      downcase: 'áàäâãåāăǎ'
    },
    'E' => {
      upcase: 'ÉÈËÊĒĔĖĚ',
      downcase: 'éèëêēĕėě'
    },
    'I' => {
      upcase: 'ÍÌÏÎĨĬǏ',
      downcase: 'íìïîĩĭǐ'
    },
    'O' => {
      upcase: 'ÓÒÖÔÕŌŎŐǑ',
      downcase: 'óòöôõōŏőǒ'
    },
    'U' => {
      upcase: 'ÚÙÜÛŨŪŬŮŰǓ',
      downcase: 'úùüûũūŭůűǔ'
    }
  }

  CASES = {
    downcase: 'ñç' + ACCENTS.values.map { |a| a[:downcase] }.join,
    upcase: 'ÑÇ' + ACCENTS.values.map { |a| a[:upcase] }.join
  }

  extend self

  def upcase(string)
    string.tr(CASES[:downcase], CASES[:upcase]).upcase
  end

  def downcase(string)
    string.tr(CASES[:upcase], CASES[:downcase]).downcase
  end

  def unaccented(string)
    ACCENTS.inject(string) do |s, (char, cases)|
      s.tr(cases[:upcase], char).tr(cases[:downcase], char.downcase)
    end
  end

end