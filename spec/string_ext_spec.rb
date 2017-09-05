# coding: utf-8
require 'minitest_helper'

describe StringExt do
  
  it 'Upcase' do
    StringExt.upcase('ñçáàäâãåāăǎéèëêēĕėěíìïîĩĭǐóòöôõōŏőǒúùüûũūŭůűǔ').must_equal 'ÑÇÁÀÄÂÃÅĀĂǍÉÈËÊĒĔĖĚÍÌÏÎĨĬǏÓÒÖÔÕŌŎŐǑÚÙÜÛŨŪŬŮŰǓ'
  end

  it 'Downcase' do
    StringExt.downcase('ÑÇÁÀÄÂÃÅĀĂǍÉÈËÊĒĔĖĚÍÌÏÎĨĬǏÓÒÖÔÕŌŎŐǑÚÙÜÛŨŪŬŮŰǓ').must_equal 'ñçáàäâãåāăǎéèëêēĕėěíìïîĩĭǐóòöôõōŏőǒúùüûũūŭůűǔ'
  end

  it 'Unaccented' do
    StringExt.unaccented('ÁÀÄÂÃÅĀĂǍÉÈËÊĒĔĖĚÍÌÏÎĨĬǏÓÒÖÔÕŌŎŐǑÚÙÜÛŨŪŬŮŰǓáàäâãåāăǎéèëêēĕėěíìïîĩĭǐóòöôõōŏőǒúùüûũūŭůűǔ').must_equal 'AAAAAAAAAEEEEEEEEIIIIIIIOOOOOOOOOUUUUUUUUUUaaaaaaaaaeeeeeeeeiiiiiiiooooooooouuuuuuuuuu'
  end

end